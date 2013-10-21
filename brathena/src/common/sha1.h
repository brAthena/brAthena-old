/****************************************************************************!
*                _           _   _   _                                       *
*               | |__  _ __ / \ | |_| |__   ___ _ __   __ _                  *
*               | '_ \| '__/ _ \| __| '_ \ / _ \ '_ \ / _` |                 *
*               | |_) | | / ___ \ |_| | | |  __/ | | | (_| |                 *
*               |_.__/|_|/_/   \_\__|_| |_|\___|_| |_|\__,_|                 *
*                                                                            *
*                                                                            *
* \file src/common/sha1.c                                                    *
* Criptografia SHA1                                                          *
* Considerado melhor que o md5, SHA1 tem um algoritmo de 160bits permitindo  *
* maior segurança de senhas e arquivos.                                      *
* \author brAthena                                                           *
* \date 10/07/2013                                                           *
*****************************************************************************/

#ifndef _SHA1_H_
#define _SHA1_H_

#include <stdio.h>
#include <string.h>
#ifndef _WIN32
#include <openssl/sha.h>
#else
 /* win lib */
#endif

/// Macros SHA1 [brAthena]
/// @sha1_encypt(string, output); // cria um hash de 160bits na string e retorna criptografada.
/// @sha1_tobuf(buf, temp);       // aloca valores temporarios de um hash

#define sha1_encypt(str, output) SHA1((unsigned char *)(str), strlen((str)), (output))
#define sha1_tobuf(buf, temp) for((i) = 0;(i) < SHA_DIGEST_LENGTH;(i)++) sprintf(&buf[i*2], "%02x", temp[i]);

#endif
