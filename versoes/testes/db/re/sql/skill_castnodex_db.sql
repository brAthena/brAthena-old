--
-- Estrutura para a tabela `skill_castnodex_db`
--    

CREATE TABLE IF NOT EXISTS `skill_castnodex_db` (
	`SkillID` smallint(2) unsigned NOT NULL default '0',
	`Cast` tinyint(1) unsigned NOT NULL default '0',
	`Delay` tinyint(1) unsigned NOT NULL default '0',
	PRIMARY KEY (`SkillID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;;


/*
 Habilidades Diretas.
 Descrição: Habilidades que dispensam tempo de conjuração.
 Cabeçalho: REPLACE INTO `skill_castnodex_db` VALUES ('ID da Habilidade','Tempo de Conjuração','Tempo de Atraso');
*/ 

-- 'Habilidades de Classes'
REPLACE INTO skill_castnodex_db VALUES (136,0,2);	-- 'Lâminas Destruidoras'
REPLACE INTO skill_castnodex_db VALUES (157,1,0);	-- 'Proteção Arcana'
REPLACE INTO skill_castnodex_db VALUES (263,0,2);	-- 'Combo Triplo'
REPLACE INTO skill_castnodex_db VALUES (272,0,2);	-- 'Combo Quádruplo'
REPLACE INTO skill_castnodex_db VALUES (273,0,2);	-- 'O Último Dragão'
REPLACE INTO skill_castnodex_db VALUES (336,1,0);	-- 'Saudades de Você'
REPLACE INTO skill_castnodex_db VALUES (366,1,0);	-- 'Amplificação Mística'
REPLACE INTO skill_castnodex_db VALUES (370,1,0);	-- 'Golpe da Palma em Fúria'
REPLACE INTO skill_castnodex_db VALUES (371,0,2);	-- 'Punho do Tigre'
REPLACE INTO skill_castnodex_db VALUES (372,0,2);	-- 'Combo Esmagador'
REPLACE INTO skill_castnodex_db VALUES (394,0,2);	-- 'Vulcão de Flechas'
REPLACE INTO skill_castnodex_db VALUES (401,1,0);	-- 'Zen'
REPLACE INTO skill_castnodex_db VALUES (403,3,0);	-- 'Presciência'
REPLACE INTO skill_castnodex_db VALUES (408,1,0);	-- 'Mãe Pai amo vocês!'
REPLACE INTO skill_castnodex_db VALUES (409,1,0);	-- 'Mãe Pai cadê vocês?'
REPLACE INTO skill_castnodex_db VALUES (410,1,0);	-- 'Vem cá filhote!'
REPLACE INTO skill_castnodex_db VALUES (482,1,0);	-- 'Lanças Duplas'
REPLACE INTO skill_castnodex_db VALUES (462,1,0);	-- 'Kaizel'
REPLACE INTO skill_castnodex_db VALUES (496,1,0);	-- 'Criação Espiritual de Poções'
REPLACE INTO skill_castnodex_db VALUES (497,1,0);	-- 'Criação Espiritual de Poções'
REPLACE INTO skill_castnodex_db VALUES (498,1,0);	-- 'Criação Espiritual de Poções'
REPLACE INTO skill_castnodex_db VALUES (512,3,0);	-- 'Rastrear o Alvo'
REPLACE INTO skill_castnodex_db VALUES (1014,1,0);	-- 'Martírio'
REPLACE INTO skill_castnodex_db VALUES (2012,1,0);	-- 'Golpe Titânico'
REPLACE INTO skill_castnodex_db VALUES (2013,1,0);	-- 'Purificação'
REPLACE INTO skill_castnodex_db VALUES (2014,1,0);	-- 'Força Titânica'
REPLACE INTO skill_castnodex_db VALUES (2015,1,0);	-- 'Escamas Rochosas'
REPLACE INTO skill_castnodex_db VALUES (2032,1,0);	-- 'Nevoeiro Tóxico'
REPLACE INTO skill_castnodex_db VALUES (2234,1,0);	-- 'Disparo Selvagem'
REPLACE INTO skill_castnodex_db VALUES (2267,1,0);	-- 'Autodestruicão'
REPLACE INTO skill_castnodex_db VALUES (2268,1,0);	-- 'Reconfigurar Elemento'
REPLACE INTO skill_castnodex_db VALUES (2270,1,0);	-- 'Sensor Infravermelho'
REPLACE INTO skill_castnodex_db VALUES (2271,1,0);	-- 'Analisar'
REPLACE INTO skill_castnodex_db VALUES (2281,1,0);	-- 'Artilharia Caçadora'
REPLACE INTO skill_castnodex_db VALUES (2282,1,0);	-- 'Artilharia Arcana'
REPLACE INTO skill_castnodex_db VALUES (2313,1,0);	-- 'Proteção da Vanguarda'
REPLACE INTO skill_castnodex_db VALUES (2316,1,0);	-- 'Exceder Limite'
REPLACE INTO skill_castnodex_db VALUES (2462,1,0);	-- 'Análise Elemental'
REPLACE INTO skill_castnodex_db VALUES (2533,7,0);	-- 'ALL_ODINS_RECALL'
REPLACE INTO skill_castnodex_db VALUES (2534,1,0);	-- 'RETURN_TO_ELDICASTES'
REPLACE INTO skill_castnodex_db VALUES (2536,1,0);	-- 'ALL_GUARDIAN_RECALL'
REPLACE INTO skill_castnodex_db VALUES (2538,7,0);	-- 'ALL_RIDING'

-- 'Habilidades de Assistentes'
REPLACE INTO skill_castnodex_db VALUES (8214,7,0);	-- 'Carregar Flechas'
REPLACE INTO skill_castnodex_db VALUES (8215,7,0);	-- 'Tiro Preciso'
REPLACE INTO skill_castnodex_db VALUES (8217,7,0);	-- 'Brandir Lança'
REPLACE INTO skill_castnodex_db VALUES (8218,7,0);	-- 'Perfurar em Espiral'
REPLACE INTO skill_castnodex_db VALUES (8221,7,0);	-- 'Redenção'
REPLACE INTO skill_castnodex_db VALUES (8222,7,0);	-- 'Magnificat'
REPLACE INTO skill_castnodex_db VALUES (8225,7,0);	-- 'Impacto'
REPLACE INTO skill_castnodex_db VALUES (8234,7,0);	-- 'Diminuir Agilidade'
REPLACE INTO skill_castnodex_db VALUES (8235,7,0);	-- 'Bode Expiatório'
REPLACE INTO skill_castnodex_db VALUES (8238,7,0);	-- 'Kyrie Eleison'
REPLACE INTO skill_castnodex_db VALUES (8240,7,0);	-- 'Aumentar Agilidade'

-- 'Habilidades de Guilda'
REPLACE INTO skill_castnodex_db VALUES (10010,3,0);	-- 'Comando de Batalha'
REPLACE INTO skill_castnodex_db VALUES (10011,3,0);	-- 'Regeneração'
REPLACE INTO skill_castnodex_db VALUES (10012,6,0);	-- 'Restauração'
REPLACE INTO skill_castnodex_db VALUES (10013,7,0);	-- 'Chamado Urgente'