# - Find ws2_32
# Find the native ws2_32 includes and library
#
#  WS2_32_LIBRARIES    - List of libraries when using ws2_32.
#  WS2_32_FOUND        - True if ws2_32 found.

find_library( WS2_32_LIBRARY ws2_32 )
mark_as_advanced( WS2_32_LIBRARY )

# handle the QUIETLY and REQUIRED arguments and set WS2_32_FOUND to TRUE if
# all listed variables are TRUE
include( FindPackageHandleStandardArgs )
FIND_PACKAGE_HANDLE_STANDARD_ARGS( WS2_32 DEFAULT_MSG WS2_32_LIBRARY )

if( WS2_32_FOUND )
	set( WS2_32_LIBRARIES ${WS2_32_LIBRARY} )
endif( WS2_32_FOUND )
