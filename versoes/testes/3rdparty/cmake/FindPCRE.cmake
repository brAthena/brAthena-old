# - Find pcre
# Find the native pcre includes and library
#
#  PCRE_INCLUDE_DIRS - where to find pcre.h.
#  PCRE_LIBRARIES    - List of libraries when using pcre.
#  PCRE_FOUND        - True if pcre found.

find_path( PCRE_INCLUDE_DIR pcre.h
	PATHS
		"/usr/include/pcre"
		"/usr/local/include/pcre" )
find_library( PCRE_LIBRARY NAMES pcre libpcre
	PATHS
		"/usr/lib/pcre"
		"/usr/lib64/pcre"
		"/usr/local/lib/pcre"
		"/usr/local/lib64/pcre" )
mark_as_advanced( PCRE_INCLUDE_DIR PCRE_LIBRARY )

# handle the QUIETLY and REQUIRED arguments and set PCRE_FOUND to TRUE if
# all listed variables are TRUE
include( FindPackageHandleStandardArgs )
FIND_PACKAGE_HANDLE_STANDARD_ARGS( PCRE DEFAULT_MSG PCRE_INCLUDE_DIR PCRE_LIBRARY )

if( PCRE_FOUND )
	set( PCRE_INCLUDE_DIRS ${PCRE_INCLUDE_DIR} )
	set( PCRE_LIBRARIES ${PCRE_LIBRARY} )
endif( PCRE_FOUND )
