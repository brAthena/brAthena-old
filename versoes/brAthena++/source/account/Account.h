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

// brAthena++ Headers
// --------------------------------------------------------
#include <brathenapp.h>

// Sundry Framework Headers
// --------------------------------------------------------
#include <sundry/posix/stdint.h>

// MySQL C API
// --------------------------------------------------------
#include <mysql.h>


// Only one include
#ifndef BRATHENAPP_ACCOUNT_H
#define BRATHENAPP_ACCOUNT_H 

// --------------------------------------------------------
// Custom data types
// --------------------------------------------------------
#if BRATHENAPP_USE_IPv6
typedef uint64_t ip;
#else
typedef uint32_t ip;
#endif
// --------------------------------------------------------

/** @name brathenapp
 *  brAthena++ namespace
 */
//@{
namespace brathenapp
	/** @name account
	 *  Account namespace
	 */
	namespace account
	{
		/**
		 * Account Class
		 *
		 * Stores the all data about the accounts. Create functions to get
		 * friendly informations
		 */
		 class Account
		 {
		 private:
		 	/// Stores the class instances.
		 	static uint16_t instances;
		 protected:
		 	/// Stores the account username
		 	std::string username;
		 	
		 	/// Stores the account password
		 	std::string password;
		 	
		 	/// Stores the IP
		 	ip userIp;
		 	
		 	/// MySQL Connection Object
		 	MYSQL *connection;
		 public:
		 	Account ( std::string username, std::string password, ip userIp );
		 	
		 	// Not implemented yet!
		 	// Account &getObject ( Account object );
		 	
		 	bool verifyData ( void );
		 	bool verifyUser ( void );
		 	
		 	int     getId ( void );
		 	char    *getUsername ( void );
		 	char    *getPassword ( void );
		 	ip      getIp ( void );
		 	char    *getEmail ( void );
		 	time_t  getLastLogin ( void );
		 	
		 };
	} //@}
} //@}

#endif //#ifndef BRATHENAPP_ACCOUNT_H
