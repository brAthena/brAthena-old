# - Find dmalloc
# Find the native dmalloc includes and library
#
#  DMALLOC_INCLUDE_DIRS - where to find dmalloc.h.
#  DMALLOC_LIBRARIES    - List of libraries when using dmalloc.
#  DMALLOC_FOUND        - True if dmalloc found.

find_path( DMALLOC_INCLUDE_DIR dmalloc.h )
find_library( DMALLOC_LIBRARY dmalloc )
mark_as_advanced( DMALLOC_INCLUDE_DIR DMALLOC_LIBRARY )

# handle the QUIETLY and REQUIRED arguments and set DMALLOC_FOUND to TRUE if
# all listed variables are TRUE
include( FindPackageHandleStandardArgs )
FIND_PACKAGE_HANDLE_STANDARD_ARGS( DMALLOC DEFAULT_MSG DMALLOC_INCLUDE_DIR DMALLOC_LIBRARY )

if( MEMWATCH_FOUND )
	set( DMALLOC_INCLUDE_DIRS ${DMALLOC_INCLUDE_DIR} )
	set( DMALLOC_LIBRARIES ${DMALLOC_LIBRARY} )
endif( DMALLOC_FOUND )
