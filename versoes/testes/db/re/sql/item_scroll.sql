--
-- Estrutura para a tabela `item_scroll`
--  

CREATE TABLE IF NOT EXISTS `item_scroll` (
  `GroupID` tinyint(1) unsigned NOT NULL default '0',
  `ItemID` smallint(2) unsigned NOT NULL default '0',
  `Rate` tinyint(1) unsigned NOT NULL default '0',
   PRIMARY KEY (`GroupID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*
 Itens de Pergaminho Desgastado.
 Descrição: Responsável pelos itens obtidos pelo Pergaminho Desgastado.
 Cabeçalho: REPLACE INTO `item_scroll` VALUES ('ID do Grupo de Itens, ID do Item, Chance de Sucesso');
*/ 

REPLACE INTO item_scroll VALUES (5,909,1);		-- 'Jellopy -> 0,01%'
