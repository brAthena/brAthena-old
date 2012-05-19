# - Find gcollect
# Find the native gcollect includes and library
#
#  GCOLLECT_INCLUDE_DIRS - where to find gc.h.
#  GCOLLECT_LIBRARIES    - List of libraries when using gcollect.
#  GCOLLECT_FOUND        - True if gcollect found.

find_path( GCOLLECT_INCLUDE_DIR gc.h )
find_library( GCOLLECT_LIBRARY gc gcollect )
mark_as_advanced( GCOLLECT_INCLUDE_DIR GCOLLECT_LIBRARY )

# handle the QUIETLY and REQUIRED arguments and set GCOLLECT_FOUND to TRUE if
# all listed variables are TRUE
include( FindPackageHandleStandardArgs )
FIND_PACKAGE_HANDLE_STANDARD_ARGS( GCOLLECT DEFAULT_MSG GCOLLECT_INCLUDE_DIR GCOLLECT_LIBRARY )

if( GCOLLECT_FOUND )
	set( GCOLLECT_INCLUDE_DIRS ${GCOLLECT_INCLUDE_DIR} )
	set( GCOLLECT_LIBRARIES ${GCOLLECT_LIBRARY} )
endif( GCOLLECT_FOUND )
