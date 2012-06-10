--
-- Estrutura para a tabela `mob_boss`
-- 

CREATE TABLE IF NOT EXISTS `mob_boss` (
  `MobID` smallint(2) unsigned NOT NULL default '0',
  `MobName` text NOT NULL,
  `Rate` mediumint(3) unsigned NOT NULL default '0',
  PRIMARY KEY (`MobID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*
 Monstros MvPs.
 Descrição: Responsável pelo banco de dados de monstros mvps.
 Cabeçalho: REPLACE INTO `mercenary_db` VALUES ('ID do Monstro,Nome do Monstro,Chance de Sucesso');
*/

REPLACE INTO `mob_boss` VALUES (0,'Bafomé',1039);
REPLACE INTO `mob_boss` VALUES (1038,'Osíris',1000000);
REPLACE INTO `mob_boss` VALUES (1039,'Bafomé',1000000);
REPLACE INTO `mob_boss` VALUES (1046,'Doppelganger',1000000);
REPLACE INTO `mob_boss` VALUES (1059,'Abelha-Rainha',1000000);
REPLACE INTO `mob_boss` VALUES (1086,'Besouro Ladrão-Dourado',1000000);
REPLACE INTO `mob_boss` VALUES (1087,'Orc Herói',1000000);
-- '1096,Angeling,1000000'
REPLACE INTO `mob_boss` VALUES (1112,'Drake',1000000);
REPLACE INTO `mob_boss` VALUES (1115,'Eddga',1000000);
-- '1120,Ghostring,1000000'
REPLACE INTO `mob_boss` VALUES (1147,'Maya',1000000);
REPLACE INTO `mob_boss` VALUES (1150,'Flor do Luar',1000000);
REPLACE INTO `mob_boss` VALUES (1157,'Faraó',1000000);
REPLACE INTO `mob_boss` VALUES (1159,'Freeoni',1000000);
REPLACE INTO `mob_boss` VALUES (1190,'Senhor dos Orcs',1000000);
REPLACE INTO `mob_boss` VALUES (1251,'Cavaleiro da Tempestade',1000000);
REPLACE INTO `mob_boss` VALUES (1252,'Hatii',1000000);
REPLACE INTO `mob_boss` VALUES (1272,'Senhor das Trevas',1000000);
REPLACE INTO `mob_boss` VALUES (1312,'General Tartaruga',1000000);
REPLACE INTO `mob_boss` VALUES (1373,'Senhor dos Mortos',1000000);
-- '1388,Arc Angeling,1000000'
REPLACE INTO `mob_boss` VALUES (1389,'Drácula',1000000);
REPLACE INTO `mob_boss` VALUES (1418,'Serpente Suprema',1000000);
REPLACE INTO `mob_boss` VALUES (1492,'Samurai Encarnado',1000000);
REPLACE INTO `mob_boss` VALUES (1511,'Amon Ra',1000000);
-- '1582,Deviling,1000000'
REPLACE INTO `mob_boss` VALUES (1583,'Tao Gunka',1000000);
REPLACE INTO `mob_boss` VALUES (1623,'RSX-0806',1000000);
REPLACE INTO `mob_boss` VALUES (1630,'Lady Branca',1000000);
-- '1646,Lorde Seyren,1000000'
-- '1647,Algoz Eremes,1000000'
-- '1648,Mestre-Ferreiro Howard,1000000'
-- '1649,Suma-Sacerdotisa Margaretha,1000000'
-- '1650,Atiradora de Elite Cecil,1000000'
-- '1651,Arquimaga Kathryne,1000000'
REPLACE INTO `mob_boss` VALUES (1658,'Egnigem Cenia',1000000);
REPLACE INTO `mob_boss` VALUES (1685,'Vesper',1000000);
REPLACE INTO `mob_boss` VALUES (1688,'Lady Tanee',1000000);
REPLACE INTO `mob_boss` VALUES (1708,'Memória de Thanatos',1000000);
REPLACE INTO `mob_boss` VALUES (1719,'Detardeurus',1000000);
REPLACE INTO `mob_boss` VALUES (1734,'Kiel D-01',1000000);
REPLACE INTO `mob_boss` VALUES (1751,'Valkyrie Randgris',1000000);
REPLACE INTO `mob_boss` VALUES (1768,'Pesar Noturno',1000000);
REPLACE INTO `mob_boss` VALUES (1779,'Ktullanux',1000000);
REPLACE INTO `mob_boss` VALUES (1785,'Atroce',1000000);
REPLACE INTO `mob_boss` VALUES (1832,'Ifrit',1000000);
REPLACE INTO `mob_boss` VALUES (1871,'Bispo Decadente',1000000);
REPLACE INTO `mob_boss` VALUES (1873,'Belzebu',1000000);
REPLACE INTO `mob_boss` VALUES (1885,'Gorynych',1000000);
-- '1916,Imperador Morroc,10000000'
REPLACE INTO `mob_boss` VALUES (1917,'Morroc Ferido',1000000);
-- '1929,Grande Bafomé,1000000'
-- '1956,Naght Sieger,1000000'
-- '1957,Entweihen Crothen,1000000'
-- '1980,Kublin,1000000'
-- '1991,Leão de Vinhas,1000000' --'MVP - Mini Boss'
-- '1990,Mamute Rochoso,1000000' --'MVP - Mini Boss'
REPLACE INTO `mob_boss` VALUES (2022,'Sombra de Nidhogg',1000000);
REPLACE INTO `mob_boss` VALUES (2068,'Boitatá',1000000);
-- 'Dewata + Bifrost + El Discates + Malangdo'
REPLACE INTO `mob_boss` VALUES (2087,'Rainha Scaraba',1000000);
REPLACE INTO `mob_boss` VALUES (2131,'Dragão Perdido',1000000);
REPLACE INTO `mob_boss` VALUES (2156,'Vazamento',1000000);
REPLACE INTO `mob_boss` VALUES (2165,'Rainha de Scaraba',1000000);
REPLACE INTO `mob_boss` VALUES (2194,'Polvo Gigante',1000000);
REPLACE INTO `mob_boss` VALUES (2202,'Kraken',1000000);