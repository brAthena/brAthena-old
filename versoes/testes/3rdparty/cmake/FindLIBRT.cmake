# - Find librt
# Find the native librt includes and library
#
#  LIBRT_LIBRARIES    - List of libraries when using librt.
#  LIBRT_FOUND        - True if librt found.

find_library( LIBRT_LIBRARY NAMES rt librt )
mark_as_advanced( LIBRT_LIBRARY )

# handle the QUIETLY and REQUIRED arguments and set LIBRT_FOUND to TRUE if
# all listed variables are TRUE
include( FindPackageHandleStandardArgs )
FIND_PACKAGE_HANDLE_STANDARD_ARGS( LIBRT DEFAULT_MSG LIBRT_LIBRARY )

if( LIBRT_FOUND )
	set( LIBRT_LIBRARIES ${LIBRT_LIBRARY} )
endif( LIBRT_FOUND )
