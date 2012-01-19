/**
 * @file source/account/Account.h
 * @author Bruno Alano
 *
 * brAthena++ Account Model
 *
 * This file creates the object model accounts on the server. He is responsible for all control
 * of the data contained therein, such as CRUD operations and some details that are necessary to 
 * more complex.
 *
 * This model works only with the MySQL, but the other datas are in a NoSQL type
 * database.
 *
 * The password uses SHA2 512 Bits, but receive a MD5 password from Hexed. This encrypt the
 * MD5 password in SHA2.
 *
 * @todo Add more usual functions, like: getGmLevel, getLastLogin and more
 */
 
// ----------------------------------------------------------------------------
// -                                                                          -
// -                                Headers                                   -
// -                                                                          -
// ----------------------------------------------------------------------------
// Standard Library (STD)
// --------------------------------------------------------
#include <string>
#include <ctime>
#include <iostream>
#include <sstream>

// brAthena++ Headers
// --------------------------------------------------------
#include <brathenapp.h>
#include <account/Account.h>

// Sundry Framework Headers
// --------------------------------------------------------
#include <sundry/posix/stdint.h>

// MySQL C API
// --------------------------------------------------------
#include <mysql.h>

// ----------------------------------------------------------------------------
// -                                                                          -
// -                             Source Code                                  -
// -                                                                          -
// ----------------------------------------------------------------------------

/**
 * Account Class Constructor
 *
 * Stores the all data about the accounts. Create functions to get
 * friendly informations
 *
 * @ingroup account
 * @param username Account username
 * @param password Account password
 * @param userIp   Account current ip address
 */
brathenapp::account::Account::Account ( std::string username, std::string password, ip userIp )
{
	// Send the paramters to the class fields
	this->username = username;
	this->password = password;
	this->userIp = userIp;
}

bool brathenapp::account::Account::verifyData ( void )
{
	if ( this->username >= MINIMAL_USERNAME_LENGTH && this->password >= MINIMAL_PASSWORD_LENGTH )
		return true;
		
	return false;
}

bool brathenapp::account::Account::verifyUser ( void )
{
	// Initialize the MySQL Connection
	this->connection = mysql_init ( NULL );
	
	// Check for errors
	if ( this->connection == NULL )
	{
		std::cerr << "[ERROR] MySQL out of memory. #3021" << std::endl;
		exit ( 1 );
	}
	
	// Create the connection configuration
	// and verify
	if ( mysql_real_connect (
		this->conn,
		MYSQL_SERVER,
		MYSQL_USERNAME,
		MYSQL_PASSWORD,
		MYSQL_DATABASE,
		MYSQL_PORT,
		NULL,
		0
	) == NULL )
	{
		std::cerr << "[ERROR] Cannot connect with the MySQL server. #3022" << std::endl;
		exit ( 1 );
	}
	
	// Build the query
	std::ostringstream queryBuild;
	queryBuild << "SELECT id, username, password FROM users WHERE "
			<< "username = '" << this->username
			<< "' AND "
			<< "password = '" << this->password
			<< "' LIMIT 1";
			
	std::string query ( queryBuild.str() );
	
	// Run the query
	if ( mysql_query ( this->connection, query.c_str() ) != 0 )
		return false;
		
	return true;
	
	// Closes the connection
	mysql_close ( this->connection );
	
