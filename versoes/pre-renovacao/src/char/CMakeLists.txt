# Copyright (c) brAthena Dev Team - Licensed under GNU GPL
# For more information, see LICENSE in the main folder

# -----------------------------------------------------------------------------
# Set the char dir
set( CHAR_DIR ${CMAKE_CURRENT_SOURCE_DIR} CACHE INTERNAL "" FORCE )

# -----------------------------------------------------------------------------
# Configure the char server build
message( STATUS "Creating target char-server_sql" )

set( CHAR_SOURCES
	${COMMON_SOURCES}
	"${CHAR_DIR}/char.c"
	"${CHAR_DIR}/int_auction.c"
	"${CHAR_DIR}/int_guild.c"
	"${CHAR_DIR}/int_homun.c"
	"${CHAR_DIR}/int_mail.c"
	"${CHAR_DIR}/int_mercenary.c"
	"${CHAR_DIR}/int_party.c"
	"${CHAR_DIR}/int_pet.c"
	"${CHAR_DIR}/int_quest.c"
	"${CHAR_DIR}/int_storage.c"
	"${CHAR_DIR}/inter.c"
)
set( LIBRARIES ${GLOBAL_LIBRARIES} ${COMMON_LIBRARIES} )
set( INCLUDE_DIRS ${GLOBAL_INCLUDE_DIRS} ${COMMON_INCLUDE_DIRS} )
set( DEFINITIONS "${GLOBAL_DEFINITIONS}" )

source_group( char-server_sql FILES ${CHAR_SOURCES} )
include_directories( ${INCLUDE_DIRS} )

add_executable( char-server_sql ${CHAR_SOURCES} )
set_target_properties( char-server_sql PROPERTIES COMPILE_FLAGS "${DEFINITIONS}" )
target_link_libraries( char-server_sql ${LIBRARIES} )

message( STATUS "Creating target char-server_sql - done" )