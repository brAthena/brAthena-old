/**=======================================================================*
 *               _           _   _   _                                    *
 *              | |__  _ __ / \ | |_| |__   ___ _ __   __ _               *
 *              | '_ \| '__/ _ \| __| '_ \ / _ \ '_ \ / _` |              *
 *              | |_) | | / ___ \ |_| | | |  __/ | | | (_| |              *
 *              |_.__/|_|/_/   \_\__|_| |_|\___|_| |_|\__,_|              *
 *                                                                        *
 *------------------------------------------------------------------------*
 * Copyright (c) 2012 brAthena Dev Team - <http://www.brathena.org/>      *
 *                   brAthena Source Configuration                        *
 *                                                                        *
 * Description: Common standard configurations of source code values.     *
 *=======================================================================**/

#ifndef BRATHENAPP_H
#define BRATHENAPP_H

/*========================================================================*
 *                                                                        *
 *                brAthena++ General Configurations                       *
 *                                                                        *
 *========================================================================*/
 
// Enable use the NoSQL Databases?
// Tip: Enable this if you want increase perfomance on your server,
// because they are faster then (R)SGBDs databases, like MySQL and PostgreSQL
// Default: 1
#define BRATHENAPP_USE_NOSQL 1

// Enable the SHA2 512 Bits password encrypt?
// This increase your server security, but the database will be more
// larger then normal passwords (MD5).
// Default: 1
#define BRATHENAPP_USE_SHA2 1


/*========================================================================*
 *                                                                        *
 *                brAthena++ Account Modules                              *
 *                                                                        *
 *========================================================================*/
// Minimal username length
// If value 4, means: username >= 4 to be valid
// ATT: You need check your hexed too
// Default: 4
#define MINIMAL_USERNAME_LENGTH 4

// Minimal password length
// Default: 4
#define MINIMAL_PASSWORD_LENGTH 4


/*  TEMPORARY SOURCE CODE FOR ACCOUNT INFORMATIONS
  PLEASE: Hereafter remove this configuration, because need be loaded by configuration files
*/
#define MYSQL_SERVER 'localhost'
#define MYSQL_USERNAME 'root'
#define MYSQL_PASSWORD 'root'
#define MYSQL_DATABASE 'brapp'
#define MYSQL_PORT 0 // This load the default port

#endif //#ifndef BRATHENAPP_H