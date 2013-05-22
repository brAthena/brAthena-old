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

/*==========================================
 * [brAthena] retorna um ID de item randômico especial;
 *==========================================*/
BUILDIN_FUNC(grouprandomitem2)
{
	struct script_data *data = script_getdata(st, 2);
	struct item_group2 *ig;
	int group;
	get_val(st, data);
	group = conv_num(st, data);
	if(!(ig = itemdb_searchrandgroup2(group))) {
		ShowError("buildin_grouprandomitem2: Grupo de itens inválido %d\n", group);
		return 1;
	}
	script_pushint(st, ig->item[rnd() % ig->qty].nameid);
	return 0;
}

/*==========================================
 * [brAthena] retorna uma quantidade aleatória de um item randômico especial;
 *==========================================*/
BUILDIN_FUNC(grouprandomquantity2)
{
	struct script_data *data = script_getdata(st, 3);
	struct item_group2 *ig;
	int group, nameid, i, qt[2];
	get_val(st, data);
	group = conv_num(st, data);
	if(!(ig = itemdb_searchrandgroup2(group))) {
		ShowError("buildin_grouprandomquantity2: Grupo de itens inválido %d\n", group);
		return 1;
	}
	data = script_getdata(st, 2);
	get_val(st, data);
	nameid = conv_num(st, data);
	if(!itemdb_exists(nameid)) {
		ShowError("buildin_grouprandomquantity2: Item de ID %d inexistente\n", nameid);
		return 1;
	}
	ARR_FIND(0, ig->qty, i, ig->item[i].nameid == nameid);
	if(i >= ig->qty) {
		ShowError("buildin_grouprandomquantity2: Item %d inexistente no grupo %d\n", nameid, group);
		return 1;
	}
	qt[0] = ig->item[i].qt[0];
	qt[1] = ig->item[i].qt[1];
	script_pushint(st, rnd() % (qt[1] - qt[0] + 1) + qt[0]);
	return 0;
}

/*================================
 *  [brAthena] ignora a leitura de um NPC específico;
 *================================ */
BUILDIN_FUNC(unloadnpc)
{
	struct npc_data *nd;

	if(!(nd = npc_name2id(script_getstr(st,2))))
		return 1;

	npc_unload(nd, true);
	npc_unload_duplicates(nd);
	return 0;
}

/*================================
 *  [brAthena] recalla um jogador do grupo ou clã para as cordenadas do jogador;
 *================================ */
BUILDIN_FUNC(recall)
{
	struct map_session_data *sd_,*sd = script_rid2sd(st);
	struct s_mapiterator *iter;
	struct party_data *p = party_search(sd->status.party_id);
	struct guild *g = guild_search(sd->status.guild_id);
	const char *type = script_getstr(st,2);
	int c = 0, quant = 0;

	iter = mapit_getallusers();
      
	if((!(strcmp(type,"party") == 0) && !(strcmp(type,"guild") == 0)) || (((strcmp(type,"party") == 0) && !p) || ((strcmp(type,"guild") == 0) && !g)))
	return 0;

	if(script_hasdata(st,3))
	quant = script_getnum(st,3);

	for( sd_ = (TBL_PC *)mapit_first(iter); script_hasdata(st,3) ? mapit_exists(iter) && c < (quant+1) : mapit_exists(iter); sd_ = (TBL_PC *)mapit_next(iter), script_hasdata(st,3) ? c++ : 0) { 
		if((sd->status.account_id != sd_->status.account_id) && (((strcmp(type,"party") == 0) && sd_->status.party_id == sd->status.party_id) || ((strcmp(type,"guild") == 0) && sd_->status.guild_id == sd->status.guild_id))) {
       
		if((sd_->bl.m == sd->bl.m) && (sd_->bl.x == sd->bl.x) && (sd_->bl.y == sd->bl.y))
		continue;

		pc_setpos(sd_,sd->mapindex,sd->bl.x,sd->bl.y, CLR_RESPAWN);
		}
	}

	mapit_free(iter);
	return 0;
}