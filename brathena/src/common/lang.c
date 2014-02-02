/****************************************************************************!
*                _           _   _   _                                       *    
*               | |__  _ __ / \ | |_| |__   ___ _ __   __ _                  *  
*               | '_ \| '__/ _ \| __| '_ \ / _ \ '_ \ / _` |                 *   
*               | |_) | | / ___ \ |_| | | |  __/ | | | (_| |                 *    
*               |_.__/|_|/_/   \_\__|_| |_|\___|_| |_|\__,_|                 *    
*                                                                            *
*                                                                            *
* \file src/common/lang.c                                                    *
* Sistema Multilinguagem                                                     *
* Mensagens de console, npcs, itens e etc.                                   *
* \author brAthena, Athena                                                   *
* \date ?                                                                    *
* \todo ?                                                                    *  
*****************************************************************************/

#include "conf.h"
#include "libconfig.h"
#include "lang.h"
#include "showmsg.h"

#include <string.h>
#include <stdlib.h>

char *Source[] =
{
	"common",
	"map",
	"char",
	"login",
	"reuse"
};

char *Npcs[] =
{
	NULL
};

LANG lang_s[MAX_MESSAGES];

// ----------------------------------------------------------------------------------------
// Sistema Multilinguagem
// ----------------------------------------------------------------------------------------
// read_message("Grupo.SubGrupo.String");
// ----------------------------------------------------------------------------------------
// http://www.hyperrealm.com/libconfig/libconfig_manual.html
// ----------------------------------------------------------------------------------------
char *read_message(const char *param)
{
	static char message[512];
	config_setting_t *str;
	config_t configLang;

	config_init(&configLang);

	if(!config_read_file(&configLang, (!strlen(bra_config.lang_file)?"conf/lang/pt_br.conf":bra_config.lang_file))) {
		ShowError("read_message erro: %s:%d - %s\n", config_error_file(&configLang), config_error_line(&configLang), config_error_text(&configLang));
		config_destroy(&configLang);
		return "";
	}

	if(!(str = config_lookup(&configLang, param))) {
		ShowError("read_message erro: %s\n", param);
		config_destroy(&configLang);
		return "";
	}
	
	strncpy(message, config_setting_get_string(str), sizeof(message));
	config_destroy(&configLang);
	return message;
}

void copy_to_list(char *s1, char *s2, int index)
{
	if(index > MAX_MESSAGES) {
		ShowWarning("Limite de mensagens atingido.\n");
		return;
	}

	if(lang_s[index].group == NULL) {
		lang_s[index].group = s1;
		lang_s[index].mes = s2;
	}
}

int split_message(char ***ptr, char *str, char del)
{
	char *src = str, *end, *dst;
	char **arr;
	int size = 1, i;

	while((end = strchr(src, del)) != NULL) {
		++size;
		src = end + 1;
	}

	arr = malloc(size * sizeof(char *) + (strlen(str) + 1) * sizeof(char));

	src = str;
	dst = (char *) arr + size * sizeof(char *);
	for(i = 0; i < size; ++i) {
		if((end = strchr(src, del)) == NULL)
			end = src + strlen(src);
		arr[i] = dst;
		strncpy(dst, src, end - src);
		dst[end - src] = '\0';
		dst += end - src + 1;
		src = end + 1;
	}
	*ptr = arr;

	return size;
}

char *get_message(const char *param)
{
	char **split;
	int i;
	
	split_message(&split, (char *)param, '.');
	
	for(i = 0; lang_s[i].group != NULL; i++) {
		if(!strcmp(split[2], lang_s[i].group))
			break;
		++i;
	}
	
	return lang_s[i].mes;
}

void load_message_file_source(void)
{
#define ARRAYLENGTH(A) ( sizeof(A)/sizeof((A)[0]) )
	config_setting_t *main_group = NULL;
	config_t group_ext;
	int index=0;
	
	if (libconfig->read_file(&group_ext, bra_config.lang_file))
		return;
	
	memset(lang_s, 0, sizeof(LANG));
	
	if((main_group = config_lookup(&group_ext, "Source"))) {
		int i, h, k = 0, groups_count = libconfig->setting_length(main_group), group_count = 0;
		config_setting_t *group_ele;
		config_setting_t *groups;
		
		for(i = 0; i < groups_count; ++i) {
			group_ele = libconfig->setting_get_elem(main_group, i);

			while(k < ARRAYLENGTH(Source) && (groups = libconfig->setting_get_member(group_ele, Source[k]))) {
				group_count = config_setting_length(groups);

				for(h = 0; h < config_setting_length(groups); h++) {
					config_setting_t *group_e = libconfig->setting_get_elem(groups, h);

					copy_to_list((char *)config_setting_name(group_e), (char *)config_setting_get_string_elem(groups, h), index);
					index++;
				}
				k++;
			}
		}
	}
	
	ShowConf("Leitura de '"CL_WHITE"%d"CL_RESET"' mensagens em '"CL_WHITE"%s"CL_RESET"'.\n", index, bra_config.lang_file);
}
