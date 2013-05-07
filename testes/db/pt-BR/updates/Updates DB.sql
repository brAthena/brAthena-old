/*_________________________________________________________________________
 /                                                                         \
 |                  _           _   _   _                                  |
 |                 | |__  _ __ / \ | |_| |__   ___ _ __   __ _             |
 |                 | '_ \| '__/ _ \| __| '_ \ / _ \ '_ \ / _` |            |
 |                 | |_) | | / ___ \ |_| | | |  __/ | | | (_| |            |
 |                 |_.__/|_|/_/   \_\__|_| |_|\___|_| |_|\__,_|            |
 |                                                                         |
 |                       brAthena © 2013 - Banco de Dados                  |
 |        Contém as tabelas de updates para habilidades, itens e monstros  |
 \_________________________________________________________________________/
*/

-- 01/05/2013

CREATE TABLE IF NOT EXISTS `item_nouse_sit` (
  `ItemID` smallint unsigned NOT NULL,
  `Flag` tinyint NOT NULL,
  `GroupID` tinyint NOT NULL,
  PRIMARY KEY (`ItemID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

REPLACE INTO `item_nouse_sit` VALUES(619,1,100);
REPLACE INTO `item_nouse_sit` VALUES(620,1,100);
REPLACE INTO `item_nouse_sit` VALUES(621,1,100);
REPLACE INTO `item_nouse_sit` VALUES(622,1,100);
REPLACE INTO `item_nouse_sit` VALUES(623,1,100);
REPLACE INTO `item_nouse_sit` VALUES(624,1,100);
REPLACE INTO `item_nouse_sit` VALUES(625,1,100);
REPLACE INTO `item_nouse_sit` VALUES(626,1,100);
REPLACE INTO `item_nouse_sit` VALUES(627,1,100);
REPLACE INTO `item_nouse_sit` VALUES(628,1,100);
REPLACE INTO `item_nouse_sit` VALUES(629,1,100);
REPLACE INTO `item_nouse_sit` VALUES(630,1,100);
REPLACE INTO `item_nouse_sit` VALUES(631,1,100);
REPLACE INTO `item_nouse_sit` VALUES(632,1,100);
REPLACE INTO `item_nouse_sit` VALUES(633,1,100);
REPLACE INTO `item_nouse_sit` VALUES(634,1,100);
REPLACE INTO `item_nouse_sit` VALUES(635,1,100);
REPLACE INTO `item_nouse_sit` VALUES(636,1,100);
REPLACE INTO `item_nouse_sit` VALUES(637,1,100);
REPLACE INTO `item_nouse_sit` VALUES(638,1,100);
REPLACE INTO `item_nouse_sit` VALUES(639,1,100);
REPLACE INTO `item_nouse_sit` VALUES(640,1,100);
REPLACE INTO `item_nouse_sit` VALUES(641,1,100);
REPLACE INTO `item_nouse_sit` VALUES(642,1,100);
REPLACE INTO `item_nouse_sit` VALUES(659,1,100);
REPLACE INTO `item_nouse_sit` VALUES(660,1,100);
REPLACE INTO `item_nouse_sit` VALUES(661,1,100);
REPLACE INTO `item_nouse_sit` VALUES(686,1,100);
REPLACE INTO `item_nouse_sit` VALUES(687,1,100);
REPLACE INTO `item_nouse_sit` VALUES(688,1,100);
REPLACE INTO `item_nouse_sit` VALUES(689,1,100);
REPLACE INTO `item_nouse_sit` VALUES(690,1,100);
REPLACE INTO `item_nouse_sit` VALUES(691,1,100);
REPLACE INTO `item_nouse_sit` VALUES(692,1,100);
REPLACE INTO `item_nouse_sit` VALUES(693,1,100);
REPLACE INTO `item_nouse_sit` VALUES(694,1,100);
REPLACE INTO `item_nouse_sit` VALUES(695,1,100);
REPLACE INTO `item_nouse_sit` VALUES(696,1,100);
REPLACE INTO `item_nouse_sit` VALUES(697,1,100);
REPLACE INTO `item_nouse_sit` VALUES(698,1,100);
REPLACE INTO `item_nouse_sit` VALUES(699,1,100);
REPLACE INTO `item_nouse_sit` VALUES(700,1,100);
REPLACE INTO `item_nouse_sit` VALUES(11702,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12000,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12001,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12002,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12027,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12028,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12029,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12030,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12031,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12032,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12033,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12034,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12215,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12216,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12217,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12218,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12219,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12220,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12225,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12235,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12236,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12237,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12290,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12291,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12310,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12311,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12313,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12323,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12324,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12325,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12340,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12347,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12350,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12358,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12359,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12360,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12361,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12362,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12363,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12364,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12365,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12366,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12367,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12368,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12369,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12370,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12371,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12372,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12373,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12374,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12376,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12377,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12388,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12389,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12390,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12396,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12397,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12415,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12473,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12474,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12706,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12707,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12708,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12725,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12726,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12727,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12728,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12729,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12730,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12731,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12732,1,100);
REPLACE INTO `item_nouse_sit` VALUES(12733,1,100);
REPLACE INTO `item_nouse_sit` VALUES(14521,1,100);
REPLACE INTO `item_nouse_sit` VALUES(14529,1,100);
REPLACE INTO `item_nouse_sit` VALUES(14532,1,100);
REPLACE INTO `item_nouse_sit` VALUES(14587,1,100);
REPLACE INTO `item_nouse_sit` VALUES(14591,1,100);
REPLACE INTO `item_nouse_sit` VALUES(14592,1,100);
REPLACE INTO `item_nouse_sit` VALUES(14593,1,100);
REPLACE INTO `item_nouse_sit` VALUES(14594,1,100);
REPLACE INTO `item_nouse_sit` VALUES(14599,1,100);
REPLACE INTO `item_nouse_sit` VALUES(14606,1,100);

-- 07/05/2013
REPLACE INTO `skill_unit_db` VALUES(2317,'0x86',NULL,'-1','0','-1','enemy','0x010');