--
-- Estrutura para a tabela `mob_poring`
-- 

CREATE TABLE IF NOT EXISTS `mob_poring` (
  `MobID` smallint(2) unsigned NOT NULL default '0',
  `MobName` text NOT NULL,
  `Rate` mediumint(3) unsigned NOT NULL default '0',
  PRIMARY KEY (`MobID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*
 Monstros Poring.
 Descrição: Responsável pelo banco de dados de monstros invocáveis pela Caixa Poring.
 Cabeçalho: REPLACE INTO `mob_pouch` VALUES ('ID do Monstro,Nome do Monstro,Chance de Sucesso');
*/

REPLACE INTO `mob_poring` VALUES (0,'Poring',1002);
REPLACE INTO `mob_poring` VALUES (1002,'Poring',1000000);
REPLACE INTO `mob_poring` VALUES (1031,'Poporing',1000000);
REPLACE INTO `mob_poring` VALUES (1062,'Poring Noel',200000);
REPLACE INTO `mob_poring` VALUES (1090,'Mastering',400000);
REPLACE INTO `mob_poring` VALUES (1096,'Angeling',200000);
REPLACE INTO `mob_poring` VALUES (1113,'Drops',1000000);
REPLACE INTO `mob_poring` VALUES (1120,'Ghostring',200000);
REPLACE INTO `mob_poring` VALUES (1242,'Marin',1000000);
REPLACE INTO `mob_poring` VALUES (1388,'ArchAngeling',200000);
REPLACE INTO `mob_poring` VALUES (1520,'Bolinho de Massa',800000);
REPLACE INTO `mob_poring` VALUES (1582,'Deviling',200000);
REPLACE INTO `mob_poring` VALUES (1613,'Metaling',1000000);
-- '1754,Skeggiold,100000'
-- '1755,Skeggiold,100000'
REPLACE INTO `mob_poring` VALUES (1784,'Stapo',800000);
REPLACE INTO `mob_poring` VALUES (1836,'Magmaring',800000);
REPLACE INTO `mob_poring` VALUES (1894,'Pouring',800000);
REPLACE INTO `mob_poring` VALUES (1904,'Bomb Poring',800000);
REPLACE INTO `mob_poring` VALUES (1977,'Metaling',800000);
REPLACE INTO `mob_poring` VALUES (2199,'Siorava',800000);