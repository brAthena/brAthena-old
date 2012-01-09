# Copyright (c) brAthena Dev Team - Licensed under GNU GPL
# For more information, see LICENSE in the main folder

# -----------------------------------------------------------------------------
# Set the map dir
set( MAP_DIR ${CMAKE_CURRENT_SOURCE_DIR} CACHE INTERNAL "" FORCE )

# -----------------------------------------------------------------------------
# Configure the map server build
message( STATUS "Creating target map-server_sql" )

set( MAP_SOURCES
	${COMMON_SOURCES}
	"${MAP_DIR}/atcommand.c"
	"${MAP_DIR}/battle.c"
	"${MAP_DIR}/battleground.c"
	"${MAP_DIR}/buyingstore.c"
	"${MAP_DIR}/chat.c"
	"${MAP_DIR}/chrif.c"
	"${MAP_DIR}/clif.c"
	"${MAP_DIR}/date.c"
	"${MAP_DIR}/duel.c"
	"${MAP_DIR}/guild.c"
	"${MAP_DIR}/homunculus.c"
	"${MAP_DIR}/instance.c"
	"${MAP_DIR}/intif.c"
	"${MAP_DIR}/itemdb.c"
	"${MAP_DIR}/log.c"
	"${MAP_DIR}/mail.c"
	"${MAP_DIR}/map.c"
	"${MAP_DIR}/mapreg.c"
	"${MAP_DIR}/mercenary.c"
	"${MAP_DIR}/mob.c"
	"${MAP_DIR}/npc.c"
	"${MAP_DIR}/npc_chat.c"
	"${MAP_DIR}/party.c"
	"${MAP_DIR}/path.c"
	"${MAP_DIR}/pc.c"
	"${MAP_DIR}/pet.c"
	"${MAP_DIR}/quest.c"
	"${MAP_DIR}/script.c"
	"${MAP_DIR}/searchstore.c"
	"${MAP_DIR}/skill.c"
	"${MAP_DIR}/status.c"
	"${MAP_DIR}/storage.c"
	"${MAP_DIR}/trade.c"
	"${MAP_DIR}/unit.c"
	"${MAP_DIR}/vending.c"
)


set( LIBRARIES ${GLOBAL_LIBRARIES} ${COMMON_LIBRARIES} )
set( INCLUDE_DIRS ${GLOBAL_INCLUDE_DIRS} ${COMMON_INCLUDE_DIRS} )
set( DEFINITIONS "${GLOBAL_DEFINITIONS}" )

if( WITH_PCRE )
	set( LIBRARIES ${LIBRARIES} ${PCRE_LIBRARIES} )
	set( INCLUDE_DIRS ${INCLUDE_DIRS} ${PCRE_INCLUDE_DIRS} )
	set( DEFINITIONS "${DEFINITIONS} -DPCRE_SUPPORT" )	
endif()

source_group( map-sever_sql FILES ${MAP_SOURCES} )
include_directories( ${INCLUDE_DIRS} )

add_executable( map-server_sql ${MAP_SOURCES} )
set_target_properties( map-server_sql PROPERTIES COMPILE_FLAGS "${DEFINITIONS}" )
target_link_libraries( map-server_sql ${LIBRARIES} )

message( STATUS "Creating target map-server_sql - done" )