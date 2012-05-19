--
-- Estrutura para a tabela `elemental_db`
--

CREATE TABLE IF NOT EXISTS `elemental_db` (
	`ElementalID` smallint(6) unsigned NOT NULL default '0',
	`SprName` varchar(24) NOT NULL default '0',
	`Name` varchar(24) NOT NULL default '0',
	`Level` smallint(6) unsigned NOT NULL default '0',
	`HP` int(11) unsigned NOT NULL default '0',
	`SP` tinyint(2) unsigned NOT NULL default '0',
	`Area1` tinyint(2) unsigned NOT NULL default '0',
	`ATK1` tinyint(2) unsigned NOT NULL default '0',
	`ATK2` tinyint(2) unsigned NOT NULL default '0',
	`DEF` smallint(5) unsigned NOT NULL default '0',
	`MDEF` smallint(5) unsigned NOT NULL default '0',
	`FOR` smallint(5) unsigned NOT NULL default '0',
	`AGI` smallint(5) unsigned NOT NULL default '0',
	`VIT` smallint(5) unsigned NOT NULL default '0',
	`INT` smallint(5) unsigned NOT NULL default '0',
	`DES` smallint(5) unsigned NOT NULL default '0',
	`SOR` smallint(5) unsigned NOT NULL default '0',
	`Area2` smallint(5) unsigned NOT NULL default '0',
	`Area3` smallint(5) unsigned NOT NULL default '0',
	`Tamanho` smallint(5) unsigned NOT NULL default '0',
	`Raça` smallint(5) unsigned NOT NULL default '0',
	`Elemento` smallint(5) unsigned NOT NULL default '0',
	`Velocidade` smallint(5) unsigned NOT NULL default '0',
	`aDelay` smallint(5) unsigned NOT NULL default '0',
	`aMotion` smallint(5) unsigned NOT NULL default '0',
	`dMotion` smallint(5) unsigned NOT NULL default '0',
	PRIMARY KEY (`ElementalID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Elementais.
# Descrição: Responsável pelo banco de dados de elementais.
# Cabeçalho: REPLACE INTO `homunculus_db` VALUES ('ID','Nome_do_Sprite','Nome,Level','HP','SP','Área1','ATK1','ATK2','DEF','MDEF',
# 'FOR','AGI','VIT','INT','DES','SOR','Área2','Área3','Tamanho','Raça','Elemento','Velocidade','aDelay','aMotion','dMotion');
# 

REPLACE INTO `elemental_db` VALUES (2114,EL_AGNI_S,Agni,100,5000,1,1,100,100,10,10,1,1,1,1,1,1,5,12,0,0,83,200,504,1020,360);
REPLACE INTO `elemental_db` VALUES (2115,EL_AGNI_M,Agni,100,7500,1,1,250,250,25,25,1,1,1,1,1,1,5,12,1,0,83,200,504,1020,360);
REPLACE INTO `elemental_db` VALUES (2116,EL_AGNI_L,Agni,100,10000,1,1,500,500,50,50,1,1,1,1,1,1,5,12,2,0,83,200,504,1020,360);
REPLACE INTO `elemental_db` VALUES (2117,EL_AQUA_S,Varuna,100,5000,1,1,100,100,10,10,1,1,1,1,1,1,5,12,0,0,81,200,504,1020,360);
REPLACE INTO `elemental_db` VALUES (2118,EL_AQUA_M,Varuna,100,7500,1,1,250,250,25,25,1,1,1,1,1,1,5,12,1,0,81,200,504,1020,360);
REPLACE INTO `elemental_db` VALUES (2119,EL_AQUA_L,Varuna,100,10000,1,1,500,500,50,50,1,1,1,1,1,1,5,12,2,0,81,200,504,1020,360);
REPLACE INTO `elemental_db` VALUES (2120,EL_VENTUS_S,Vayu,100,5000,1,4,100,100,10,10,1,1,1,1,1,1,5,12,0,0,84,200,504,1020,360);
REPLACE INTO `elemental_db` VALUES (2121,EL_VENTUS_M,Vayu,100,7500,1,4,250,250,25,25,1,1,1,1,1,1,5,12,1,0,84,200,504,1020,360);
REPLACE INTO `elemental_db` VALUES (2122,EL_VENTUS_L,Vayu,100,10000,1,4,500,500,50,50,1,1,1,1,1,1,5,12,2,0,84,200,504,1020,360);
REPLACE INTO `elemental_db` VALUES (2123,EL_TERA_S,Chandra,100,5000,1,1,100,100,10,10,1,1,1,1,1,1,5,12,0,0,82,200,504,1020,360);
REPLACE INTO `elemental_db` VALUES (2124,EL_TERA_M,Chandra,100,7500,1,1,250,250,25,25,1,1,1,1,1,1,5,12,1,0,82,200,504,1020,360);
REPLACE INTO `elemental_db` VALUES (2125,EL_TERA_L,Chandra,100,10000,1,1,500,500,50,50,1,1,1,1,1,1,5,12,2,0,82,200,504,1020,360);