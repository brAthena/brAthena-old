--
-- Estrutura para a tabela `item_findingore`
--  

CREATE TABLE IF NOT EXISTS `item_findingore` (
  `GroupID` tinyint(1) unsigned NOT NULL default '0',
  `ItemID` smallint(2) unsigned NOT NULL default '0',
  `Rate` tinyint(1) unsigned NOT NULL default '0',
   PRIMARY KEY (`GroupID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*
 Habilidade Descobrir Minério.
 Descrição: Responsável pelos itens obtidos pela habilidade Descobrir Minério.
 Cabeçalho: REPLACE INTO `item_findingore` VALUES ('ID do Grupo de Itens, ID do Item, Chance de Sucesso');
*/

REPLACE INTO item_findingore VALUES (6,714,3);		-- 'Emperium -> 0,03%'
REPLACE INTO item_findingore VALUES (6,756,20);	-- 'Minério de Oridecon -> 0,20%'
REPLACE INTO item_findingore VALUES (6,757,20);	-- 'Minério de Elunium -> 0,20%'
REPLACE INTO item_findingore VALUES (6,969,2);		-- 'Ouro -> 0,02%'
REPLACE INTO item_findingore VALUES (6,984,10);	-- 'Oridecon -> 0,10%'
REPLACE INTO item_findingore VALUES (6,985,10);	-- 'Elunium -> 0,10%'
REPLACE INTO item_findingore VALUES (6,990,30);	-- 'Sangue Escarlate -> 0,30%'
REPLACE INTO item_findingore VALUES (6,991,30);	-- 'Cristal Azul -> 0,30%'
REPLACE INTO item_findingore VALUES (6,992,30);	-- 'Frescor do Vento -> 0,30%'
REPLACE INTO item_findingore VALUES (6,993,30);	-- 'Vida Verdejante -> 0,30%'
REPLACE INTO item_findingore VALUES (6,994,15);	-- 'Coração Flamejante -> 0,15%'
REPLACE INTO item_findingore VALUES (6,995,15);	-- 'Gelo Místico -> 0,15%'
REPLACE INTO item_findingore VALUES (6,996,15);	-- 'Vento Bruto -> 0,15%'
REPLACE INTO item_findingore VALUES (6,997,15);	-- 'Natureza Grandiosa -> 0,15%'
REPLACE INTO item_findingore VALUES (6,998,80);	-- 'Ferro -> 0,80%'
REPLACE INTO item_findingore VALUES (6,999,50);	-- 'Aço -> 0,50%'
REPLACE INTO item_findingore VALUES (6,1002,100);	-- 'Minério de Ferro -> 1,00%'
REPLACE INTO item_findingore VALUES (6,1003,60);	-- 'Carvão -> 0,60%'
REPLACE INTO item_findingore VALUES (6,1010,95);	-- 'Fracon -> 0,95%'
REPLACE INTO item_findingore VALUES (6,1011,55);	-- 'Emveretarcon -> 0,55%
