# - Find memwatch
# Find the native memwatch includes and library
#
#  MEMWATCH_INCLUDE_DIRS - where to find memwatch.h.
#  MEMWATCH_LIBRARIES    - List of libraries when using memwatch.
#  MEMWATCH_FOUND        - True if memwatch found.

find_path( MEMWATCH_INCLUDE_DIR mematch.h )
find_library( MEMWATCH_LIBRARY memwatch )
mark_as_advanced( MEMWATCH_INCLUDE_DIR MEMWATCH_LIBRARY )

# handle the QUIETLY and REQUIRED arguments and set MEMWATCH_FOUND to TRUE if
# all listed variables are TRUE
include( FindPackageHandleStandardArgs )
FIND_PACKAGE_HANDLE_STANDARD_ARGS( MEMWATCH DEFAULT_MSG MEMWATCH_INCLUDE_DIR MEMWATCH_LIBRARY )

if( MEMWATCH_FOUND )
	set( MEMWATCH_INCLUDE_DIRS ${MEMWATCH_INCLUDE_DIR} )
	set( MEMWATCH_LIBRARIES ${MEMWATCH_LIBRARY} )
endif( MEMWATCH_FOUND )
