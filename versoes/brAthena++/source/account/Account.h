/**=======================================================================*
 *               _           _   _   _                                    *
 *              | |__  _ __ / \ | |_| |__   ___ _ __   __ _               *
 *              | '_ \| '__/ _ \| __| '_ \ / _ \ '_ \ / _` |              *
 *              | |_) | | / ___ \ |_| | | |  __/ | | | (_| |              *
 *              |_.__/|_|/_/   \_\__|_| |_|\___|_| |_|\__,_|              *
 *                                                                        *
 *------------------------------------------------------------------------*
 * Copyright (c) 2012 brAthena Dev Team - <http://www.brathena.org/>      *
 * Account Database Headers - Initial structure created by Bruno Alano.   *
 *                                                                        *
 * Description: Account headers for operation of account codes.           *
 *=======================================================================**/
 
/*========================================================================*
 *                                                                        *
 *                                Headers                                 *
 *                                                                        *
 *========================================================================*/
 
// Standard Library (STD)
// --------------------------------------------------------
#include <string>
#include <ctime>

// brAthena++ Headers
// --------------------------------------------------------
#include <common/brathenapp.h>

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