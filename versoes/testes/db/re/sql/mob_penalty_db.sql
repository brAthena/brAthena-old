--
-- Estrutura para a tabela `mob_penalty_db`
-- 

CREATE TABLE IF NOT EXISTS `mob_penalty_db` (
  `Mode` tinyint(1) unsigned NOT NULL default '0',
  `DiferenceLvl` smallint(2) signed NOT NULL default '0',
  PRIMARY KEY (`Mode`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*
 Penalidade de Monstros.
 Descrição: Responsável pelo banco de dados de penalidades para monstros.
 Cabeçalho: REPLACE INTO `mob_penalty_db` VALUES (Modo,'Nível de Diferença:Porcentagem');
*/

-- 'Penalidade de EXP'
REPLACE INTO `mob_penalty_db` VALUES (0,'13:40,12:50,11:60,10:140,9:135,8:130,7:125,6:120,5:115,4:110,3:105,0:100,-1:100,-6:95,-11:90,-16:85,-21:60,-26:35,-31:10');
-- 'Penalide de EXP para MVP'
REPLACE INTO `mob_penalty_db` VALUES (1,'0:100');
-- 'Penalidade de Dano'
REPLACE INTO `mob_penalty_db` VALUES (2,'0:100');
-- 'Penalidade de Dano para MVP'
REPLACE INTO `mob_penalty_db` VALUES (3,'0:100');
-- 'Penalidade de Drop'
REPLACE INTO `mob_penalty_db` VALUES (4,'71:50,61:60,51:70,41:80,31:90,0:100,-31:90,-41:80,-51:70,-61:60,-71:50');
-- 'Penalide de Drop para MVP'
REPLACE INTO `mob_penalty_db` VALUES (5,'0:100');