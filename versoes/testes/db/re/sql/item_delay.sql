--
-- Estrutura para a tabela `item_delay`
--  

CREATE TABLE IF NOT EXISTS `item_delay` (
  `ItemID` int(11) unsigned NOT NULL default '0',
  `Delay` int(11) unsigned NOT NULL default '0',
   PRIMARY KEY (`ItemID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*
 Atraso de Itens.
 Descrição: Responsável pelo atraso ao usar um item repetidas vezes.
 Cabeçalho: REPLACE INTO `item_delay` VALUES ('ID do Item, Tempo de Atraso');
*/

REPLACE INTO item_delay VALUES (12208,60000);	-- 'Manual de Combate -> 60 segundos (1 minutos)'
REPLACE INTO item_delay VALUES (12210,60000);	-- 'Goma de Mascar -> 60 segundos (1 minutos)'
REPLACE INTO item_delay VALUES (14538,300000);	-- 'Cálice da Ilusão -> 300 segundos (5 minutos)'
REPLACE INTO item_delay VALUES (14586,180000);	-- 'Doce Hiper Açucarado -> 180 segundos (3 minutos)'
REPLACE INTO item_delay VALUES (607,5000); -- 'Fruto de Yggdrasil -> (5 segundos)'
REPLACE INTO item_delay VALUES (608,3000); -- 'Semente de Yggdrasil -> (3 segundos)'
REPLACE INTO item_delay VALUES (12622,10000); -- 'Montarias de Aluguel -> (10 segundos)'

