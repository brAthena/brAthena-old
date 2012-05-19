# - Find libconfig
# Find the native libconfig includes and library
#
#  LIBCONFIG_INCLUDE_DIRS - where to find libconfig.h
#  LIBCONFIG_LIBRARIES    - List of libraries when using libconfig.
#  LIBCONFIG_FOUND        - True if libconfig found.


find_path( LIBCONFIG_INCLUDE_DIR libconfig.h )

find_library( LIBCONFIG_LIBRARY NAMES libconfig config )

mark_as_advanced( LIBCONFIG_LIBRARY LIBCONFIG_INCLUDE_DIR )

# handle the QUIETLY and REQUIRED arguments and set LIBCONFIG_FOUND to TRUE if
# all listed variables are TRUE
include( FindPackageHandleStandardArgs )
FIND_PACKAGE_HANDLE_STANDARD_ARGS( LIBCONFIG DEFAULT_MSG LIBCONFIG_LIBRARY LIBCONFIG_INCLUDE_DIR )

if( LIBCONFIG_FOUND )
	set( LIBCONFIG_INCLUDE_DIRS ${LIBCONFIG_INCLUDE_DIR} )
	set( LIBCONFIG_LIBRARIES ${LIBCONFIG_LIBRARY} )
endif( LIBCONFIG_FOUND )
