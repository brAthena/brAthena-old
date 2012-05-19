# - Find mt19937ar
# Find the native mt19937ar includes and library
#
#  MT19937AR_INCLUDE_DIRS - where to find mt19937ar.h.
#  MT19937AR_LIBRARIES    - List of libraries when using mt19937ar.
#  MT19937AR_FOUND        - True if mt19937ar found.

find_path( MT19937AR_INCLUDE_DIR mt19937ar.h )
find_library( MT19937AR_LIBRARY NAMES mt19937ar libmt19937ar )
mark_as_advanced( MT19937AR_INCLUDE_DIR MT19937AR_LIBRARY )

# handle the QUIETLY and REQUIRED arguments and set MT19937AR_FOUND to TRUE if
# all listed variables are TRUE
include( FindPackageHandleStandardArgs )
FIND_PACKAGE_HANDLE_STANDARD_ARGS( MT19937AR DEFAULT_MSG MT19937AR_INCLUDE_DIR MT19937AR_LIBRARY )

if( MT19937AR_FOUND )
	set( MT19937AR_INCLUDE_DIRS ${MT19937AR_INCLUDE_DIR} )
	set( MT19937AR_LIBRARIES ${MT19937AR_LIBRARY} )
endif( MT19937AR_FOUND )