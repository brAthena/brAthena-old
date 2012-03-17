# Copyright (c) brAthena Dev Team - Licensed under GNU GPL
# For more information, see LICENSE in the main folder

###############################################################################
#                                                                             #
#                              INITIAL COMMANDS                               #
#                                                                             #
###############################################################################

# -----------------------------------------------------------------------------
# Required commands
cmake_minimum_required( VERSION 2.8.4 )
project( brAthena C )
set( CMAKE_MODULE_PATH
	"${CMAKE_SOURCE_DIR}/3rdparty/cmake;${CMAKE_MODULE_PATH}"
)

# -----------------------------------------------------------------------------
# Remove some variables from the options GUI (cmakegui or ccmake)
mark_as_advanced( CMAKE_INSTALL_PREFIX CMAKE_BUILD_TYPE )

# -----------------------------------------------------------------------------
# Set the basic initial variables
set( GLOBAL_LIBRARIES "" CACHE INTERNAL "Global libraries" FORCE )
set( GLOBAL_INCLUDE_DIRS "" CACHE INTERNAL "Global include directories" FORCE )
set( GLOBAL_DEFINITIONS "" CACHE INTERNAL "Global compiler definitions" FORCE )

# -----------------------------------------------------------------------------
# Configure the output path
set( EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR} )
set( LIBRARY_OUTPUT_PATH ${CMAKE_BINARY_DIR} )
set( RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR} )
set( CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}" )
	
foreach( CONF_TYPE ${CMAKE_CONFIGURATION_TYPES} )
	string( TOUPPER "${CONF_TYPE}" CONF_TYPE )	
	set( CMAKE_RUNTIME_OUTPUT_DIRECTORY_${CONF_TYPE} "${CMAKE_BINARY_DIR}" )
endforeach()

# -----------------------------------------------------------------------------
# If using Visual Studio, needs to configure the SDK path
if( MSVC )
    get_filename_component( WIN_SDK6_DIR
		"[HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Microsoft SDKs\\Windows\\v6.0A;InstallationFolder]"
		REALPATH CACHE
	)
    get_filename_component( WIN_SDK7_DIR
		"[HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Microsoft SDKs\\Windows\\v7.0A;InstallationFolder]"
		REALPATH CACHE
	)

	if( WIN_SDK6_DIR OR WIN_SDK7_DIR )
		set( WIN_SDK_INCLUDE_DIR "${WIN_SDK6_DIR}/Include" "${WIN_SDK7_DIR}/Include" )
		set( WIN_SDK_LIB_DIR "${WIN_SDK6_DIR}/Lib" "${WIN_SDK7_DIR}/Lib" )
	else()
		message( FATAL_ERROR "Could not find the Windows SDK." )
	endif()

	mark_as_advanced( WIN_SDK6_DIR WIN_SDK7_DIR WIN_SDK_INCLUDE_DIR WIN_SDK_LIB_DIR )

	set( CMAKE_INCLUDE_PATH "${CMAKE_INCLUDE_PATH}" ${WIN_SDK_INCLUDE_DIR} )
	set( CMAKE_LIBRARY_PATH "${CMAKE_LIBRARY_PATH}" ${WIN_SDK_LIB_DIR} )
endif()

# -----------------------------------------------------------------------------
# If using Visual Studio, needs to configure the library path
if( MSVC11 )
    get_filename_component(VS_DIR
		[HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\VisualStudio\\11.0\\Setup\\VS;ProductDir]
		REALPATH CACHE
	)
elseif( MSVC10 )
    get_filename_component( VS_DIR
		[HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\VisualStudio\\10.0\\Setup\\VS;ProductDir]
		REALPATH CACHE
	)
elseif( MSVC90 )
    get_filename_component(VS_DIR
		[HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\VisualStudio\\9.0\\Setup\\VS;ProductDir]
		REALPATH CACHE
	)
elseif( MSVC80 )
    get_filename_component(VS_DIR
		[HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\VisualStudio\\8.0\\Setup\\VS;ProductDir]
		REALPATH CACHE
	)
elseif( MSVC71 )
    get_filename_component(VS_DIR
		[HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\VisualStudio\\7.1\\Setup\\VS;ProductDir]
		REALPATH CACHE
	)
elseif( MSVC70 )
    get_filename_component(VS_DIR
		[HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\VisualStudio\\7.0\\Setup\\VS;ProductDir]
		REALPATH CACHE
	)
elseif( MSVC60 )
    get_filename_component(VS_DIR
		[HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\VisualStudio\\6.0\\Setup\\VS;ProductDir]
		REALPATH CACHE
	)
elseif( MSVC )
	message( FATAL_ERROR "Could not identify the Visual C++ version you are using." )
endif()

if( MSVC )
	mark_as_advanced( VS_DIR )
	set( CMAKE_INCLUDE_PATH "${CMAKE_INCLUDE_PATH}" "${VS_DIR}/VC/include" )
	set( CMAKE_LIBRARY_PATH "${CMAKE_LIBRARY_PATH}" "${VS_DIR}/VC/lib" )
endif()

# -----------------------------------------------------------------------------
# Set some initial global definitions for disabling some compiler warnings
if( WIN32 )
	set_property( CACHE GLOBAL_DEFINITIONS PROPERTY VALUE
		"${GLOBAL_DEFINITIONS} -DFD_SETSIZE=4096"
	)

	# MSVC has some initial defines too
	if( MSVC )
		set_property( CACHE GLOBAL_DEFINITIONS PROPERTY VALUE
			"${GLOBAL_DEFINITIONS} -D_CRT_SECURE_NO_DEPRECATE -D_CRT_NONSTDC_NO_DEPRECATE /wd4100 /wd4800 /wd4018"
		)
	endif()
endif()

if( "${CMAKE_C_COMPILER_ID}" STREQUAL "GNU" )
	set_property( CACHE GLOBAL_DEFINITIONS PROPERTY VALUE
		"${GLOBAL_DEFINITIONS} -Wno-int-to-pointer-cast -Wno-pointer-to-int-cast"
	)
endif()

###############################################################################
#                                                                             #
#                       INTERNAL SWITCHES CONFIGURATION                       #
#                                                                             #
###############################################################################

# -----------------------------------------------------------------------------
# Add the release or debug option
message( STATUS "Checking the build configuration to use" )
option( BUILD_RELEASE "Build release version of brAthena (default = ON)" ON )

if( BUILD_RELEASE )
	# Configure the release changes (optimization)
	set( CMAKE_BUILD_TYPE "Release" )
	message( STATUS
		"Checking the build configuration to use - Release"
	)
else()
	# Debug version
	message( STATUS "Checking the build configuration to use - Debug" )
	set( CMAKE_BUILD_TYPE "Debug" )
	set_property( CACHE GLOBAL_DEFINITIONS PROPERTY VALUE
		"${GLOBAL_DEFINITIONS} -DDEBUG"
	)
endif()

# -----------------------------------------------------------------------------
# Configure the RDTSC instruction as timing source (timestamp counter on x86
# since Pentium)
#
# Enable it when you've timing issues. (ex: in conjunction with XEN or Other
# Virtualization mechanisms)
# Please ensure that you've disabled dynamic CPY-Frequencies, such as power
# power saving options (on most modern dedicated servers cpufreq is
# preconfigured, see your distribution's manual how to disable it).
message( STATUS "Checking if is to enable RDTSC" )
option( ENABLE_RDTSC "Enable RDTSC instruction as timing source (default = OFF)" OFF )

if( ENABLE_RDTSC )
	set_property( CACHE GLOBAL_DEFINITIONS PROPERTY VALUE
		"${GLOBAL_DEFINITIONS} -DENABLE_RDTSC"
	)
	message( STATUS "Checking if is to enable RDTSC - yes" )
else()
	message( STATUS "Checking if is to enable RDTSC - no" )
endif()

# -----------------------------------------------------------------------------
# Configure the memory manager
message( STATUS "Checking if is to enable the memory manager" )
option( ENABLE_MEMMGR "Enable the memory manager (default = OFF)" OFF )

if( ENABLE_MEMMGR )
	set_property( CACHE GLOBAL_DEFINITIONS PROPERTY VALUE
		"${GLOBAL_DEFINITIONS} -DUSE_MEMMGR"
	)
	message( STATUS "Checking if is to enable the memory manager - yes" )
else()
	set_property( CACHE GLOBAL_DEFINITIONS PROPERTY VALUE
		"${GLOBAL_DEFINITIONS} -DNO_MEMMGR"
	)
	message( STATUS "Checking if is to enable the memory manager - no" )
endif()

###############################################################################
#                                                                             #
#                              DEPENDENCY FINDING                             #
#                                                                             #
###############################################################################

# -----------------------------------------------------------------------------
# Include some checks for checking if a library or header dependency exists.
include( CheckIncludeFile )

# -----------------------------------------------------------------------------
# Configure some 3rdparty things
add_subdirectory( 3rdparty )

# -----------------------------------------------------------------------------
# Find the oldnames library (Windows - MSVC)
if( MSVC )
	message( STATUS "Looking for oldnames library" )
	find_library( OLDNAMES_LIBRARY NAMES oldnames )

	mark_as_advanced( OLDNAMES_LIBRARY )

	if( OLDNAMES_LIBRARY )
		set_property( CACHE GLOBAL_LIBRARIES APPEND PROPERTY VALUE
			${OLDNAMES_LIBRARY}
		)
		message( STATUS "Looking for oldnames library - found" )
	else()
		message( STATUS "Looking for oldnames library - not found" )
		message( FATAL_ERROR "Could not find the oldnames library" )
	endif()
endif()

# -----------------------------------------------------------------------------
# Find the math library (UNIX)
if( NOT WIN32 )
	message( STATUS "Looking for libm" )
	find_library( M_LIBRARY NAMES m )

	mark_as_advanced( M_LIBRARY )

	if( M_LIBRARY )
		message( STATUS "Looking for libm - found" )
		set_property( CACHE GLOBAL_LIBRARIES APPEND PROPERTY VALUE
			${M_LIBRARY}
		)
	else()
		message( STATUS "Looking for libm - not found" )
		message( FATAL_ERROR "Could not find libm." )
	endif()
endif( NOT WIN32 )

# -----------------------------------------------------------------------------
# Find the dynamic loading library (Linux - Maybe other unixes)
if( NOT WIN32 )
	message( STATUS "Looking for libdl" )
	find_library( DL_LIBRARY NAMES dl )

	mark_as_advanced( DL_LIBRARY )

	if( DL_LIBRARY )
		message( STATUS "Looking for libdl - found" )
		set_property( CACHE GLOBAL_LIBRARIES APPEND PROPERTY VALUE
			${DL_LIBRARY}
		)
	else()
		message( STATUS "Looking for libdl - not found" )
		message( FATAL_ERROR "Could not find libdl." )
	endif()
endif( NOT WIN32 )

# -----------------------------------------------------------------------------
# Find the cmtd library (windows)
if( MSVC )
	message( STATUS "Looking for cmtd library" )
	find_library( CMTD_LIBRARY NAMES libcmtd cmtd )

	mark_as_advanced( CMTD_LIBRARY )

	if( CMTD_LIBRARY )
		#set_property( CACHE GLOBAL_LIBRARIES APPEND PROPERTY VALUE
		#	${CMTD_LIBRARY}
		#)
		message( STATUS "Looking for cmtd library - found" )
	else()
		message( STATUS "Looking for cmtd library - not found" )
		message( FATAL_ERROR
			"Could not find the cmtd library"
		)
	endif()
endif()

# -----------------------------------------------------------------------------
# Find the networking library (all)
message( STATUS "Looking for networking library" )
if( WIN32 )
	find_library( WS2_32_LIBRARY NAMES ws2_32 )

	mark_as_advanced( WS2_32_LIBRARY )

	if( WS2_32_LIBRARY )
		set_property( CACHE GLOBAL_LIBRARIES APPEND PROPERTY VALUE
			${WS2_32_LIBRARY}
		)
		message( STATUS "Looking for networking library - found (ws2_32)" )
	else()
		message( STATUS "Looking for networking library - not found" )
		message( FATAL_ERROR
			"Could not find the networking library (ws2_32)."
		)
	endif()
else()
	# By doing some tests I discovered that these libraries are already
	# implemented in the libc. So, there's no real need to implement them
	# when using GCC. But if we aren't...

	if( NOT "${CMAKE_C_COMPILER_ID}" STREQUAL "GNU" )
		find_library( SOCKET_LIBRARY NAMES socket )
		find_library( NSL_LIBRARY NAMES nsl )

		mark_as_advanced( SOCKET_LIBRARY NSL_LIBRARY )

		if( SOCKET_LIBRARY AND NSL_LIBRARY )
			set_property( CACHE GLOBAL_LIBRARIES APPEND PROPERTY VALUE
				${SOCKET_LIBRARY} ${NSL_LIBRARY}
			)
			message( STATUS "Looking for networking library - found (socket/nsl)" )
		else()
			message( STATUS "Looking for networking library - not found" )

			if( NOT SOCKET_LIBRARY )
				message( FATAL_ERROR
					"Could not find the socket library."
				)
			else() # NOT HAVE_LIBNSL
				message( FATAL_ERROR
					"Could not find the nsl library."
				)
			endif()
		endif()
	else()
		message( STATUS "Looking for networking library - found (libc)" )
	endif()
endif()

# -----------------------------------------------------------------------------
# Find the rt library (Optional)
message( STATUS "Looking for rt library" )
find_library( RT_LIBRARY rt )

mark_as_advanced( RT_LIBRARY )

if( RT_LIBRARY )
	set_property( CACHE GLOBAL_LIBRARIES APPEND PROPERTY VALUE
		"${RT_LIBRARY}"
	)
	message( STATUS "Looking for rt library - found" )
else()
	message( STATUS "Looking for rt library - not found" )
endif()

# -----------------------------------------------------------------------------
# Enable the memory library (system/memwatch/dmalloc/gcollect)
set( MEMORY_LIBRARY "system" CACHE STRING
	"Memory library to use (system/memwatch/dmalloc/gcollect) (default = system)"
	FORCE
)

if( "${MEMORY_LIBRARY}" STREQUAL "system" )
	# Use system functions
	message( STATUS "Enabled system memory library" )
elseif( "${MEMORY_LIBRARY}" STREQUAL "memwatch" )
	message( STATUS "Looking for memwatch" )
	check_include_file( "memwatch.h" HAVE_MEMWATCH_H )
	find_library( MEMWATCH_LIBRARY memwatch )
	mark_as_advanced( HAVE_MEMWATCH_H MEMWATCH_LIBRARY )

	if( HAVE_MEMWATCH_H AND MEMWATCH_LIBRARY )
		set_property( CACHE GLOBAL_LIBRARIES APPEND PROPERTY VALUE
			${MEMWATCH_LIBRARY}
		)
		set_property( CACHE GLOBAL_DEFINITIONS PROPERTY VALUE
			"${GLOBAL_DEFINITIONS} -DMEMWATCH"
		)
		message( STATUS "Looking for memwatch - found" )
		message( STATUS "Enabled memwatch memory library" )
	else()
		message( STATUS "Looking for memwatch - not found" )
		message( FATAL_ERROR "Could not find memwatch" )
	endif()
elseif( "${MEMORY_LIBRARY}" STREQUAL "dmalloc" )
	message( STATUS "Looking for dmalloc" )
	check_include_file( dmalloc.h HAVE_DMALLOC_H )
	find_library( DMALLOC_LIBRARY dmalloc )
	mark_as_advanced( HAVE_DMALLOC_H DMALLOC_LIBRARY )

	if( HAVE_DMALLOC_H AND DMALLOC_LIBRARY )
		set_property( CACHE GLOBAL_LIBRARIES APPEND PROPERTY VALUE
			"${DMALLOC_LIBRARY}"
		)
		set_property( CACHE GLOBAL_DEFINITIONS PROPERTY VALUE
			"${GLOBAL_DEFINITIONS} -DDMALLOC -DDMALLOC_FUNC_CHECK"
		)
		message( STATUS "Looking for dmalloc - found" )
		message( STATUS "Enabled dmalloc memory library" )
	else()
		message( STATUS "Looking for memwatch - not found" )
		message( FATAL_ERROR "Could not find memwatch" )
	endif()
elseif( "${MEMORY_LIBRARY}" STREQUAL "gcollect" )
	message( STATUS "Looking for gcollect" )
	check_include_file( gc.h HAVE_GC_H )
	find_library( GC_LIBRARY gc )
	mark_as_advanced( HAVE_GC_H GC_LIBRARY )

	if( HAVE_GC_H AND GC_LIBRARY )
		set_property( CACHE GLOBAL_LIBRARIES APPEND PROPERTY VALUE
			"${GC_LIBRARY}"
		)
		set_property( CACHE GLOBAL_DEFINITIONS PROPERTY VALUE
			"${GLOBAL_DEFINITIONS} -DGCOLLECT"
		)
		message( STATUS "Looking for gcollect - found" )
		message( STATUS "Enabled gcollect memory library" )
	else()
		message( STATUS "Looking for gcollect - not found" )
		message( FATAL_ERROR "Could not find gcollect" )
	endif()
else()
	message( FATAL_ERROR
		"Invalid option: MEMORY_LIBRARY = ${MEMORY_LIBRARY} (valid options: system/memwatch/dmalloc/gcollect)"
	)
endif()

# -----------------------------------------------------------------------------
# Enable the profiler (none/gprof)
set( PROFILER_LIBRARY "none" CACHE STRING
	"Profiler library to use (none/gprof) (default = none)" FORCE
)

if( "${PROFILER_LIBRARY}" STREQUAL "none" )
	# No profiler...
elseif( "${PROFILER_LIBRARY}" STREQUAL "gprof" )
	if( "${CMAKE_C_COMPILER_ID}" STREQUAL "GNU" )
		if( NOT HAVE_GPROF_FLAGS )
			set_property( CACHE CMAKE_C_FLAGS APPEND_STRING PROPERTY VALUE
				"-pg"
			)
			set_property( CACHE CMAKE_EXE_LINKER_FLAGS APPEND_STRING PROPERTY
				VALUE "-pg"
			)
			set( HAVE_GPROF_FLAGS ON CACHE INTERNAL "" )
		endif()

		message( STATUS "Enabled gprof profiler" )

	else()
		message( FATAL_ERROR
			"Failed to enable the gprof profiler - the compiler isn't GNU GCC"
		)
	endif()
else()
	message( FATAL_ERROR
		"Invalid option: PROFILER_LIBRARY = ${PROFILER_LIBRARY} (valid options: none/gprof)"
	)
endif()

###############################################################################
#                                                                             #
#                                   TESTING                                   #
#                                                                             #
###############################################################################

# -----------------------------------------------------------------------------
# Modules to help making the tests.
include( CheckIncludeFile )
include( CheckFunctionExists )
include( CheckSymbolExists )
include( TestBigEndian )

# -----------------------------------------------------------------------------
# Do not build if the build is off-source.
if( NOT "${CMAKE_BINARY_DIR}" STREQUAL "${CMAKE_SOURCE_DIR}" )
	message( FATAL_ERROR
		"Due to limitations, brAthena doesn't support off-source build.\n"
		"Build inside the emulator source directory (the directory with the src and conf folders, with the LICENSE file). A example in unix (command line):\n"
		"-- Enter the source directory and type: --\n"
		"cmake .\n"
	)
endif()

# -----------------------------------------------------------------------------
# Test the endianess of the machine.
test_big_endian( HAVE_BIG_ENDIAN )

if( NOT DEFINED HAVE_BIG_ENDIAN )
	message( WARNING
		"Unable to determine machine endianess, only LITTLE ENDIAN machines are supported."
	)
elseif( HAVE_BIG_ENDIAN )
	message( FATAL_ERROR
		"brAthena doesn't support big endian machines." )
endif()

# -----------------------------------------------------------------------------
# Test monotonic clock for clock_gettime
#
# Normally defines _POSIX_TIMERS > 0 and POSIX_MONOTONIC_CLOCK (for posix
# compliant systems) and __FreeBSD_cc_version >= 500005 (for FreeBSD >= 5.1.0,
# which doesn't have the POSIX defines (ref. r11983 in eathena)) would be
# checked but some systems define them even when they don't support it (ref.
# bugreport:1003 in eathena).
#
message( STATUS "Check for monotonic clock" )

try_run( MONOTONIC_CLOCK_CHECK_C_RUN_RESULT
	MONOTONIC_CLOCK_CHECK_C_COMPILATION_RESULT
	"${CMAKE_BINARY_DIR}/CMakeFiles"
	"${CMAKE_SOURCE_DIR}/3rdparty/cmake/monotonic_clock_check.c"
)

if( MONOTONIC_CLOCK_CHECK_C_RUN_RESULT )
	set_property( CACHE GLOBAL_DEFINITIONS PROPERTY VALUE
		"${GLOBAL_DEFINITIONS} -DHAVE_MONOTONIC_CLOCK"
	)
	message( STATUS "Check for monotonic clock - yes" )
else()
	message( STATUS "Check for monotonic clock - no" )
endif()

# -----------------------------------------------------------------------------
# Check if function exists
check_function_exists( setrlimit HAVE_SETRLIMIT )
check_function_exists( strnlen HAVE_STRNLEN )
check_function_exists( getpid HAVE_GETPID )
check_function_exists( gettid HAVE_GETTID )
check_function_exists( inet_pton HAVE_INET_PTON ) # Function may not exists in win32

foreach( DEFINE_MACRO HAVE_STRLIMIT HAVE_STRNLEN HAVE_GETPID HAVE_GETTID
	HAVE_INET_PTON
)
	if( ${DEFINE_MACRO} )
		set_property( CACHE GLOBAL_DEFINITIONS PROPERTY VALUE
			"${GLOBAL_DEFINITIONS} -D${DEFINE_MACRO}"
		)
	endif()
endforeach()

###############################################################################
#                                                                             #
#                                    BUILD                                    #
#                                                                             #
###############################################################################

#------------------------------------------------------------------------------
# Build in the subdirectories
add_subdirectory( src )

###############################################################################
#                                                                             #
#                                FINAL MESSAGES                               #
#                                                                             #
###############################################################################

# -----------------------------------------------------------------------------
# If on a 64bits operating system, issue a warning that it may have problems.
# If not on a x86/x86_64 machine, stop the configure.
if( CMAKE_SIZEOF_VOID_P EQUAL 8 )
	message( WARNING
		"Building in a 64bits machine should work, but is not recommended."
	)
elseif( NOT CMAKE_SIZEOF_VOID_P EQUAL 4 )
	message( FATAL_ERROR
		"Unexpected archtecture (CMAKE_SIZEOF_VOID_P is ${CMAKE_SIZEOF_VOID_P})"
	)
endif()

# -----------------------------------------------------------------------------
# Warn if the build is not release
if( NOT BUILD_RELEASE )
	message( WARNING
		"Attention: The BUILD_RELEASE should be checked unless you are a developer, because unchecking it will make the emulator to run SLOWER."
	)
endif()
