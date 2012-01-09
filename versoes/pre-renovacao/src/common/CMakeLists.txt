# Copyright (c) brAthena Dev Team - Licensed under GNU GPL
# For more information, see LICENSE in the main folder

# -----------------------------------------------------------------------------
# Set the common dir
set( COMMON_DIR ${CMAKE_CURRENT_SOURCE_DIR} CACHE INTERNAL "" FORCE )
mark_as_advanced( COMMON_DIR )

# -----------------------------------------------------------------------------
# Create svnversion.h
message( STATUS "Creating svnversion.h" )

# Only generates a blank one for the compiler to not complain...
file( WRITE ${CMAKE_CURRENT_BINARY_DIR}/svnversion.h "" )

message( STATUS "Creating svnversion.h - done" )

# -----------------------------------------------------------------------------
# Configure the normal core build
if( ZLIB_FOUND AND MYSQL_FOUND )
	message( STATUS "Creating target common" )

	set( COMMON_SOURCES
		${MT19937AR_SOURCES}
		"${COMMON_DIR}/core.c"
		"${COMMON_DIR}/db.c"
		"${COMMON_DIR}/des.c"
		"${COMMON_DIR}/ers.c"
		"${COMMON_DIR}/grfio.c"
		"${COMMON_DIR}/lock.c"
		"${COMMON_DIR}/malloc.c"
		"${COMMON_DIR}/mapindex.c"
		"${COMMON_DIR}/md5calc.c"
		"${COMMON_DIR}/nullpo.c"
		"${COMMON_DIR}/plugins.c"
		"${COMMON_DIR}/random.c"
		"${COMMON_DIR}/showmsg.c"
		"${COMMON_DIR}/socket.c"
		"${COMMON_DIR}/sql.c"
		"${COMMON_DIR}/strlib.c"
		"${COMMON_DIR}/timer.c"
		"${COMMON_DIR}/utils.c"
		CACHE INTERNAL "" FORCE
	)
	set( COMMON_LIBRARIES ${MYSQL_LIBRARIES}
						  ${ZLIB_LIBRARIES}
		CACHE INTERNAL "" FORCE
	)
	set( COMMON_INCLUDE_DIRS ${MYSQL_INCLUDE_DIRS}
					  ${ZLIB_INCLUDE_DIRS}
					  ${MT19937AR_INCLUDE_DIRS}
		CACHE INTERNAL "" FORCE
	)

	message( STATUS "Creating target common - done" )
else()
	message( STATUS "Creating target common - failed" )
	message( FATAL_ERROR "Failed to create target common (requires ZLIB and MYSQL)" )
endif()