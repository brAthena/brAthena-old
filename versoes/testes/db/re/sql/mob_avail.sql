--
-- Estrutura para a tabela `mob_avail`
-- 

CREATE TABLE IF NOT EXISTS `mob_avail` (
  `MobID` smallint(2) unsigned NOT NULL default '0',
  `SpriteID` smallint(2) unsigned NOT NULL default '0',
  `Equip` smallint(2) unsigned NOT NULL default '0',
  PRIMARY KEY (`MobID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*
 Mudança de sprite.
 Descrição: Responsável pelo uso de um sprite diferente do original de um monstro.
 Cabeçalho: REPLACE INTO `mob_avail` VALUES ('MobID,SpriteID,Equip');
*/

-- REPLACE INTO `mob_avail` VALUES (1002,1039);	
-- REPLACE INTO `mob_avail` VALUES (1970,1002,10013);	

-- Evento de Páscoa.
-- REPLACE INTO `mob_avail` VALUES (1920,1047,0);
-- REPLACE INTO `mob_avail` VALUES (1921,1093,0);

-- Valaris
-- REPLACE INTO `mob_avail` VALUES (1900,4013,1,1,1,1254,0,67,12,54,16,1);
-- Valaris Worshiper
-- REPLACE INTO `mob_avail` VALUES (1901,6,1,1,1,1219,2101,67,12,54,0,1);
-- MC Cameri
-- REPLACE INTO `mob_avail` VALUES (1902,14,1,6,6,1101,2105,0,0,0,32,3);
-- Poki
-- REPLACE INTO `mob_avail` VALUES (1903,4012,1,21,0,1720,0,102,184,57,16,0);
-- Sentry
-- REPLACE INTO `mob_avail` VALUES (1904,1286,0);

-- Evento de Halloween, de 2008 do iRO.
-- REPLACE INTO `mob_avail` VALUES (3000,1015,0);
-- REPLACE INTO `mob_avail` VALUES (3001,1036,0);
-- REPLACE INTO `mob_avail` VALUES (3002,1298,0);

-- Evento de Halloween de 2009 do iRO.
-- REPLACE INTO `mob_avail` VALUES (3014,1179,0);
-- REPLACE INTO `mob_avail` VALUES (3015,1272,0);