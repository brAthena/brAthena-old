--
-- Estrutura para a tabela `castle_db`
--         

CREATE TABLE `castle_db` (
   `CastleID` smallint(6) unsigned NOT NULL default '0',
   `MapName` text NOT NULL,
   `CastleName` text NOT NULL,
   `OnGuildBreakEventName` text NOT NULL,
   `Flag` tinyint(1) unsigned NOT NULL default '1',
   PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Castelos.
# Descrição: Responsável pelo banco de dados dos castelos e seus chamamentos.
# Cabeçalho: REPLACE INTO `castle_db` VALUES ('ID do Castelo','Nome do Mapa','Nome do Castelo','Nome do Evento','Flag');
# 

REPLACE INTO `castle_db` VALUES (0,'aldeg_cas01','Sirius','Agit#aldeg_cas01',1);
REPLACE INTO `castle_db` VALUES (1,'aldeg_cas02','Astrum','Agit#aldeg_cas02',1);
REPLACE INTO `castle_db` VALUES (2,'aldeg_cas03','Canopus','Agit#aldeg_cas03',1);
REPLACE INTO `castle_db` VALUES (3,'aldeg_cas04','Rigel','Agit#aldeg_cas04',1);
REPLACE INTO `castle_db` VALUES (4,'aldeg_cas05','Acrux','Agit#aldeg_cas05',1);
REPLACE INTO `castle_db` VALUES (5,'gefg_cas01','Arsulf','Agit#gefg_cas01',1);
REPLACE INTO `castle_db` VALUES (6,'gefg_cas02','Trapesac','Agit#gefg_cas02',1);
REPLACE INTO `castle_db` VALUES (7,'gefg_cas03','Ruaden','Agit#gefg_cas03',1);
REPLACE INTO `castle_db` VALUES (8,'gefg_cas04','Saffran','Agit#gefg_cas04',1);
REPLACE INTO `castle_db` VALUES (9,'gefg_cas05','Arima','Agit#gefg_cas05',1);
REPLACE INTO `castle_db` VALUES (10,'payg_cas01','Palácio do Sol','Agit#payg_cas01',1);
REPLACE INTO `castle_db` VALUES (11,'payg_cas02','Palácio do Lago Sagrado','Agit#payg_cas02',1);
REPLACE INTO `castle_db` VALUES (12,'payg_cas03','Palácio da Sombra','Agit#payg_cas03',1);
REPLACE INTO `castle_db` VALUES (13,'payg_cas04','Palácio Escarlate','Agit#payg_cas04',1);
REPLACE INTO `castle_db` VALUES (14,'payg_cas05','Palácio da Colina','Agit#payg_cas05',1);
REPLACE INTO `castle_db` VALUES (15,'prtg_cas01','Kriemhild','Agit#prtg_cas01',1);
REPLACE INTO `castle_db` VALUES (16,'prtg_cas02','Hrist','Agit#prtg_cas02',1);
REPLACE INTO `castle_db` VALUES (17,'prtg_cas03','Brynhildr','Agit#prtg_cas03',1);
REPLACE INTO `castle_db` VALUES (18,'prtg_cas04','Skoegul','Agit#prtg_cas04',1);
REPLACE INTO `castle_db` VALUES (19,'prtg_cas05','Gondul','Agit#prtg_cas05',1);
REPLACE INTO `castle_db` VALUES (20,'nguild_alde','Terra','Agit_N01',2);
REPLACE INTO `castle_db` VALUES (21,'nguild_gef','Vento','Agit_N02',2);
REPLACE INTO `castle_db` VALUES (22,'nguild_pay','Água','Agit_N03',2);
REPLACE INTO `castle_db` VALUES (23,'nguild_prt','Fogo','Agit_N04',2);
REPLACE INTO `castle_db` VALUES (24,'schg_cas01','Himinn','Agit_Sc01',1);
REPLACE INTO `castle_db` VALUES (25,'schg_cas02','Andlangr','Agit_Sc02',1);
REPLACE INTO `castle_db` VALUES (26,'schg_cas03','Vidblainn','Agit_Sc03',1);
REPLACE INTO `castle_db` VALUES (27,'schg_cas04','Hljod','Agit_Sc04',1);
REPLACE INTO `castle_db` VALUES (28,'schg_cas05','Skatyrnir','Agit_Sc05',1);
REPLACE INTO `castle_db` VALUES (29,'arug_cas01','Mardol','Agit_Ar01',1);
REPLACE INTO `castle_db` VALUES (30,'arug_cas02','Syr','Agit_Ar02',1);
REPLACE INTO `castle_db` VALUES (31,'arug_cas03','Horn','Agit_Ar03',1);
REPLACE INTO `castle_db` VALUES (32,'arug_cas04','Gefn','Agit_Ar04',1);
REPLACE INTO `castle_db` VALUES (33,'arug_cas05','Vanadis','Agit_Ar05',1);