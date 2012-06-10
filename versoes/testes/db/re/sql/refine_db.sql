--
-- Estrutura para a tabela `refine_db`
-- 

CREATE TABLE IF NOT EXISTS `refine_db` (
  `Types` tinyint(1) unsigned NOT NULL default '0',
  `StatsPerLvl` smallint(2) unsigned NOT NULL default '0',
  `StatBonusPerLvl` tinyint(1) unsigned NOT NULL default '0',
  `BonusPerLvl` smallint(2) unsigned NOT NULL default '0',
  `RefineChance1` smallint(2) unsigned NOT NULL default '0',
  `RefineChance2` smallint(2) unsigned NOT NULL default '0',
  `RefineChance3` smallint(2) unsigned NOT NULL default '0',
  `RefineChance4` smallint(2) unsigned NOT NULL default '0',
  `RefineChance5` smallint(2) unsigned NOT NULL default '0',
  `RefineChance6` smallint(2) unsigned NOT NULL default '0',
  `RefineChance7` smallint(2) unsigned NOT NULL default '0',
  `RefineChance8` smallint(2) unsigned NOT NULL default '0',
  `RefineChance9` smallint(2) unsigned NOT NULL default '0',
  `RefineChance10` smallint(2) unsigned NOT NULL default '0',
  PRIMARY KEY (`StatBonusPerLvl`)	
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*
 Refinamentos.
 Descrição: Responsável pelo banco de dados de refinamentos.
 Cabeçalho: REPLACE INTO `refine_db` VALUES ('Type,Stats per level,Random bonus start level,Random bonus value,Chance+1:Bonus+1,Chance+2:Bonus+2,Chance+3:Bonus+3,...');
*/

REPLACE INTO `refine_db` VALUES (0,0,0,0,100:100,100:100,100:100,100:100,60:200,40:200,40:200,20:200,20:300,10:300,10:300,10:300,10:400,10:400,10:400,10:400,10:500,10:500,10:500,10:500);
-- 'Armas de Nível 1'
REPLACE INTO `refine_db` VALUES (1,200,8,300,100:0,100:0,100:0,100:0,100:0,100:0,100:0,60:0,40:0,20:0,10:0,10:0,10:0,10:0,10:0,10:300,10:300,10:300,10:300,10:300);
-- 'Armas de Nível 2'
REPLACE INTO `refine_db` VALUES (2,300,7,500,100:0,100:0,100:0,100:0,100:0,100:0,60:0,40:0,20:0,20:0,10:0,10:0,10:0,10:0,10:0,10:600,10:600,10:600,10:600,10:600);
-- 'Armas de Nível 3'
REPLACE INTO `refine_db` VALUES (3,500,6,800,100:0,100:0,100:0,100:0,100:0,60:0,50:0,20:0,20:0,20:0,10:0,10:0,10:0,10:0,10:0,10:900,10:900,10:900,10:900,10:900);
-- 'Armas de Nível 4'
REPLACE INTO `refine_db` VALUES (4,700,5,1400,100:0,100:0,100:0,100:0,60:0,40:0,40:0,20:0,20:0,10:0,10:0,10:0,10:0,10:0,10:0,10:1200,10:1200,10:1200,10:1200,10:1200);