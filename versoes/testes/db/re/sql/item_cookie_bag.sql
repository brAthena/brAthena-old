--
-- Estrutura para a tabela `item_cookie_bag`
--  

CREATE TABLE IF NOT EXISTS `item_cookie_bag` (
  `GroupID` tinyint(1) NOT NULL default '0',
  `ItemID` mediumint(3) unsigned NOT NULL default '0',
  `Rate` smallint(2) unsigned NOT NULL default '0',
   PRIMARY KEY (`GroupID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*
 Itens da Sacola de Doces.
 Descrição: Responsável pelos itens obtidos pela Sacola de Doces.
 Cabeçalho: REPLACE INTO `item_cookie_bag` VALUES ('ID do Grupo de Itens, ID do Item, Chance de Sucesso');
*/

REPLACE INTO `item_cookie_bag` VALUES (7,529,5);		-- 'Bala -> 0,05%'
REPLACE INTO `item_cookie_bag` VALUES (7,530,5);		-- 'Bengala Doce -> 0,05%'
REPLACE INTO `item_cookie_bag` VALUES (7,538,5);		-- 'Biscoito de Gengibre -> 0,05%'
REPLACE INTO `item_cookie_bag` VALUES (7,539,5);		-- 'Pedaço de Bolo -> 0,05%'
REPLACE INTO `item_cookie_bag` VALUES (7,558,1);		-- 'Chocolate -> 0,01%'
REPLACE INTO `item_cookie_bag` VALUES (7,559,1);		-- 'Chocolate Caseiro -> 0,01%'
REPLACE INTO `item_cookie_bag` VALUES (7,560,1);		-- 'Chocolate Branco feito a mão -> 0,01%'
REPLACE INTO `item_cookie_bag` VALUES (7,561,1);		-- 'Chocolate Branco -> 0,01%'
REPLACE INTO `item_cookie_bag` VALUES (7,564,4);		-- 'Bolinho de Arroz -> 0,04%'
REPLACE INTO `item_cookie_bag` VALUES (7,570,5);		-- 'Doce da Sorte -> 0,05%'
REPLACE INTO `item_cookie_bag` VALUES (7,571,5);		-- 'Bengala Doce da Sorte -> 0,05%'
REPLACE INTO `item_cookie_bag` VALUES (7,572,5);		-- 'Biscoito da Sorte -> 0,05%'
REPLACE INTO `item_cookie_bag` VALUES (7,573,1);		-- 'Chocolate Quente -> 0,01%'
REPLACE INTO `item_cookie_bag` VALUES (7,12122,1);		-- 'Ovinhos Coloridos -> 0,01%'
REPLACE INTO `item_cookie_bag` VALUES (7,12123,1);		-- 'Biscoito de Mel -> 0,01%'
REPLACE INTO `item_cookie_bag` VALUES (7,12124,1);		-- 'Bolo Arco-Íris -> 0,01%'
