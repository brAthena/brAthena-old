# Copyright (c) brAthena Dev Team - Licensed under GNU GPL
# For more information, see LICENSE in the main folder
#
# - Try to find the visual studio library and include paths.
# Once done, this will define:
# VS_PATHS_FOUND			- Do not try to add VS_PATHS_* if this is false.
# VS_PATHS_INCLUDE_DIRS 	- The include directories of Visual Studio.
# VS_PATHS_LIBRARY_PATHS 	- The library directories of Visual Studio.
#
# Add them to ${CMAKE_INCLUDE_PATH} and ${CMAKE_LIBRARY_PATH}, respectively.

if( MSVC11 )
    get_filename_component( VS_PATH
		[HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\VisualStudio\\11.0\\Setup\\VS;ProductDir]
		REALPATH CACHE )
elseif( MSVC10 )
    get_filename_component( VS_PATH
		[HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\VisualStudio\\10.0\\Setup\\VS;ProductDir]
		REALPATH CACHE )
elseif( MSVC90 )
    get_filename_component( VS_PATH
		[HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\VisualStudio\\9.0\\Setup\\VS;ProductDir]
		REALPATH CACHE )
elseif( MSVC80 )
    get_filename_component( VS_PATH
		[HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\VisualStudio\\8.0\\Setup\\VS;ProductDir]
		REALPATH CACHE )
elseif( MSVC71 )
    get_filename_component( VS_PATH
		[HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\VisualStudio\\7.1\\Setup\\VS;ProductDir]
		REALPATH CACHE )
elseif( MSVC70 )
    get_filename_component( VS_PATH
		[HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\VisualStudio\\7.0\\Setup\\VS;ProductDir]
		REALPATH CACHE )
elseif( MSVC60 )
    get_filename_component( VS_PATH
		[HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\VisualStudio\\6.0\\Setup\\VS;ProductDir]
		REALPATH CACHE )
elseif( MSVC )
	message( SEND_ERROR "Could not identify the Visual C++ version you are using." )
endif()

set( VS_PATHS_INCLUDE_DIR "${VS_PATH}/VC/include" )
set( VS_PATHS_LIBRARY_DIR "${VS_PATH}/VC/lib" )

set( VS_PATHS_INCLUDE_DIR_EXISTS "" )
set( VS_PATHS_LIBRARY_DIR_EXISTS "" )

if( EXISTS ${VS_PATHS_INCLUDE_DIR} )
	set( VS_PATHS_INCLUDE_DIR_EXISTS TRUE )
endif()

if( EXISTS ${VS_PATHS_LIBRARY_DIR} )
	set( VS_PATHS_LIBRARY_DIR_EXISTS TRUE )
endif()

include( FindPackageHandleStandardArgs )
# Handle the QUIETLY and REQUIRED arguments and set VS_PATHS_FOUND to TRUE
# if all listed variables are TRUE.
find_package_handle_standard_args( VS_PATHS DEFAULT_MSG
								   VS_PATH
								   VS_PATHS_INCLUDE_DIR_EXISTS
								   VS_PATHS_LIBRARY_DIR_EXISTS )

set( VS_PATHS_INCLUDE_DIRS ${VS_PATHS_INCLUDE_DIR} )
set( VS_PATHS_LIBRARY_DIRS ${VS_PATHS_LIBRARY_DIR} )

mark_as_advanced( VS_PATH
				  VS_PATHS_INCLUDE_DIR
				  VS_PATHS_LIBRARY_DIR
				  VS_PATHS_INCLUDE_DIR_EXISTS
				  VS_PATHS_LIBRARY_DIR_EXISTS
				  VS_PATHS_INCLUDE_DIRS
				  VS_PATHS_LIBRARY_DIRS )
