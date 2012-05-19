# Copyright (c) brAthena Dev Team - Licensed under GNU GPL
# For more information, see LICENSE in the main folder

# ==================================================================================================
#
# Initial commands/configuration.
#
# ==================================================================================================

cmake_minimum_required( VERSION 2.6 FATAL_ERROR )
project( brAthena C )
set( CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/3rdparty/cmake;${CMAKE_MODULE_PATH}" )

# --------------------------------------------------------------------------------------------------
# Remove unneeded variables.
mark_as_advanced( CMAKE_INSTALL_PREFIX CMAKE_BUILD_TYPE )

# --------------------------------------------------------------------------------------------------
# Basic initial variables.
set( GLOBAL_LIBRARIES			"" )
set( GLOBAL_INCLUDE_DIRS		"" )
set( GLOBAL_DEFINITIONS			"" )

# --------------------------------------------------------------------------------------------------
# Output path.
# It is in the source directory because brAthena isn't prepaired to support off-source builds.
set( EXECUTABLE_OUTPUT_PATH				${CMAKE_SOURCE_DIR} )
set( LIBRARY_OUTPUT_PATH				${CMAKE_SOURCE_DIR} )
set( RUNTIME_OUTPUT_DIRECTORY			${CMAKE_SOURCE_DIR} )
set( CMAKE_RUNTIME_OUTPUT_DIRECTORY		${CMAKE_SOURCE_DIR} )

foreach( CONF_TYPE ${CMAKE_CONFIGURATION_TYPES} )
	string( TOUPPER "${CONF_TYPE}" CONF_TYPE )
	set( CMAKE_RUNTIME_OUTPUT_DIRECTORY_${CONF_TYPE} ${CMAKE_BINARY_DIR} )
endforeach( CONF_TYPE )

# --------------------------------------------------------------------------------------------------
# If using Visual Studio, configure the SDK / library / msinttypes path.
if( MSVC )
	find_package( WINDOWS_SDK REQUIRED )
	find_package( VS_PATHS REQUIRED )

	set( CMAKE_INCLUDE_PATH ${CMAKE_INCLUDE_PATH} ${WINDOWS_SDK_INCLUDE_DIRS}
		${VS_PATHS_INCLUDE_DIRS} )
	set( CMAKE_LIBRARY_PATH ${CMAKE_LIBRARY_PATH} ${WINDOWS_SDK_LIBRARY_DIRS}
		${VS_PATHS_LIBRARY_DIRS} )

	set( GLOBAL_INCLUDE_DIRS ${GLOBAL_INCLUDE_DIRS}
		${CMAKE_SOURCE_DIR}/3rdparty/msinttypes/include )
endif( MSVC )

# --------------------------------------------------------------------------------------------------
# Initial global definitions for specific OS's.
if( WIN32 )
	set( GLOBAL_DEFINITIONS
		"${GLOBAL_DEFINITIONS} -DFD_SETSIZE=4096 -DLIBCONFIG_STATIC -DYY_USE_CONST" )
endif( WIN32 )

# ==================================================================================================
#
# General switches.
#
# ==================================================================================================

# --------------------------------------------------------------------------------------------------
# If is to build the release version.
#
# Default: ON
message( STATUS "Checking the build configuration to use" )
option( ENABLE_RELEASE "Build release version of brAthena (default = ON)" ON )

if( ENABLE_RELEASE )
	# Configure the release optimization changes.
	set( CMAKE_BUILD_TYPE "Release" )
	message( STATUS " Checking the build configuration to use - Release" )

	# Disable some compiler warnings.
	if( MSVC )
		set( GLOBAL_DEFINITIONS
			"${GLOBAL_DEFINITIONS} -D_CRT_SECURE_NO_DEPRECATE -D_CRT_NONSTDC_NO_DEPRECATE /wd4100 /wd4800 /wd4018" )
	endif( MSVC )

	# Disable some compiler warnings.
	if( "${CMAKE_C_COMPILER_ID}" STREQUAL "GNU" )
		set( GLOBAL_DEFINITIONS
			"${GLOBAL_DEFINITIONS} -Wno-int-to-pointer-cast -Wno-pointer-to-int-cast" )
	endif( "${CMAKE_C_COMPILER_ID}" STREQUAL "GNU" )
else( ENABLE_RELEASE )
	# Debug version.
	message( STATUS "Checking the build configuration to use - Debug" )
	set( GLOBAL_DEFINITIONS "${GLOBAL_DEFINITIONS} -DDEBUG" )

	# Enable all compiler warnings.
	if( "${CMAKE_C_COMPILER_ID}" STREQUAL "GNU" )
		set( GLOBAL_DEFINITIONS
			"${GLOBAL_DEFINITIONS} -Wall -Wextra -Werror -pedantic -ansi -std=c89" )
		set( CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -g -pg" CACHE INTERNAL "" FORCE )
		set( CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -g -pg" CACHE INTERNAL "" FORCE )
		set( HAVE_GPROF_FLAGS ON CACHE INTERNAL "" FORCE )
		message( STATUS "Enabled extra warnings, GDB and GPROF" )
	endif( "${CMAKE_C_COMPILER_ID}" STREQUAL "GNU" )
endif( ENABLE_RELEASE )

# --------------------------------------------------------------------------------------------------
# Configure the RDTSC instruction as timing source (timestamp counter on x86 since Pentium)
#
# Enable it when you've timing issues (ex: in conjunction with XEN or other Virtualization
# mechanisms).
# Please ensure that you've disabled dynamic CPY-Frequencies, such as power saving options (on most
# modern dedicated servers cpufreq is preconfigured, see on your distribution's manual how to
# disable it.
#
# Default: OFF
message( STATUS "Checking if is to enable RDTSC" )
option( ENABLE_RDTSC "Enable RDTSC instruction as timing source (default = OFF)" OFF )

if( ENABLE_RDTSC )
	set( GLOBAL_DEFINITIONS "${GLOBAL_DEFINITIONS} -DENABLE_RDTSC" )
	message( STATUS "Checking if is to enable RDTSC - yes" )
else( ENABLE_RDTSC )
	message( STATUS "Checking if is to enable RDTSC - no" )
endif( ENABLE_RDTSC )

# --------------------------------------------------------------------------------------------------
# Configure the memory manager.
#
# Default: OFF
message( STATUS "Checking if is to enable the memory manager" )
option( ENABLE_MEMMGR "Enable the memory manager(default = OFF)" OFF )

if( ENABLE_MEMMGR )
	set( GLOBAL_DEFINITIONS "${GLOBAL_DEFINITIONS} -DUSE_MEMMGR" )
	message( STATUS "Checking if is to enable the memory manager - yes" )
else( ENABLE_MEMMGR )
	set( GLOBAL_DEFINITIONS "${GLOBAL_DEFINITIONS} -DNO_MEMMGR" )
	message( STATUS "Checking if is to enable the memory manager - no" )
endif( ENABLE_MEMMGR )

# ==================================================================================================
#
# Dependencies.
#
# ==================================================================================================

# --------------------------------------------------------------------------------------------------
# Find the memory library (system/dmalloc/gcollect/memwatch)(Optional)
set( MEMORY_LIBRARY "system" CACHE STRING
	"Memory library to use (system/dmalloc/gcollect/memwatch) (default = system)" FORCE )

if( "${MEMORY_LIBRARY}" STREQUAL "system" )
	# Use system functions.
	message( STATUS "Enabled system memory library." )
elseif( "${MEMORY_LIBRARY}" STREQUAL "dmalloc" )
	find_package( DMALLOC REQUIRED )

	set( GLOBAL_DEFINITIONS "${GLOBAL_DEFINITIONS} -DDMALLOC -DDMALLOC_FUNC_CHECK" )
	set( GLOBAL_INCLUDE_DIRS ${GLOBAL_INCLUDE_DIRS} ${DMALLOC_INCLUDE_DIRS} )
	set( GLOBAL_LIBRARIES ${GLOBAL_LIBRARIES} ${DMALLOC_LIBRARIES} )
elseif( "${MEMORY_LIBRARY}" STREQUAL "gcollect" )
	find_package( GCOLLECT REQUIRED )

	set( GLOBAL_DEFINITIONS "${GLOBAL_DEFINITIONS} -DGCOLLECT" )
	set( GLOBAL_INCLUDE_DIRS ${GLOBAL_INCLUDE_DIRS} ${GCOLLECT_INCLUDE_DIRS} )
	set( GLOBAL_LIBRARIES ${GLOBAL_LIBRARIES} ${GCOLLECT_LIBRARIES} )
elseif( "${MEMORY_LIBRARY}" STREQUAL "memwatch" )
	find_package( MEMWATCH REQUIRED )

	set( GLOBAL_DEFINITIONS "${GLOBAL_DEFINITIONS} -DMEMWATCH" )
	set( GLOBAL_INCLUDE_DIRS ${GLOBAL_INCLUDE_DIRS} ${MEMWATCH_INCLUDE_DIRS} )
	set( GLOBAL_LIBRARIES ${GLOBAL_LIBRARIES} ${MEMWATCH_LIBRARIES} )
else( "${MEMORY_LIBRARY}" STREQUAL "system" )
	message( FATAL_ERROR
		"Invalid option: MEMORY_LIBRARY = ${MEMORY_LIBRARY} (valid options: system/dmalloc/gcollect/memwatch)" )
endif( "${MEMORY_LIBRARY}" STREQUAL "system" )

# --------------------------------------------------------------------------------------------------
# Find the dynamic loading library (UNIX)
if( NOT WIN32 )
	find_package( LIBDL REQUIRED )

	set( GLOBAL_LIBRARIES ${GLOBAL_LIBRARIES} ${LIBDL_LIBRARIES} )
endif( NOT WIN32 )

# --------------------------------------------------------------------------------------------------
# Find the LibConfig library (All)(Required)
if( WIN32 )
set( CMAKE_PREFIX_PATH ${CMAKE_CURRENT_SOURCE_DIR}/../3rdparty/libconfig
					   ${CMAKE_CURRENT_SOURCE_DIR}/../3rdparty/libconfig/lib
					   ${CMAKE_CURRENT_SOURCE_DIR}/../3rdparty/libconfig/include
					   ${CMAKE_PREFIX_PATH} )
endif( WIN32 )
find_package( LIBCONFIG REQUIRED )

set( GLOBAL_INCLUDE_DIRS ${GLOBAL_INCLUDE_DIRS} ${LIBCONFIG_INCLUDE_DIRS} )
set( GLOBAL_LIBRARIES ${GLOBAL_LIBRARIES} ${LIBCONFIG_LIBRARIES} )

# --------------------------------------------------------------------------------------------------
# Find the math library (UNIX)(Required)
if( NOT WIN32 )
	find_package( LIBM REQUIRED )

	set( GLOBAL_LIBRARIES ${GLOBAL_LIBRARIES} ${LIBM_LIBRARY} )
endif( NOT WIN32 )

# --------------------------------------------------------------------------------------------------
# Find the mt19937ar path.
set( GLOBAL_INCLUDE_DIRS ${CMAKE_CURRENT_SOURCE_DIR}/3rdparty/mt19937ar )

# --------------------------------------------------------------------------------------------------
# Find the MySQL library (All)(Required)
if( WIN32 )
set( CMAKE_PREFIX_PATH ${CMAKE_CURRENT_SOURCE_DIR}/../3rdparty/mysql
					   ${CMAKE_CURRENT_SOURCE_DIR}/../3rdparty/mysql/lib
					   ${CMAKE_CURRENT_SOURCE_DIR}/../3rdparty/mysql/include
					   ${CMAKE_PREFIX_PATH} )
endif( WIN32 )
find_package( MYSQL REQUIRED )

set( GLOBAL_INCLUDE_DIRS ${GLOBAL_INCLUDE_DIRS} ${MYSQL_INCLUDE_DIRS} )
set( GLOBAL_LIBRARIES ${GLOBAL_LIBRARIES} ${MYSQL_LIBRARIES} )

# --------------------------------------------------------------------------------------------------
# Find the networking library (All)(Required)
if( WIN32 )
	find_package( WS2_32 REQUIRED )

	set( GLOBAL_LIBRARIES ${GLOBAL_LIBRARIES} ${WS2_32_LIBRARIES} )
else( WIN32 )
	# By doing some tests I discovered that these libraries are already implemented in libc. So,
	# there's no real need to really find them when using GCC. But if we aren't...
	if( NOT "${CMAKE_C_COMPILER_ID}" STREQUAL "GNU" )
		find_package( LIBNSL REQUIRED )
		find_package( LIBSOCKET REQUIRED )

		set( GLOBAL_LIBRARIES ${GLOBAL_LIBRARIES} ${LIBNSL_LIBRARIES} ${LIBSOCKET_LIBRARIES} )
	else( NOT "${CMAKE_C_COMPILER_ID}" STREQUAL "GNU" )
		message( STATUS "Found LIBC: native" )
	endif( NOT "${CMAKE_C_COMPILER_ID}" STREQUAL "GNU" )
endif( WIN32 )

# --------------------------------------------------------------------------------------------------
# Find the oldnames library (Windows - MSVC)(Required)
if( MSVC )
	find_package( OLDNAMES REQUIRED )

	set( GLOBAL_LIBRARIES ${GLOBAL_LIBRARIES} ${OLDNAMES_LIBRARIES} )
endif( MSVC )

# --------------------------------------------------------------------------------------------------
# Find the PCRE library (All)(Optional)
if( WIN32 )
set( CMAKE_PREFIX_PATH ${CMAKE_CURRENT_SOURCE_DIR}/../3rdparty/pcre
					   ${CMAKE_CURRENT_SOURCE_DIR}/../3rdparty/pcre/lib
					   ${CMAKE_CURRENT_SOURCE_DIR}/../3rdparty/pcre/include
					   ${CMAKE_PREFIX_PATH} )
endif( WIN32 )
find_package( PCRE )

if( PCRE_FOUND )
	set( GLOBAL_INCLUDE_DIRS ${GLOBAL_INCLUDE_DIRS} ${PCRE_INCLUDE_DIRS} )
	set( GLOBAL_LIBRARIES ${GLOBAL_LIBRARIES} ${PCRE_LIBRARIES} )
endif( PCRE_FOUND )

# --------------------------------------------------------------------------------------------------
# Find the rt library (All)(Optional)
find_package( LIBRT )

if( LIBRT_FOUND )
	set( GLOBAL_LIBRARIES ${GLOBAL_LIBRARIES} ${LIBRT_LIBRARIES} )
endif( LIBRT_FOUND )

# --------------------------------------------------------------------------------------------------
# Find the ZLib library (All)(Required)
if( WIN32 )
set( CMAKE_PREFIX_PATH ${CMAKE_CURRENT_SOURCE_DIR}/../3rdparty/zlib
					   ${CMAKE_CURRENT_SOURCE_DIR}/../3rdparty/zlib/lib
					   ${CMAKE_CURRENT_SOURCE_DIR}/../3rdparty/zlib/include
					   ${CMAKE_PREFIX_PATH} )
endif( WIN32 )
find_package( ZLIB REQUIRED )

set( GLOBAL_INCLUDE_DIRS ${GLOBAL_INCLUDE_DIRS} ${ZLIB_INCLUDE_DIRS} )
set( GLOBAL_LIBRARIES ${GLOBAL_LIBRARIES} ${ZLIB_LIBRARIES} )

# ==================================================================================================
#
# Prebuild Testing.
#
# ==================================================================================================

# --------------------------------------------------------------------------------------------------
# Modules to help making the tests.
include( CheckIncludeFile )
include( CheckFunctionExists )
include( CheckSymbolExists )
include( TestBigEndian )

# --------------------------------------------------------------------------------------------------
# Do not build if the build is off-source
if( NOT "${CMAKE_BINARY_DIR}" STREQUAL "${CMAKE_SOURCE_DIR}" )
	message( FATAL_ERROR
		"Due to limitations, brAthena doesn't support off-source build.\n"
		"Build inside the emulator source diretory (the directory with the src and conf folders). An example in unix (terminal):\n"
		"-- Enter the source directory and type: --\n"
		"cmake .\n" )
endif( NOT "${CMAKE_BINARY_DIR}" STREQUAL "${CMAKE_SOURCE_DIR}" )

# --------------------------------------------------------------------------------------------------
# Test the endianness of the machine.
test_big_endian( HAVE_BIG_ENDIAN )

if( NOT DEFINED HAVE_BIG_ENDIAN )
	message( WARNING
		"Unable to determine machine endianness, only LITTLE ENDIAN machines are supported." )
elseif( HAVE_BIG_ENDIAN )
	message( FATAL_ERROR "brAthena doesn't support big endian machines." )
endif( NOT DEFINED HAVE_BIG_ENDIAN )

# --------------------------------------------------------------------------------------------------
# Test monotonic clock for clock_gettime.
#
# Normally defines _POSIX_TIMERS > 0 adn POSIX_MONOTONIC_CLOCK (for posix compliant systems) and
# __FreeBSD_cc_version >= 500005 (for FreeBSD >= 5.1.0, which doesn't have the POSIX defines (ref.
# r11983 in eAthena)) would be checked but some systems define them even when they don't support it
# (ref. bugreport:1003 in eAthena).
message( STATUS "Check for monotonic clock" )

try_run( MONOTONIC_CLOCK_CHECK_C_RUN_RESULT MONOTONIC_CLOCK_CHECK_C_COMPILATION_RESULT
	"${CMAKE_BINARY_DIR}/CMakeFiles"
	"${CMAKE_SOURCE_DIR}/3rdparty/cmake/monotonic_clock_check.c" )

if( MONOTONIC_CLOCK_CHECK_C_RUN_RESULT )
	set( GLOBAL_DEFINITIONS "${GLOBAL_DEFINITIONS} -DHAVE_MONOTONIC_CLOCK" )
	message( STATUS "Check for monotonic clock - yes" )
else( MONOTONIC_CLOCK_CHECK_C_RUN_RESULT )
	message( STATUS "Check for monotonic clock - no" )
endif( MONOTONIC_CLOCK_CHECK_C_RUN_RESULT )

# --------------------------------------------------------------------------------------------------
# Check if function exists.
check_function_exists( setrlimit HAVE_SETRLIMIT )
check_function_exists( strnlen HAVE_STRNLEN )
check_function_exists( getpid HAVE_GETPID )
check_function_exists( gettid HAVE_GETTID )
check_function_exists( inet_pton HAVE_INET_PTON ) # Function may not exist in win32

foreach( DEFINE_MACRO HAVE_STRLIMIT HAVE_STRNLEN HAVE_GETPID HAVE_GETTID HAVE_INET_PTON )
	if( ${DEFINE_MACRO} )
		set( GLOBAL_DEFINITIONS "${GLOBAL_DEFINITIONS} -D${DEFINE_MACRO}" )
	endif( ${DEFINE_MACRO} )
endforeach( DEFINE_MACRO )

# ==================================================================================================
#
# Build.
#
# ==================================================================================================

# --------------------------------------------------------------------------------------------------
# Add the source subdirectory. brAthena will be built there.
add_subdirectory( src )

# ==================================================================================================
#
# Final Messages.
#
# ==================================================================================================

# --------------------------------------------------------------------------------------------------
# If on a 64bits operating system, issue a warning that it may have problems.
# If not on a x86/x86_64 machine, stop the configure.
if( CMAKE_SIZEOF_VOID_P EQUAL 8 )
	message( WARNING "Building in 64bits machine should work, although it is not recommended." )
elseif( NOT CMAKE_SIZEOF_VOID_P EQUAL 4 )
	message( FATAL_ERROR "Unexpected archtecture (CMAKE_SIZEOF_VOID_P is ${CMAKE_SIZEOF_VOID_P})" )
endif( CMAKE_SIZEOF_VOID_P EQUAL 8 )

# --------------------------------------------------------------------------------------------------
# Warn if the build is not release.
if( NOT ENABLE_RELEASE )
	message( WARNING
		"Attention: the ENABLE_RELEASE should be checked unless you are a developer, because unchecking it will make the emulator to run SLOWER." )
endif( NOT ENABLE_RELEASE )
