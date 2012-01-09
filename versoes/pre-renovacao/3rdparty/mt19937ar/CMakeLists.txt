# Copyright (c) brAthena Dev Team - Licensed under GNU GPL
# For more information, see LICENSE in the main folder

# Add the mt19937ar headers
set( MT19937AR_INCLUDE_DIRS ${CMAKE_CURRENT_SOURCE_DIR} CACHE INTERNAL "" FORCE )

# Add the mt19937ar headers
set( MT19937AR_HEADERS "${CMAKE_CURRENT_SOURCE_DIR}/mt19937ar.h" CACHE INTERNAL "" FORCE )

# Add the mt19937ar sources
set( MT19937AR_SOURCES "${CMAKE_CURRENT_SOURCE_DIR}/mt19937ar.c" CACHE INTERNAL "" FORCE )


mark_as_advanced( MT19937AR_INCLUDE_DIRS
				  MT19937AR_SOURCES
				  MT19937AR_HEADERS
)