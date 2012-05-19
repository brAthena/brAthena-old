# Copyright (c) brAthena Dev Team - Licensed under GNU GPL
# For more information, see LICENSE in the main folder

# ==================================================================================================
#
# Source files.
#
# ==================================================================================================

# --------------------------------------------------------------------------------------------------
# common source files.
set( COMMON_SOURCE_FILES
	"${CMAKE_CURRENT_SOURCE_DIR}/../3rdparty/mt19937ar/mt19937ar.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/common/conf.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/common/core.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/common/db.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/common/des.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/common/ers.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/common/grfio.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/common/lock.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/common/malloc.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/common/mapindex.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/common/md5calc.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/common/nullpo.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/common/plugins.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/common/random.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/common/showmsg.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/common/socket.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/common/sql.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/common/strlib.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/common/timer.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/common/utils.c" )

# --------------------------------------------------------------------------------------------------
# char source files.
set( CHAR_SOURCE_FILES
	"${CMAKE_CURRENT_SOURCE_DIR}/char/char.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/char/int_auction.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/char/int_elemental.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/char/inter.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/char/int_guild.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/char/int_homun.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/char/int_mail.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/char/int_mercenary.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/char/int_party.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/char/int_pet.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/char/int_quest.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/char/int_storage.c" )

# --------------------------------------------------------------------------------------------------
# login source files.
set( LOGIN_SOURCE_FILES
	"${CMAKE_CURRENT_SOURCE_DIR}/login/account.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/login/ipban.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/login/login.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/login/loginlog.c" )

# --------------------------------------------------------------------------------------------------
# map source files.
set( MAP_SOURCE_FILES
	"${CMAKE_CURRENT_SOURCE_DIR}/map/atcommand.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/map/battle.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/map/battleground.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/map/buyingstore.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/map/chat.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/map/chrif.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/map/clif.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/map/date.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/map/duel.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/map/elemental.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/map/guild.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/map/homunculus.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/map/instance.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/map/intif.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/map/itemdb.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/map/log.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/map/mail.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/map/map.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/map/mapreg.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/map/mercenary.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/map/mob.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/map/npc.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/map/npc_chat.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/map/party.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/map/path.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/map/pc.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/map/pc_groups.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/map/pet.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/map/quest.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/map/script.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/map/searchstore.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/map/skill.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/map/status.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/map/storage.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/map/trade.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/map/unit.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/map/vending.c" )

# --------------------------------------------------------------------------------------------------
# mapcache source files.
set( MAPCACHE_SOURCE_FILES
	"${CMAKE_CURRENT_SOURCE_DIR}/common/conf.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/common/core.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/common/malloc.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/common/showmsg.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/common/strlib.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/common/des.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/common/grfio.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/common/utils.c"
	"${CMAKE_CURRENT_SOURCE_DIR}/tool/mapcache.c" )

# ==================================================================================================
#
# Build.
#
# ==================================================================================================

# --------------------------------------------------------------------------------------------------
# Build the common library.
include_directories( ${GLOBAL_INCLUDE_DIRS} )
add_library( brathena-common STATIC ${COMMON_SOURCE_FILES} )
set_target_properties( brathena-common PROPERTIES COMPILE_FLAGS "${GLOBAL_DEFINITIONS}" )

# --------------------------------------------------------------------------------------------------
# Build the char executable.
include_directories( ${GLOBAL_INCLUDE_DIRS} )
add_executable( char-server ${CHAR_SOURCE_FILES} )
add_dependencies( char-server brathena-common )
set_target_properties( char-server PROPERTIES COMPILE_FLAGS "${GLOBAL_DEFINITIONS}" )
target_link_libraries( char-server ${GLOBAL_LIBRARIES} brathena-common )

# --------------------------------------------------------------------------------------------------
# Build the login executable.
include_directories( ${GLOBAL_INCLUDE_DIRS} )
add_executable( login-server ${LOGIN_SOURCE_FILES} )
add_dependencies( login-server brathena-common )
set_target_properties( login-server PROPERTIES COMPILE_FLAGS "${GLOBAL_DEFINITIONS}" )
target_link_libraries( login-server ${GLOBAL_LIBRARIES} brathena-common )

# --------------------------------------------------------------------------------------------------
# Build the map executable.
include_directories( ${GLOBAL_INCLUDE_DIRS} )
add_executable( map-server ${MAP_SOURCE_FILES} )
add_dependencies( map-server brathena-common )
set_target_properties( map-server PROPERTIES COMPILE_FLAGS "${GLOBAL_DEFINITIONS}" )
target_link_libraries( map-server ${GLOBAL_LIBRARIES} brathena-common )

# --------------------------------------------------------------------------------------------------
# Build the mapcache executable.
include_directories( ${GLOBAL_INCLUDE_DIRS} )
add_executable( mapcache ${MAPCACHE_SOURCE_FILES} )
set_target_properties( mapcache PROPERTIES COMPILE_FLAGS "${GLOBAL_DEFINITIONS} -DMINICORE" )
target_link_libraries( mapcache ${GLOBAL_LIBRARIES} )
