/*========================================================================*
 *               _           _   _   _                                    *
 *              | |__  _ __ / \ | |_| |__   ___ _ __   __ _               *
 *              | '_ \| '__/ _ \| __| '_ \ / _ \ '_ \ / _` |              *
 *              | |_) | | / ___ \ |_| | | |  __/ | | | (_| |              *
 *              |_.__/|_|/_/   \_\__|_| |_|\___|_| |_|\__,_|              *
 *                                                                        *
 *------------------------------------------------------------------------*
 * Copyright (c) 2012 brAthena Dev Team - <http://www.brathena.org/>      *
 * Account Headers - Initial structure created by Protimus.               *
 *                                                                        *
 *========================================================================*/   

#include "Common.h"
#include <string>

class Account
{
    public:
        Account();
        ~Account();

        int Create(std::string username, std::string password);
        int ChangeUsername(uint32 account_id, std::string new_username, std::string new_password);
        int ChangePassword(uint32 account_id, std::string new_password);

        uint32 Id(std::string username);
};


/* falta adicionar
sex;              
email;         
level;              
state;     
unban_time;      
expiration_time; 
last_login;     
last_ip;       
birth_date; */