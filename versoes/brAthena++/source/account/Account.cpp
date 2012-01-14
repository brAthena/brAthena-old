/*========================================================================*
 *               _           _   _   _                                    *
 *              | |__  _ __ / \ | |_| |__   ___ _ __   __ _               *
 *              | '_ \| '__/ _ \| __| '_ \ / _ \ '_ \ / _` |              *
 *              | |_) | | / ___ \ |_| | | |  __/ | | | (_| |              *
 *              |_.__/|_|/_/   \_\__|_| |_|\___|_| |_|\__,_|              *
 *                                                                        *
 *------------------------------------------------------------------------*
 * Copyright (c) 2012 brAthena Dev Team - <http://www.brathena.org/>      *
 * Account Database Connectors - Initial structure created by Protimus.   *
 *                                                                        *
 *========================================================================*/   

#include "Account.h"
//#include "database/??.h"
//#include "inter/??.h"
//#include "sha512.h"


/* Checks for get account ID in database. */

uint32 Account::ID(std::string username)
{
    accountDatabase.escape_string(username);

    QueryResult *result = accountDatabase.Query("SELECT `id` FROM `account` WHERE UPPER(`username`)=UPPER('%s')", username.c_str());
    if(!result)
        return 0;
    else
    {
        uint32 id = (*result)[0].GetUInt32();
        delete result;
        return id;
    }
}

/* Create an accoun and checks your authenticity.
 MAX Characteres:
 Encryption in databases with SHA512 */

int Account::Create(std::string username, std::string password)
{
    if(username.length() > 10) // Check if the username is too long.
        return 1;                                          

    accountDatabase.escape_string(username);
    QueryResult *result = accountDatabase.Query("SELECT 1 FROM `account` WHERE `username`='%s'", username.c_str());
    if(result)  // Check if the username already exists.
    {
        delete result;
        return 2;                                         
    }

    accountDatabase.escape_string(password);

    if(!accountDatabase.Execute("INSERT INTO `account`(`username`,`I`,`joindate`) VALUES('%s',SHA512(CONCAT(UPPER('%s'),':',UPPER('%s'))),NOW())", username.c_str(), username.c_str(), password.c_str()))
        return -1;                                         

    return 0;                                              
}

/* Change usernamed and password of an account. */

int Account::ChangeUsername(uint32 account_id, std::string new_username, std::string new_passwd)
{
    QueryResult *result = accountDatabase.Query("SELECT 1 FROM `account` WHERE `id`='%d'", account_id);
    if(!result) // Check if the account exist
        return 1;                                           
    delete result;

    accountDatabase.escape_string(new_username);
    accountDatabase.escape_string(new_password);
    if(!accountDatabase.Execute("UPDATE `account` SET `username`='%s',`I`=SHA512(CONCAT(UPPER('%s'),':',UPPER('%s'))) WHERE `id`='%d'", new_username.c_str(), new_username.c_str(), new_password.c_str(), account_id))
        return -1;                                          

    return 0;
}

int Account::ChangePassword(uint32 account_id, std::string new_password)
{
    QueryResult *result = accountDatabase.Query("SELECT 1 FROM `account` WHERE `id`='%d'", account_id);
    if(!result) // Check if the account exist
    delete result;
        return 1;                                           

    accountDatabase.escape_string(new_password);
    if(!accountDatabase.Execute("UPDATE `account` SET `I`=SHA512(CONCAT(UPPER(`username`),':',UPPER('%s'))) WHERE `id`='%d'", new_password.c_str(), account_id))
        return -1;                                         

    return 0;
}