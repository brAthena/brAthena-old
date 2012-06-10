--
-- Estrutura para a tabela `attr_fix`
--                                 

CREATE TABLE IF NOT EXISTS `attr_fix` (
	`Level` tinyint(1) unsigned NOT NULL default '0',
	`None` tinyint(1) unsigned NOT NULL default '0',
	`Water` tinyint(1) NOT NULL default '0',
	`Earth` tinyint(1) NOT NULL default '0',
	`Fire` tinyint(1) NOT NULL default '0',
	`Wind` tinyint(1) NOT NULL default '0',
	`Poison` tinyint(1) NOT NULL default '0',
	`Saint` tinyint(1) NOT NULL default '0',
	`Darkness` tinyint(1) NOT NULL default '0',
	`Sense` tinyint(1) NOT NULL default '0',
	`Immortality` tinyint(1) NOT NULL default '0',
	PRIMARY KEY (`Level`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*
 Elementos.
 Descrição: Responsável pelo cálculo de dano dos elementos.
 Cabeçalho: REPLACE INTO `attr_fix` VALUES ('Neutro, Água, Terra, Fogo, Vento, Veneno, Sagrado, Sombrio, Fantasma, Morto-Vivo');
 Linha: Defesa elemental dos alvos
 Coluna: Ataque elemental dos atacantes
*/

REPLACE INTO attr_fix VALUES (1,10,0,0,0,0,0,0,0,0,0);	-- 'Tabela de Atributo Nv1'
REPLACE INTO attr_fix VALUES (100,100,100,100,100,100,100,100,70,100,100);	-- 'Neutro'
REPLACE INTO attr_fix VALUES (100,25,100,150,90,100,75,100,100,100,100);	-- 'Água'
REPLACE INTO attr_fix VALUES (100,100,25,90,150,100,75,100,100,100,100);	-- 'Terra'
REPLACE INTO attr_fix VALUES (100,90,150,25,100,100,75,100,100,125,100);	-- 'Fogo'
REPLACE INTO attr_fix VALUES (100,175,90,100,25,100,75,100,100,100,100);	-- 'Vento'
REPLACE INTO attr_fix VALUES (100,100,125,125,125,0,75,50,100,-25,100);	-- 'Veneno'
REPLACE INTO attr_fix VALUES (100,100,100,100,100,100,0,125,100,150,100);	-- 'Sagrado'
REPLACE INTO attr_fix VALUES (100,100,100,100,100,50,125,0,100,-25,100);	-- 'Sombrio'
REPLACE INTO attr_fix VALUES (70,100,100,100,100,100,75,75,125,100,100);	-- 'Fantasma'
REPLACE INTO attr_fix VALUES (100,100,100,100,100,50,100,0,100,0,100);	-- 'Morto-Vivo'
REPLACE INTO attr_fix VALUES (2,10,0,0,0,0,0,0,0,0,0);	-- 'Tabela de Atributo Nv2'
REPLACE INTO attr_fix VALUES (100,100,100,100,100,100,100,100,50,100,100);	-- 'Neutro'
REPLACE INTO attr_fix VALUES (100,0,100,175,80,100,50,75,100,100,100);	-- 'Água'
REPLACE INTO attr_fix VALUES (100,100,0,80,175, 100,50,75,100,100,100);	-- 'Terra'
REPLACE INTO attr_fix VALUES (100,80,175,0,100,100,50,75,100,150,100);	-- 'Fogo'
REPLACE INTO attr_fix VALUES (100,175,80,100,0,100,50,75,100,100,100);	-- 'Vento'
REPLACE INTO attr_fix VALUES (100,75,125,125,125,0,50,25,75,-50,100);	-- 'Veneno'
REPLACE INTO attr_fix VALUES (100,100,100,100,100,100,-25,150,100,175,100);	-- 'Sagrado'
REPLACE INTO attr_fix VALUES (100,100,100,100,100,25,150,-25,100,-50,100);	-- 'Sombrio'
REPLACE INTO attr_fix VALUES (50,75,75,75,75,75,50,50,150,125,100);	-- 'Fantasma'
REPLACE INTO attr_fix VALUES (100,75,75,75,75,25,125,0,100,0,100);	-- 'Morto-Vivo'
REPLACE INTO attr_fix VALUES (3,10,0,0,0,0,0,0,0,0,0);	-- 'Tabela de Atributo Nv3'
REPLACE INTO attr_fix VALUES (100,100,100,100,100,100,100,100,0,100,100);	-- 'Neutro'
REPLACE INTO attr_fix VALUES (100,-25,100,200,70,100,25,50,100,125,100);	-- 'Água'
REPLACE INTO attr_fix VALUES (100,100,-25,70,200,100,25,50,100,75,100);	-- 'Terra'
REPLACE INTO attr_fix VALUES (100,70,200,-25,100,100,25,50,100,175,100);	-- 'Fogo'
REPLACE INTO attr_fix VALUES (100,200,70,100,-25,100,25,50,100,100,100);	-- 'Vento'
REPLACE INTO attr_fix VALUES (100,50,100,100,100,0,25,0,50,-75,100);	-- 'Veneno'
REPLACE INTO attr_fix VALUES (100,100,100,100,100,125,-50,175,100,200,100);	-- 'Sagrado'
REPLACE INTO attr_fix VALUES (100,100,100,100,100,0,175,-50,100,-75,100);	-- 'Sombrio'
REPLACE INTO attr_fix VALUES (0,50,50,50,50,50,25,25,175,150,100);	-- 'Fantasma'
REPLACE INTO attr_fix VALUES (100,50,50,50,50,0,150,0,100,0,100);	-- 'Morto-Vivo'
REPLACE INTO attr_fix VALUES (4,10,0,0,0,0,0,0,0,0,0);	-- 'Tabela de Atributo Nv4'
REPLACE INTO attr_fix VALUES (100,100,100,100,100,100,100,100,0,100,100);	-- 'Neutro'
REPLACE INTO attr_fix VALUES (100,-50,100,200,60,75,0,25,100,150,100);	-- 'Água'
REPLACE INTO attr_fix VALUES (100,100,-50,60,200,75,0,25,100,50,100);	-- 'Terra'
REPLACE INTO attr_fix VALUES (100,60,200,-50,100,75,0,25,100,200,100);	-- 'Fogo'
REPLACE INTO attr_fix VALUES (100,200,60,100,-50,75,0,25,100,100,100);	-- 'Vento'
REPLACE INTO attr_fix VALUES (100,25,75,75,75,0,0,-25,25,-100,100);	-- 'Veneno'
REPLACE INTO attr_fix VALUES (100,75,75,75,75,125,-100,200,100,200,100);	-- 'Sagrado'
REPLACE INTO attr_fix VALUES (100,75,75,75,75,-25,200,-100,100,-100,100);	-- 'Sombrio'
REPLACE INTO attr_fix VALUES (0,25,25,25,25,25,0,0,200,175,100);	-- 'Fantasma'
REPLACE INTO attr_fix VALUES (100,25,25,25,25,-25,175,0,100,0,100);	-- 'Morto-Vivo'