/****************************************************************************!
*                _           _   _   _                                       *
*               | |__  _ __ / \ | |_| |__   ___ _ __   __ _                  *
*               | '_ \| '__/ _ \| __| '_ \ / _ \ '_ \ / _` |                 *
*               | |_) | | / ___ \ |_| | | |  __/ | | | (_| |                 *
*               |_.__/|_|/_/   \_\__|_| |_|\___|_| |_|\__,_|                 *
*                                                                            *
*                                                                            *
* \file src/custom/commands.inc                                              *
* Arquivo de inclusão para comandos custumizados.                            *
* \author brAthena                                                           *
* \date 14/05/2013                                                           *
*****************************************************************************/

// Adicione comandos custumizados apartir daqui. ex:
// Lembre-se de defini-lo no arquivo commands_def.inc

ACMD_FUNC(meu_comando)
{
	clif_displaymessage(fd, "Testando comando.");
	return 0;
}
