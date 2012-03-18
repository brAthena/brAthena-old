# Copyright (c) brAthena Dev Team - Licensed under GNU GPL
# For more information, see LICENSE in the main folder

# Add the libconfig include dirs
set( LIBCONFIG_INCLUDE_DIRS ${CMAKE_CURRENT_SOURCE_DIR} CACHE INTERNAL "" FORCE )

# Add the libconfig sources
set( LIBCONFIG_SOURCES "${CMAKE_CURRENT_SOURCE_DIR}/grammar.c"
					   "${CMAKE_CURRENT_SOURCE_DIR}/libconfig.c"
					   "${CMAKE_CURRENT_SOURCE_DIR}/scanctx.c"
					   "${CMAKE_CURRENT_SOURCE_DIR}/scanner.c"
					   "${CMAKE_CURRENT_SOURCE_DIR}/strbuf.c" CACHE INTERNAL "" FORCE )

set( LIBCONFIG_FOUND 1 )

# Now, add libconfig to the global namespace...
set( LIBCONFIG_FOUND ${LIBCONFIG_FOUND} CACHE INTERNAL "" FORCE )
set( LIBCONFIG_INCLUDE_DIRS ${LIBCONFIG_INCLUDE_DIRS} CACHE INTERNAL "" FORCE )
set( LIBCONFIG_SOURCES ${LIBCONFIG_SOURCES} CACHE INTERNAL "" FORCE )

mark_as_advanced( LIBCONFIG_INCLUDE_DIRS
				  LIBCONFIG_SOURCES
				  LIBCONFIG_FOUND
)