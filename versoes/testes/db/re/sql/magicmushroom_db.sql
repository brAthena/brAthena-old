--
-- Estrutura para a tabela `magicmushroom_db`
-- 

CREATE TABLE IF NOT EXISTS `magicmushroom_db` (
	`SkillID` smallint(2) unsigned NOT NULL default '0',
	PRIMARY KEY (`SkillID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*
 Venenos.
 Descrição: Responsável pelo uso de habilidades de várias classes ao usar venenos.
 Cabeçalho: REPLACE INTO `magicmushroom_db` VALUES ('ID da Habilidade');
*/ 

REPLACE INTO `magicmushroom_db` VALUES (7);		-- 'Impacto Explosivo'
REPLACE INTO `magicmushroom_db` VALUES (8);		-- 'Vigor'
REPLACE INTO `magicmushroom_db` VALUES (10);	-- 'Chama Reveladora'
REPLACE INTO `magicmushroom_db` VALUES (24);	-- 'Revelação'
REPLACE INTO `magicmushroom_db` VALUES (32);	-- 'Signum Crusis'
REPLACE INTO `magicmushroom_db` VALUES (33);	-- 'Angelus'
REPLACE INTO `magicmushroom_db` VALUES (45);	-- 'Concentração'
REPLACE INTO `magicmushroom_db` VALUES (61);	-- 'Contra-Ataque'
REPLACE INTO `magicmushroom_db` VALUES (74);	-- 'Magnificat'
REPLACE INTO `magicmushroom_db` VALUES (110);	-- 'Martelo de Thor'
REPLACE INTO `magicmushroom_db` VALUES (114);	-- 'Amplificar Poder'
REPLACE INTO `magicmushroom_db` VALUES (142);	-- 'Primeiros Socorros'
REPLACE INTO `magicmushroom_db` VALUES (150);	-- 'Recuar'
REPLACE INTO `magicmushroom_db` VALUES (151);	-- 'Procurar Pedras'
REPLACE INTO `magicmushroom_db` VALUES (157);	-- 'Proteção Arcana'
REPLACE INTO `magicmushroom_db` VALUES (249);	-- 'Bloqueio'
REPLACE INTO `magicmushroom_db` VALUES (256);	-- 'Divina Providência'
REPLACE INTO `magicmushroom_db` VALUES (261);	-- 'Invocar Esfera Espiritual'
REPLACE INTO `magicmushroom_db` VALUES (318);	-- 'Piada Infame'
REPLACE INTO `magicmushroom_db` VALUES (500);	-- 'Cara ou Coroa'
REPLACE INTO `magicmushroom_db` VALUES (527);	-- 'Virar Tatami'
REPLACE INTO `magicmushroom_db` VALUES (531);	-- 'Troca de Pele' 