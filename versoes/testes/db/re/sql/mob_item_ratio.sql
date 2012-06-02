--
-- Estrutura para a tabela `mob_item_ratio`
-- 

CREATE TABLE IF NOT EXISTS `mob_item_ratio` (
  `ItemID` smallint(2) unsigned NOT NULL default '0',
  `Rate` mediumint(3) unsigned NOT NULL default '0',
  `MobID` smallint(2) unsigned NOT NULL default '0',
  PRIMARY KEY (`ItemID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*
 Queda de itens.
 Descrição: Taxa de queda de itens especifica para determinados monstros e condições.
 Cabeçalho: REPLACE INTO `mob_penalty_db` VALUES ('ItemID,Rate,MobID');
*/