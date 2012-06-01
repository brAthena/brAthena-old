--
-- Estrutura para a tabela `item_avail`
--         

CREATE TABLE IF NOT EXISTS `item_avail` (
   `ItemID` smallint(6) unsigned NOT NULL default '0',
   `SpriteID` smallint(6) unsigned NOT NULL default '0',
   PRIMARY KEY (`SourceID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*
 Aparência de Itens.
 Descrição: Responsável pela visualização de uma sprite diferente em um item.
 Cabeçalho: REPLACE INTO `item_avail` VALUES ('ID do Item','ID da Sprite');
*/ 

-- 'Quest do Bigode Grisalho'
REPLACE INTO `item_avail` VALUES (2240,2241);

-- 'Quest - Caça ao Tesouro de Geffenia'
--REPLACE INTO `item_avail` VALUES (7950,7021);
--REPLACE INTO `item_avail` VALUES (7951,7042);
--REPLACE INTO `item_avail` VALUES (1998,1250);
--REPLACE INTO `item_avail` VALUES (1999,1472);

-- 'Quest - St. Patrics (2008)'
--REPLACE INTO `item_avail` VALUES (12715,7721);
--REPLACE INTO `item_avail` VALUES (7915,673);
--REPLACE INTO `item_avail` VALUES (7916,675);