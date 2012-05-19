# - Find libdl
# Find the native libdl includes and library
#
#  LIBDL_LIBRARIES    - List of libraries when using libdl.
#  LIBDL_FOUND        - True if libdl found.

find_library( LIBDL_LIBRARY NAMES dl libdl dylib dy )
mark_as_advanced( LIBDL_LIBRARY )

# handle the QUIETLY and REQUIRED arguments and set LIBDL_FOUND to TRUE if
# all listed variables are TRUE
include( FindPackageHandleStandardArgs )
FIND_PACKAGE_HANDLE_STANDARD_ARGS( LIBDL DEFAULT_MSG LIBDL_LIBRARY )

if( LIBDL_FOUND )
	set( LIBDL_LIBRARIES ${LIBDL_LIBRARY} )
endif( LIBDL_FOUND )
