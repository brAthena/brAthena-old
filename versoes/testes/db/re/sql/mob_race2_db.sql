--
-- Estrutura para a tabela `mob_race2_db`
-- 

CREATE TABLE IF NOT EXISTS `mob_race2_db` (
  `Race2ID` tinyint(2) unsigned NOT NULL default '0',
  `MobID1` smallint(2) unsigned NOT NULL default '0',
  `MobID2` smallint(2) unsigned NOT NULL default '0',
  `MobID3` smallint(2) unsigned NOT NULL default '0',
  `MobID4` smallint(2) unsigned NOT NULL default '0',
  `MobID5` smallint(2) unsigned NOT NULL default '0',
  `MobID6` smallint(2) unsigned NOT NULL default '0',
  `MobID7` smallint(2) unsigned NOT NULL default '0',
  `MobID8` smallint(2) unsigned NOT NULL default '0',
  `MobID9` smallint(2) unsigned NOT NULL default '0',
  PRIMARY KEY (`Race2ID`)	
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*
 Raça dos monstros.
 Descrição: Responsável pelo banco de dados de raça dos monstros.
 Cabeçalho: REPLACE INTO `mob_race2_db` VALUES ('ID da Raça,ID do Mob 1,ID do Mob2, etc...');
*/

REPLACE INTO 'mob_race2_db' VALUES (1,1122,1123,1124,1125,1126,1245,1258,1280,1299,1308,1607);	-- 'Goblins'
REPLACE INTO 'mob_race2_db' VALUES (2,1133,1134,1135,1282,1296);	-- 'Kobolds'
REPLACE INTO 'mob_race2_db' VALUES (3,1023,1152,1153,1189,1213,1273,1981,1982,1983,1984);	-- 'Orcs'
REPLACE INTO 'mob_race2_db' VALUES (4,1040,1278,1366,1497,2024);	-- 'Golens'
REPLACE INTO 'mob_race2_db' VALUES (5,1285,1286,1287,1829,1830,1899,1907,1908,1949,1950);	-- 'Guardiões'
REPLACE INTO 'mob_race2_db' VALUES (6,1315,1364,1401,1560);	-- 'Ninjas'