# Copyright (c) brAthena Dev Team - Licensed under GNU GPL
# For more information, see LICENSE in the main folder

# -----------------------------------------------------------------------------
# Configure the msinttypes
#
# The microsoft Visual C++ doesn't support the stdint.h and inttypes.h, so we
# need to add it.
if( MSVC )
	set_property( CACHE GLOBAL_INCLUDE_DIRS PROPERTY VALUE
		${CMAKE_CURRENT_SOURCE_DIR}/msinttypes/include
	)
endif()


# -----------------------------------------------------------------------------
# Look for mt19937ar

# Add the mt19937ar headers and compile it
add_subdirectory( mt19937ar )

# -----------------------------------------------------------------------------
# Look for MySQL

# Configure the prefix path to search first in our dependency folder
set( CMAKE_PREFIX_PATH ${CMAKE_CURRENT_SOURCE_DIR}/mysql
					   ${CMAKE_CURRENT_SOURCE_DIR}/mysql/lib
					   ${CMAKE_CURRENT_SOURCE_DIR}/mysql/include
					   ${CMAKE_PREFIX_PATH}
)

# Then, search for PCRE
find_package( MYSQL REQUIRED ) # REMOVE THE REQUIRED WHEN ADDING SQLITE SUPPORT

# Now, add zlib to the global namespace...
set( MYSQL_FOUND ${MYSQL_FOUND} CACHE INTERNAL "" FORCE )
set( MYSQL_INCLUDE_DIRS ${MYSQL_INCLUDE_DIRS} CACHE INTERNAL "" FORCE )
set ( MYSQL_LIBRARIES ${MYSQL_LIBRARIES} CACHE INTERNAL "" FORCE )

# -----------------------------------------------------------------------------
# Look for PCRE

# Configure the prefix path to search first in our dependency folder
set( CMAKE_PREFIX_PATH ${CMAKE_CURRENT_SOURCE_DIR}/pcre
					   ${CMAKE_CURRENT_SOURCE_DIR}/pcre/lib
					   ${CMAKE_CURRENT_SOURCE_DIR}/pcre/include
					   ${CMAKE_PREFIX_PATH}
)

# Then, search for PCRE
find_package( PCRE )

# Now, add PCRE to the global namespace...
set( PCRE_FOUND ${PCRE_FOUND} CACHE INTERNAL "" FORCE )
set( PCRE_INCLUDE_DIRS ${PCRE_INCLUDE_DIRS} CACHE INTERNAL "" FORCE )
set ( PCRE_LIBRARIES ${PCRE_LIBRARIES} CACHE INTERNAL "" FORCE )

# -----------------------------------------------------------------------------
# Look for ZLIB

# Configure the prefix path to search first in our dependency folder
set( CMAKE_PREFIX_PATH ${CMAKE_CURRENT_SOURCE_DIR}/zlib
					   ${CMAKE_CURRENT_SOURCE_DIR}/zlib/lib
					   ${CMAKE_CURRENT_SOURCE_DIR}/zlib/include
					   ${CMAKE_PREFIX_PATH}
)

# Then, search for zlib
find_package( ZLIB )

# Now, add zlib to the global namespace...
set( ZLIB_FOUND ${ZLIB_FOUND} CACHE INTERNAL "" FORCE )
set( ZLIB_INCLUDE_DIRS ${ZLIB_INCLUDE_DIRS} CACHE INTERNAL "" FORCE )
set( ZLIB_LIBRARIES ${ZLIB_LIBRARIES} CACHE INTERNAL "" FORCE )