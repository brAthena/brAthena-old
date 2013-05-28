/****************************************************************************!
*                _           _   _   _                                       *
*               | |__  _ __ / \ | |_| |__   ___ _ __   __ _                  *
*               | '_ \| '__/ _ \| __| '_ \ / _ \ '_ \ / _` |                 *
*               | |_) | | / ___ \ |_| | | |  __/ | | | (_| |                 *
*               |_.__/|_|/_/   \_\__|_| |_|\___|_| |_|\__,_|                 *
*                                                                            *
*                                                                            *
* \file src/custom/commands.inc                                              *
* Arquivo de inclusão para funções de scripts customizadas.                  *
* \author brAthena                                                           *
* \date 14/05/2013                                                           *
*****************************************************************************/

// Adicione suas fun??es apartir daqui. ex:
// Lembre-se de defini-lo no arquivo scripts_def.inc
BUILDIN_FUNC(minha_func)
{
	struct map_session_data *sd;
	if(!(sd=script_rid2sd(st)))
	return 0;

	script_pushstrcopy(st,sd->status.name); // Retorna o nome
	return 0;
}