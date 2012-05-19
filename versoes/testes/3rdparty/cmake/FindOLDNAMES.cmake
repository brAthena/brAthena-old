# - Find oldnames
# Find the native oldnames includes and library
#
#  OLDNAMES_LIBRARIES    - List of libraries when using oldnames.
#  OLDNAMES_FOUND        - True if oldnames found.

find_library( OLDNAMES_LIBRARY NAMES oldnames )
mark_as_advanced( OLDNAMES_LIBRARY )

# handle the QUIETLY and REQUIRED arguments and set OLDNAMES_FOUND to TRUE if
# all listed variables are TRUE
include( FindPackageHandleStandardArgs )
FIND_PACKAGE_HANDLE_STANDARD_ARGS( OLDNAMES DEFAULT_MSG OLDNAMES_LIBRARY )

if( OLDNAMES_FOUND )
	set( OLDNAMES_LIBRARIES ${OLDNAMES_LIBRARY} )
endif( OLDNAMES_FOUND )
