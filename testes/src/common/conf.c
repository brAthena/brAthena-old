/****************************************************************************!
*                _           _   _   _                                       *    
*               | |__  _ __ / \ | |_| |__   ___ _ __   __ _                  *  
*               | '_ \| '__/ _ \| __| '_ \ / _ \ '_ \ / _` |                 *   
*               | |_) | | / ___ \ |_| | | |  __/ | | | (_| |                 *    
*               |_.__/|_|/_/   \_\__|_| |_|\___|_| |_|\__,_|                 *    
*                                                                            *
*                                                                            *
* \file src/common/conf.c                                                    *
* Descrição Primária.                                                        *
* Descrição mais elaborada sobre o arquivo.                                  *
* \author brAthena                                                           *
* \date ?                                                                    *
* \todo ?                                                                    *   
*****************************************************************************/ 

#include "conf.h"
#include "libconfig.h"

#include "../common/showmsg.h" // ShowError
#include <string.h> // read_message

static char lang_file[256] = "conf/lang/pt_br.conf"; // default pt-br
static int next_ptr = 0;

int conf_read_file(config_t *config, const char *config_filename)
{
	config_init(config);
	if(!config_read_file(config, config_filename)) {
		ShowError("%s:%d - %s\n", config_error_file(config),
		          config_error_line(config), config_error_text(config));
		config_destroy(config);
		return 1;
	}
	return 0;
}

//
// Functions to copy settings from libconfig/contrib
//
static void config_setting_copy_simple(config_setting_t *parent, const config_setting_t *src);
static void config_setting_copy_elem(config_setting_t *parent, const config_setting_t *src);
static void config_setting_copy_aggregate(config_setting_t *parent, const config_setting_t *src);
int config_setting_copy(config_setting_t *parent, const config_setting_t *src);

void config_setting_copy_simple(config_setting_t *parent, const config_setting_t *src)
{
	if(config_setting_is_aggregate(src)) {
		config_setting_copy_aggregate(parent, src);
	} else {
		config_setting_t *set = config_setting_add(parent, config_setting_name(src), config_setting_type(src));

		if(set == NULL)
			return;

		if(CONFIG_TYPE_INT == config_setting_type(src)) {
			config_setting_set_int(set, config_setting_get_int(src));
			config_setting_set_format(set, src->format);
		} else if(CONFIG_TYPE_INT64 == config_setting_type(src)) {
			config_setting_set_int64(set, config_setting_get_int64(src));
			config_setting_set_format(set, src->format);
		} else if(CONFIG_TYPE_FLOAT == config_setting_type(src)) {
			config_setting_set_float(set, config_setting_get_float(src));
		} else if(CONFIG_TYPE_STRING == config_setting_type(src)) {
			config_setting_set_string(set, config_setting_get_string(src));
		} else if(CONFIG_TYPE_BOOL == config_setting_type(src)) {
			config_setting_set_bool(set, config_setting_get_bool(src));
		}
	}
}

void config_setting_copy_elem(config_setting_t *parent, const config_setting_t *src)
{
	config_setting_t *set = NULL;

	if(config_setting_is_aggregate(src))
		config_setting_copy_aggregate(parent, src);
	else if(CONFIG_TYPE_INT == config_setting_type(src)) {
		set = config_setting_set_int_elem(parent, -1, config_setting_get_int(src));
		config_setting_set_format(set, src->format);
	} else if(CONFIG_TYPE_INT64 == config_setting_type(src)) {
		set = config_setting_set_int64_elem(parent, -1, config_setting_get_int64(src));
		config_setting_set_format(set, src->format);
	} else if(CONFIG_TYPE_FLOAT == config_setting_type(src)) {
		config_setting_set_float_elem(parent, -1, config_setting_get_float(src));
	} else if(CONFIG_TYPE_STRING == config_setting_type(src)) {
		config_setting_set_string_elem(parent, -1, config_setting_get_string(src));
	} else if(CONFIG_TYPE_BOOL == config_setting_type(src)) {
		config_setting_set_bool_elem(parent, -1, config_setting_get_bool(src));
	}
}

void config_setting_copy_aggregate(config_setting_t *parent, const config_setting_t *src)
{
	config_setting_t *newAgg;
	int i, n;

	newAgg = config_setting_add(parent, config_setting_name(src), config_setting_type(src));

	if(newAgg == NULL)
		return;

	n = config_setting_length(src);

	for(i = 0; i < n; i++) {
		if(config_setting_is_group(src)) {
			config_setting_copy_simple(newAgg, config_setting_get_elem(src, i));
		} else {
			config_setting_copy_elem(newAgg, config_setting_get_elem(src, i));
		}
	}
}

int config_setting_copy(config_setting_t *parent, const config_setting_t *src)
{
	if(!config_setting_is_group(parent) && !config_setting_is_list(parent))
		return CONFIG_FALSE;

	if(config_setting_is_aggregate(src)) {
		config_setting_copy_aggregate(parent, src);
	} else {
		config_setting_copy_simple(parent, src);
	}
	return CONFIG_TRUE;
}

// ----------------------------------------------------------------------------------------
// Sistema Multilinguagem
// ----------------------------------------------------------------------------------------
// read_message("Grupo.SubGrupo.String");
// ----------------------------------------------------------------------------------------
// http://www.hyperrealm.com/libconfig/libconfig_manual.html
// ----------------------------------------------------------------------------------------
char *read_message(const char *param)
{
	config_setting_t *str;
	config_t configLang;
	int get_ptr = 0;
	
	for(; get_ptr < next_ptr; ++get_ptr)
		if(!strcmp(param, serverlang[get_ptr].group))
			return serverlang[get_ptr].string;

	config_init(&configLang);

	if(!config_read_file(&configLang, lang_file)) {
		ShowError("read_message erro: %s:%d - %s\n", config_error_file(&configLang), config_error_line(&configLang), config_error_text(&configLang));
		config_destroy(&configLang);
		return "";
	}

	if(!(str = config_lookup(&configLang, param))) {
		ShowError("read_message erro: %s:%d - %s\n", config_error_file(&configLang), config_error_line(&configLang), config_error_text(&configLang));
		config_destroy(&configLang);
		return "";
	}

	strncpy(serverlang[next_ptr].group, param, sizeof((*serverlang).group));
	strncpy(serverlang[next_ptr].string, config_setting_get_string(str), sizeof((*serverlang).string));
	++next_ptr;
	
	config_destroy(&configLang);
	return serverlang[next_ptr-1].string;
}

void read_server_lang(void)
{
	const char *tmpvar = "conf/battle/brathena.conf";
	config_t configFile;

	config_init(&configFile);

	if(!config_read_file(&configFile, tmpvar) || !config_lookup_string(&configFile, "lang_file", &tmpvar)) {
		ShowError("read_server_lang erro: %s:%d - %s\n", config_error_file(&configFile), config_error_line(&configFile), config_error_text(&configFile));
		config_destroy(&configFile);
	}

	snprintf(lang_file, sizeof(lang_file), "%s", tmpvar);
	config_destroy(&configFile);
}
