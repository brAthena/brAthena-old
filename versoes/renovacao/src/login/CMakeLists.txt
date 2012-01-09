# Copyright (c) brAthena Dev Team - Licensed under GNU GPL
# For more information, see LICENSE in the main folder

# -----------------------------------------------------------------------------
# Set the login dir
set( LOGIN_DIR ${CMAKE_CURRENT_SOURCE_DIR} CACHE INTERNAL "" FORCE )

# -----------------------------------------------------------------------------
# Configure the login server build
message( STATUS "Creating target login-server_sql" )

set( LOGIN_SOURCES
	${COMMON_SOURCES}
	"${LOGIN_DIR}/account.c"
	"${LOGIN_DIR}/ipban.c"
	"${LOGIN_DIR}/login.c"
	"${LOGIN_DIR}/loginlog.c"
)

set( LIBRARIES ${GLOBAL_LIBRARIES} ${COMMON_LIBRARIES} )
set( INCLUDE_DIRS ${GLOBAL_INCLUDE_DIRS} ${COMMON_INCLUDE_DIRS} )
set( DEFINITIONS "${GLOBAL_DEFINITIONS} -DWITH_SQL" )

source_group( login-server_sql FILES ${LOGIN_FILES} )
include_directories( ${INCLUDE_DIRS} )

add_executable( login-server_sql ${LOGIN_SOURCES} )
set_target_properties( login-server_sql PROPERTIES COMPILE_FLAGS "${DEFINITIONS}" )
target_link_libraries( login-server_sql ${LIBRARIES} )

message( STATUS "Creating target login-server_sql - done" )