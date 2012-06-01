--
-- Estrutura para a tabela `elemental_skill_db`
--

CREATE TABLE IF NOT EXISTS `elemental_skill_db` (
	`ElementalID` mediumint(9) unsigned NOT NULL default '0',
	`SkillID` mediumint(9) unsigned NOT NULL default '0',
	`SkillLevel` tinyint(4) unsigned NOT NULL default '0',
	`ReqMode` tinyint(4) unsigned NOT NULL default '0',
	PRIMARY KEY (`ElementalID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*
 Habilidades dos Elementais
 Descrição: Responsável pelo banco de dados de habilidades dos elementais.
 Cabeçalho: REPLACE INTO `elemental_skill_db` VALUES ('ID do Elemental','ID da Habilidade','Nível da Habilidade','Modo');          
*/ 

REPLACE INTO `elemental_skill_db` VALUES (2114,8413,1,1);
REPLACE INTO `elemental_skill_db` VALUES (2114,8401,1,2);
REPLACE INTO `elemental_skill_db` VALUES (2114,8425,1,4);
REPLACE INTO `elemental_skill_db` VALUES (2115,8414,1,1);
REPLACE INTO `elemental_skill_db` VALUES (2115,8402,1,2);
REPLACE INTO `elemental_skill_db` VALUES (2115,8426,1,4);
REPLACE INTO `elemental_skill_db` VALUES (2116,8415,1,1);
REPLACE INTO `elemental_skill_db` VALUES (2116,8403,1,2);
REPLACE INTO `elemental_skill_db` VALUES (2116,8428,1,4);
REPLACE INTO `elemental_skill_db` VALUES (2117,8416,1,1);
REPLACE INTO `elemental_skill_db` VALUES (2117,8404,1,2);
REPLACE INTO `elemental_skill_db` VALUES (2117,8430,1,4);
REPLACE INTO `elemental_skill_db` VALUES (2118,8417,1,1);
REPLACE INTO `elemental_skill_db` VALUES (2118,8405,1,2);
REPLACE INTO `elemental_skill_db` VALUES (2118,8431,1,4);
REPLACE INTO `elemental_skill_db` VALUES (2119,8418,3,1);
REPLACE INTO `elemental_skill_db` VALUES (2119,8406,3,2);
REPLACE INTO `elemental_skill_db` VALUES (2119,8433,3,4);
REPLACE INTO `elemental_skill_db` VALUES (2120,8419,1,1);
REPLACE INTO `elemental_skill_db` VALUES (2120,8407,1,2);
REPLACE INTO `elemental_skill_db` VALUES (2120,8434,1,4);
REPLACE INTO `elemental_skill_db` VALUES (2121,8420,1,1);
REPLACE INTO `elemental_skill_db` VALUES (2121,8408,1,2);
REPLACE INTO `elemental_skill_db` VALUES (2121,8435,1,4);
REPLACE INTO `elemental_skill_db` VALUES (2122,8421,3,1);
REPLACE INTO `elemental_skill_db` VALUES (2122,8409,3,2);
REPLACE INTO `elemental_skill_db` VALUES (2122,8437,3,4);
REPLACE INTO `elemental_skill_db` VALUES (2123,8422,1,1);
REPLACE INTO `elemental_skill_db` VALUES (2123,8410,1,2);
REPLACE INTO `elemental_skill_db` VALUES (2123,8439,1,4);
REPLACE INTO `elemental_skill_db` VALUES (2124,8423,1,1);
REPLACE INTO `elemental_skill_db` VALUES (2124,8411,1,2);
REPLACE INTO `elemental_skill_db` VALUES (2124,8440,1,4);
REPLACE INTO `elemental_skill_db` VALUES (2125,8424,1,1);
REPLACE INTO `elemental_skill_db` VALUES (2125,8412,1,2);
REPLACE INTO `elemental_skill_db` VALUES (2125,8442,3,4);