# - Find mysql
# Find the native MySQL includes and library
#
#  MYSQL_INCLUDE_DIRS - where to find mysql.h.
#  MYSQL_LIBRARIES    - List of libraries when using mysql.
#  MYSQL_FOUND        - True if mysql found.

if( WIN32 )
	find_path( MYSQL_INCLUDE_DIR mysql.h
		PATHS
			"$ENV{PROGRAMFILES}/MySQL/include"
			"$ENV{SYSTEMDRIVE}/MySQL/include"
			"$ENV{PROGRAMFILES}/MySQL/*/include"
			"$ENV{SYSTEMDRIVE}/MySQL/*/include" )
	find_library( MYSQL_LIBRARY
		NAMES
			mysqlclient mysqlclient_r mysql libmysql
		PATHS
			"$ENV{PROGRAMFILES}/MySQL/lib"
			"$ENV{PROGRAMFILES}/MySQL/lib64"
			"$ENV{PROGRAMFILES}/MySQL/*/lib"
			"$ENV{PROGRAMFILES}/MySQL/*/lib64"
			"$ENV{SYSTEMDRIVE}/MySQL/lib"
			"$ENV{SYSTEMDRIVE}/MySQL/lib64"
			"$ENV{SYSTEMDRIVE}/MySQL/*/lib"
			"$ENV{SYSTEMDRIVE}/MySQL/*/lib64" )
else( WIN32 )
	find_path( MYSQL_INCLUDE_DIR mysql.h
		PATHS
			"/usr/include/mysql"
			"/usr/local/include/mysql"
			"/usr/mysql/include"
			"/usr/mysql/include/mysql" )
	find_library( MYSQL_LIBRARY
		NAMES
			mysqlclient mysqlclient_r mysql libmysql
		PATHS
			"/usr/lib/mysql"
			"/usr/lib64/mysql"
			"/usr/local/lib/mysql"
			"/usr/local/lib64/mysql"
			"/usr/mysql/lib"
			"/usr/mysql/lib/mysql"
			"/usr/mysql/lib64"
			"/usr/mysql/lib64/mysql" )
endif( WIN32 )
mark_as_advanced( MYSQL_INCLUDE_DIR MYSQL_LIBRARY )

# handle the QUIETLY and REQUIRED arguments and set MYSQL_FOUND to TRUE if
# all listed variables are TRUE
include( FindPackageHandleStandardArgs )
FIND_PACKAGE_HANDLE_STANDARD_ARGS( MYSQL DEFAULT_MSG MYSQL_INCLUDE_DIR MYSQL_LIBRARY )

if( MYSQL_FOUND )
	set( MYSQL_INCLUDE_DIRS ${MYSQL_INCLUDE_DIR} )
	set( MYSQL_LIBRARIES ${MYSQL_LIBRARY} )
endif( MYSQL_FOUND )
