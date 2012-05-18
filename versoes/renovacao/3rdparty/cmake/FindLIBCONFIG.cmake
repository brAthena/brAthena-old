# - Find libconfig
# Find the native libconfig includes and library
#
#  LIBCONFIG_INCLUDE_DIRS - where to find libconfig.h
#  LIBCONFIG_LIBRARIES    - List of libraries when using libconfig.
#  LIBCONFIG_FOUND        - True if libconfig found.


find_path( LIBCONFIG_INCLUDE_DIR libconfig.h
	PATHS "/usr/include"
		  "/usr/local/include" )
		
find_library( LIBCONFIG_LIBRARY NAMES libconfig config
	PATHS "/usr/lib"
		  "/usr/local/lib" )

mark_as_advanced( LIBCONFIG_LIBRARY LIBCONFIG_INCLUDE_DIR )

if( LIBCONFIG_INCLUDE_DIR AND EXISTS "${LIBCONFIG_INCLUDE_DIR}/libconfig.h" )
	file( STRINGS "${LIBCONFIG_INCLUDE_DIR}/libconfig.h" LIBCONFIG_H REGEX "^#define[ \t]+LIBCONFIG_VER_M[A-Z]+[ \t]+[0-9]+.*$" )
	string( REGEX REPLACE "^.*LIBCONFIG_VER_MAJOR[ \t]+([0-9]+).*$" "\\1" LIBCONFIG_MAJOR "${LIBCONFIG_H}" )
	string( REGEX REPLACE "^.*LIBCONFIG_VER_MINOR[ \t]+([0-9]+).*$" "\\1" LIBCONFIG_MINOR  "${LIBCONFIG_H}" )

	set( LIBCONFIG_VERSION_STRING "${LIBCONFIG_MAJOR}.${LIBCONFIG_MINOR}" )
	set( LIBCONFIG_VERSION_MAJOR "${LIBCONFIG_MAJOR}" )
	set( LIBCONFIG_VERSION_MINOR "${LIBCONFIG_MINOR}" )
endif()

# handle the QUIETLY and REQUIRED arguments and set LIBCONFIG_FOUND to TRUE if 
# all listed variables are TRUE
include( FindPackageHandleStandardArgs )
FIND_PACKAGE_HANDLE_STANDARD_ARGS( LIBCONFIG
	DEFAULT_MSG LIBCONFIG_LIBRARY LIBCONFIG_INCLUDE_DIR
)

if( LIBCONFIG_FOUND )
	set( LIBCONFIG_LIBRARIES ${LIBCONFIG_LIBRARY} )
	set( LIBCONFIG_INCLUDE_DIRS ${LIBCONFIG_INCLUDE_DIR} )
endif()
