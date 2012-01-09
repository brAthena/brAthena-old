# Copyright (c) brAthena Dev Team - Licensed under GNU GPL
# For more information, see LICENSE in the main folder

# -----------------------------------------------------------------------------
# Set the mapcache dir
set( MAPCACHE_DIR ${CMAKE_CURRENT_SOURCE_DIR} CACHE INTERNAL "" FORCE )

# -----------------------------------------------------------------------------
# Configure the mapcache build
message( STATUS "Creating target mapcache" )

if( ZLIB_FOUND )
	set( MAPCACHE_SOURCES
		"${COMMON_DIR}/core.c"
		"${COMMON_DIR}/malloc.c"
		"${COMMON_DIR}/showmsg.c"
		"${COMMON_DIR}/strlib.c"
		"${COMMON_DIR}/des.c"
		"${COMMON_DIR}/grfio.c"
		"${COMMON_DIR}/utils.c"
		"${MAPCACHE_DIR}/mapcache.c"
	)
	set( LIBRARIES ${GLOBAL_LIBRARIES} ${ZLIB_LIBRARIES} )
	set( INCLUDE_DIRS ${GLOBAL_INCLUDE_DIRS} ${ZLIB_INCLUDE_DIRS} )
	set( DEFINITIONS "${GLOBAL_DEFINITIONS} -DMINICORE" )
	
	source_group( mapcache FILES ${MAPCACHE_SOURCES} )
	include_directories( ${INCLUDE_DIRS} )
	
	add_executable( mapcache ${MAPCACHE_SOURCES} )
	set_target_properties( mapcache PROPERTIES COMPILE_FLAGS "${DEFINITIONS}" )
	target_link_libraries( mapcache ${LIBRARIES} )
	
message( STATUS "Creating target mapcache - done" )
	
else()
	message( STATUS "Creating target mapcache - failed" )
	message( FATAL_ERROR "Failed to configure the mapcache build (required ZLIB)" )
endif()