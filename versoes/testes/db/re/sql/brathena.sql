/*_________________________________________________________________________
 /                                                                         \
 |                  _           _   _   _                                  |
 |                 | |__  _ __ / \ | |_| |__   ___ _ __   __ _             |
 |                 | '_ \| '__/ _ \| __| '_ \ / _ \ '_ \ / _` |            |
 |                 | |_) | | / ___ \ |_| | | |  __/ | | | (_| |            |
 |                 |_.__/|_|/_/   \_\__|_| |_|\___|_| |_|\__,_|            |
 |                                                                         |
 |                       brAthena © 2012 - Banco de Dados                  |
 |   Contém o banco de dados de habilidades, itens, monstros e sistemas    |
 \_________________________________________________________________________/
*/


-- 
--  Estrutura para a tabela `abra_db`
--                                  

CREATE TABLE IF NOT EXISTS `abra_db` (
   `SkillID` smallint(2) unsigned NOT NULL default '0',
   `DummyName` text NOT NULL,
   `RequiredHocusPocusLevel` tinyint(1) unsigned NOT NULL default '0',
   `Rate` smallint(2) unsigned NOT NULL default '0',
   PRIMARY KEY (`skillid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*
 Habilidade abracadabra.
 Descrição: Responsável pelo uso de habilidades de várias classes ao usar a habilidade abracadabra.
 Cabeçalho: REPLACE INTO `abra_db` VALUES ('ID da Habilidade','Nome da Habilidade','Nível da Habilidade Abracadabra','Chance de Uso');
*/

-- REPLACE INTO `abra_db` VALUES (1,'Habilidades Básicas',1,0);
-- REPLACE INTO `abra_db` VALUES (2,'Perícia com Espada',1,0);
-- REPLACE INTO `abra_db` VALUES (3,'Perícia com Espada de Duas Mãos',1,0);
-- REPLACE INTO `abra_db` VALUES (4,'Aumentar Recuperação de HP',1,0);
REPLACE INTO `abra_db` VALUES (5,'Golpe Fulminante',1,5000);
REPLACE INTO `abra_db` VALUES (6,'Provocar',1,5000);
REPLACE INTO `abra_db` VALUES (7,'Impacto Explosivo',1,5000);
REPLACE INTO `abra_db` VALUES (8,'Vigor',1,5000);
-- REPLACE INTO `abra_db` VALUES (9,'Aumentar Recuperação de SP',1,0);
REPLACE INTO `abra_db` VALUES (10,'Chama Reveladora',1,5000);
REPLACE INTO `abra_db` VALUES (11,'Ataque Espiritual',1,5000);
REPLACE INTO `abra_db` VALUES (12,'Escudo Mágico',4,5000);
REPLACE INTO `abra_db` VALUES (13,'Espíritos Anciões',2,5000);
REPLACE INTO `abra_db` VALUES (14,'Lanças de Gelo',1,5000);
REPLACE INTO `abra_db` VALUES (15,'Rajada Congelante',2,5000);
REPLACE INTO `abra_db` VALUES (16,'Petrificar',1,5000);
REPLACE INTO `abra_db` VALUES (17,'Bola de Fogo',2,5000);
REPLACE INTO `abra_db` VALUES (18,'Barreira de Fogo',4,5000);
REPLACE INTO `abra_db` VALUES (19,'Lanças de Fogo',1,5000);
REPLACE INTO `abra_db` VALUES (20,'Relâmpago',1,5000);
REPLACE INTO `abra_db` VALUES (21,'Tempestade de Raios',2,5000);
-- REPLACE INTO `abra_db` VALUES (22,'Proteção Divina',1,0);
-- REPLACE INTO `abra_db` VALUES (23,'Flagelo do Mal',1,0);
REPLACE INTO `abra_db` VALUES (24,'Revelação',1,5000);
REPLACE INTO `abra_db` VALUES (25,'Escudo Sagrado',6,5000);
REPLACE INTO `abra_db` VALUES (26,'Teleporte',2,5000);
REPLACE INTO `abra_db` VALUES (27,'Portal',4,5000);
REPLACE INTO `abra_db` VALUES (28,'Curar',1,5000);
REPLACE INTO `abra_db` VALUES (29,'Aumentar Agilidade',2,5000);
REPLACE INTO `abra_db` VALUES (30,'Diminuir Agilidade',4,5000);
REPLACE INTO `abra_db` VALUES (31,'Aqua Benedicta',1,5000);
REPLACE INTO `abra_db` VALUES (32,'Signum Crusis',1,5000);
REPLACE INTO `abra_db` VALUES (33,'Angelus',1,5000);
REPLACE INTO `abra_db` VALUES (34,'Bênção',2,5000);
REPLACE INTO `abra_db` VALUES (35,'Medicar',1,5000);
-- REPLACE INTO `abra_db` VALUES (36,'Aumentar Capacidade de Carga',1,0);
-- REPLACE INTO `abra_db` VALUES (37,'Desconto',1,0);
-- REPLACE INTO `abra_db` VALUES (38,'Superfaturar',1,0);
-- REPLACE INTO `abra_db` VALUES (39,'Usar Carrinho',1,0);
REPLACE INTO `abra_db` VALUES (40,'Identificar Item',1,5000);
REPLACE INTO `abra_db` VALUES (41,'Comércio',4,5000);
REPLACE INTO `abra_db` VALUES (42,'Mammonita',1,5000);
-- REPLACE INTO `abra_db` VALUES (43,'Precisão',1,0);
-- REPLACE INTO `abra_db` VALUES (44,'Olhos de Águia',1,0);
REPLACE INTO `abra_db` VALUES (45,'Concentração',4,5000);
REPLACE INTO `abra_db` VALUES (46,'Rajada de Flechas',1,5000);
REPLACE INTO `abra_db` VALUES (47,'Chuva de Flechas',2,5000);
-- REPLACE INTO `abra_db` VALUES (48,'Ataque Duplo',1,0);
-- REPLACE INTO `abra_db` VALUES (49,'Perícia em Esquiva',1,0);
REPLACE INTO `abra_db` VALUES (50,'Furto',2,5000);
REPLACE INTO `abra_db` VALUES (51,'Esconderijo',2,5000);
REPLACE INTO `abra_db` VALUES (52,'Envenenar',1,5000);
REPLACE INTO `abra_db` VALUES (53,'Desintoxicar',1,5000);
REPLACE INTO `abra_db` VALUES (54,'Ressuscitar',1,5000);
-- REPLACE INTO `abra_db` VALUES (55,'Perícia com Lança',1,0);
REPLACE INTO `abra_db` VALUES (56,'Perfurar',2,4000);
REPLACE INTO `abra_db` VALUES (57,'Brandir Lança',6,4000);
REPLACE INTO `abra_db` VALUES (58,'Estocada',1,4000);
REPLACE INTO `abra_db` VALUES (59,'Lança Bumerangue',4,4000);
REPLACE INTO `abra_db` VALUES (60,'Rapidez com Duas Mãos',1,4000);
REPLACE INTO `abra_db` VALUES (61,'Contra-Ataque',2,4000);
REPLACE INTO `abra_db` VALUES (62,'Impacto de Tyr',6,4000);
-- REPLACE INTO `abra_db` VALUES (63,'Montaria',1,0);
-- REPLACE INTO `abra_db` VALUES (64,'Perícia em Montaria',1,0);
-- REPLACE INTO `abra_db` VALUES (65,'Perícia com Maça',1,0);
REPLACE INTO `abra_db` VALUES (66,'Impositio Manus',1,4000);
REPLACE INTO `abra_db` VALUES (67,'Suffragium',2,4000);
REPLACE INTO `abra_db` VALUES (68,'Aspersio',2,4000);
REPLACE INTO `abra_db` VALUES (69,'B.S. Sacramenti',4,4000);
REPLACE INTO `abra_db` VALUES (70,'Santuário',2,4000);
REPLACE INTO `abra_db` VALUES (71,'Retardar Veneno',1,4000);
REPLACE INTO `abra_db` VALUES (72,'Graça Divina',1,4000);
REPLACE INTO `abra_db` VALUES (73,'Kyrie Eleison',2,4000);
REPLACE INTO `abra_db` VALUES (74,'Magnificat',2,4000);
REPLACE INTO `abra_db` VALUES (75,'Gloria',4,4000);
REPLACE INTO `abra_db` VALUES (76,'Lex Divina',2,4000);
REPLACE INTO `abra_db` VALUES (77,'Esconjurar',2,4000);
REPLACE INTO `abra_db` VALUES (78,'Lex Aeterna',4,4000);
REPLACE INTO `abra_db` VALUES (79,'Magnus Exorcismus',6,4000);
REPLACE INTO `abra_db` VALUES (80,'Coluna de Fogo',2,4000);
REPLACE INTO `abra_db` VALUES (81,'Supernova',2,4000);
-- REPLACE INTO `abra_db` VALUES (82,'Hera de Fogo',1,0);
REPLACE INTO `abra_db` VALUES (83,'Chuva de Meteoros',6,4000);
REPLACE INTO `abra_db` VALUES (84,'Trovão de Júpiter',2,4000);
REPLACE INTO `abra_db` VALUES (85,'Ira de Thor',6,4000);
REPLACE INTO `abra_db` VALUES (86,'Esfera d Água',4,4000);
REPLACE INTO `abra_db` VALUES (87,'Barreira de Gelo',2,4000);
REPLACE INTO `abra_db` VALUES (88,'Congelar',1,4000);
REPLACE INTO `abra_db` VALUES (89,'Nevasca',6,4000);
REPLACE INTO `abra_db` VALUES (90,'Coluna de Pedra',1,4000);
REPLACE INTO `abra_db` VALUES (91,'Fúria da Terra',2,4000);
REPLACE INTO `abra_db` VALUES (92,'Pântano dos Mortos',4,4000);
REPLACE INTO `abra_db` VALUES (93,'Sentido Sobrenatural',1,4000);
-- REPLACE INTO `abra_db` VALUES (94,'Trabalhar Ferro',1,0);
-- REPLACE INTO `abra_db` VALUES (95,'Trabalhar Aço',1,0);
-- REPLACE INTO `abra_db` VALUES (96,'Produzir Pedra Fundamental',1,0);
-- REPLACE INTO `abra_db` VALUES (97,'Perícia com Oridecon',1,0);
-- REPLACE INTO `abra_db` VALUES (98,'Forjar Adaga',1,0);
-- REPLACE INTO `abra_db` VALUES (99,'Forjar Espada',1,0);
-- REPLACE INTO `abra_db` VALUES (100,'Forjar Espada de Duas Mãos',1,0);
-- REPLACE INTO `abra_db` VALUES (101,'Forjar Machado',1,0);
-- REPLACE INTO `abra_db` VALUES (102,'Forjar Maça',1,0);
-- REPLACE INTO `abra_db` VALUES (103,'Forjar Soqueira',1,0);
-- REPLACE INTO `abra_db` VALUES (104,'Forjar Lança',1,0);
-- REPLACE INTO `abra_db` VALUES (105,'Punho Firme',1,0);
-- REPLACE INTO `abra_db` VALUES (106,'Encontrar Minério',1,0);
-- REPLACE INTO `abra_db` VALUES (107,'Perícia em Armamento',1,0);
REPLACE INTO `abra_db` VALUES (108,'Consertar Armas',1,0);
-- REPLACE INTO `abra_db` VALUES (109,'Resistência ao Fogo',1,0);
REPLACE INTO `abra_db` VALUES (110,'Martelo de Thor',1,4000);
REPLACE INTO `abra_db` VALUES (111,'Adrenalina Pura',2,4000);
REPLACE INTO `abra_db` VALUES (112,'Manejo Perfeito',4,4000);
REPLACE INTO `abra_db` VALUES (113,'Força Violenta',4,4000);
REPLACE INTO `abra_db` VALUES (114,'Amplificar Poder',6,4000);
REPLACE INTO `abra_db` VALUES (115,'Armadilha Escorregadia',1,4000);
REPLACE INTO `abra_db` VALUES (116,'Armadilha Atordoante',2,4000);
REPLACE INTO `abra_db` VALUES (117,'Instalar Armadilha',2,4000);
REPLACE INTO `abra_db` VALUES (118,'Armadilha Extenuante',4,4000);
REPLACE INTO `abra_db` VALUES (119,'Armadilha Sonífera',4,4000);
REPLACE INTO `abra_db` VALUES (120,'Armadilha Luminosa',4,4000);
REPLACE INTO `abra_db` VALUES (121,'Armadilha Congelante',4,4000);
REPLACE INTO `abra_db` VALUES (122,'Instalar Mina',4,4000);
REPLACE INTO `abra_db` VALUES (123,'Armadilha Explosiva',6,4000);
REPLACE INTO `abra_db` VALUES (124,'Remover Armadilha',1,4000);
REPLACE INTO `abra_db` VALUES (125,'Mensagem Secreta',1,4000);
-- REPLACE INTO `abra_db` VALUES (126,'Flagelo das Feras',1,0);
-- REPLACE INTO `abra_db` VALUES (127,'Adestrar Falcão',1,0);
-- REPLACE INTO `abra_db` VALUES (128,'Garras de Aço',1,0);
REPLACE INTO `abra_db` VALUES (129,'Ataque Aéreo',4,4000);
REPLACE INTO `abra_db` VALUES (130,'Alerta',1,4000);
REPLACE INTO `abra_db` VALUES (131,'Desativar Armadilha',1,4000);
-- REPLACE INTO `abra_db` VALUES (132,'Perícia com Mão Direita',1,0);
-- REPLACE INTO `abra_db` VALUES (133,'Perícia com Mão Esquerda',1,0);
-- REPLACE INTO `abra_db` VALUES (134,'Perícia com Katar',1,0);
REPLACE INTO `abra_db` VALUES (135,'Furtividade',2,4000);
REPLACE INTO `abra_db` VALUES (136,'Lâminas Destruidoras',2,4000);
REPLACE INTO `abra_db` VALUES (137,'Tocaia',4,4000);
REPLACE INTO `abra_db` VALUES (138,'Envenenar Arma',2,4000);
REPLACE INTO `abra_db` VALUES (139,'Refletir Veneno',2,4000);
REPLACE INTO `abra_db` VALUES (140,'Névoa Tóxica',4,4000);
REPLACE INTO `abra_db` VALUES (141,'Explosão Tóxica',4,4000);
REPLACE INTO `abra_db` VALUES (142,'Primeiros Socorros',1,5000);
REPLACE INTO `abra_db` VALUES (143,'Fingir de Morto',1,5000);
-- REPLACE INTO `abra_db` VALUES (144,'Recuperar HP em Movimento',1,0);
-- REPLACE INTO `abra_db` VALUES (145,'Ataque Fatal',1,0);
REPLACE INTO `abra_db` VALUES (146,'Instinto de Sobrevivência',1,0);
REPLACE INTO `abra_db` VALUES (147,'Fabricar Flechas',1,5000);
REPLACE INTO `abra_db` VALUES (148,'Disparo Violento',1,5000);
REPLACE INTO `abra_db` VALUES (149,'Chutar Areia',1,5000);
REPLACE INTO `abra_db` VALUES (150,'Recuar',1,5000);
REPLACE INTO `abra_db` VALUES (151,'Procurar Pedras',1,5000);
REPLACE INTO `abra_db` VALUES (152,'Arremessar Pedra',1,5000);
REPLACE INTO `abra_db` VALUES (153,'Cavalo-de-Pau',1,5000);
REPLACE INTO `abra_db` VALUES (154,'Personalizar Carrinho',1,5000);
REPLACE INTO `abra_db` VALUES (155,'Grito de Guerra',1,5000);
REPLACE INTO `abra_db` VALUES (156,'Luz Divina',1,5000);
REPLACE INTO `abra_db` VALUES (157,'Proteção Arcana',1,5000);
-- REPLACE INTO `abra_db` VALUES (210,'Mãos Leves',1,0);
REPLACE INTO `abra_db` VALUES (211,'Afanar',1,4000);
REPLACE INTO `abra_db` VALUES (212,'Apunhalar',4,4000);
-- REPLACE INTO `abra_db` VALUES (213,'Túnel de Fuga',1,0);
REPLACE INTO `abra_db` VALUES (214,'Ataque Surpresa',2,4000);
REPLACE INTO `abra_db` VALUES (215,'Remover Arma',4,4000);
REPLACE INTO `abra_db` VALUES (216,'Remover Escudo',4,4000);
REPLACE INTO `abra_db` VALUES (217,'Remover Armadura',4,4000);
REPLACE INTO `abra_db` VALUES (218,'Remover Capacete',4,4000);
REPLACE INTO `abra_db` VALUES (219,'Rapto',4,4000);
REPLACE INTO `abra_db` VALUES (220,'Grafitti',1,4000);
REPLACE INTO `abra_db` VALUES (221,'Pichar',1,0);
REPLACE INTO `abra_db` VALUES (222,'Faxina',4,4000);
-- REPLACE INTO `abra_db` VALUES (223,'Malandragem',1,0);
-- REPLACE INTO `abra_db` VALUES (224,'Extorquir',1,0);
-- REPLACE INTO `abra_db` VALUES (225,'Plágio',1,0);
-- REPLACE INTO `abra_db` VALUES (226,'Perícia com Machado e Espada',1,0);
-- REPLACE INTO `abra_db` VALUES (227,'Pesquisa de Poções',1,0);
REPLACE INTO `abra_db` VALUES (228,'Preparar Poção',1,4000);
REPLACE INTO `abra_db` VALUES (229,'Fogo Grego',2,4000);
REPLACE INTO `abra_db` VALUES (230,'Terror Ácido',2,4000);
REPLACE INTO `abra_db` VALUES (231,'Arremessar Poção',2,4000);
REPLACE INTO `abra_db` VALUES (232,'Criar Monstro Planta',4,4000);
REPLACE INTO `abra_db` VALUES (233,'Criar Esfera Marinha',4,4000);
REPLACE INTO `abra_db` VALUES (234,'Revestir Arma',4,4000);
REPLACE INTO `abra_db` VALUES (235,'Revestir Escudo',4,4000);
REPLACE INTO `abra_db` VALUES (236,'Revestir Armadura',4,4000);
REPLACE INTO `abra_db` VALUES (237,'Revestir Capacete',4,4000);
-- REPLACE INTO `abra_db` VALUES (238,'Bioética',1,0);
-- REPLACE INTO `abra_db` VALUES (239,'Biotecnologia',1,0);
-- REPLACE INTO `abra_db` VALUES (240,'Criar Criatura',1,0);
-- REPLACE INTO `abra_db` VALUES (241,'Cultivo',1,0);
-- REPLACE INTO `abra_db` VALUES (242,'Controle das Chamas',1,0);
-- REPLACE INTO `abra_db` VALUES (243,'Criar Homunculus',1,0);
-- REPLACE INTO `abra_db` VALUES (244,'Vaporizar',1,0);
-- REPLACE INTO `abra_db` VALUES (245,'Semeadeira',1,0);
-- REPLACE INTO `abra_db` VALUES (246,'Curar Homunculus',1,0);
-- REPLACE INTO `abra_db` VALUES (247,'Ressuscitar Homunculus',1,0);
-- REPLACE INTO `abra_db` VALUES (248,'Fé',1,0);
REPLACE INTO `abra_db` VALUES (249,'Bloqueio',1,4000);
REPLACE INTO `abra_db` VALUES (250,'Punição Divina',2,4000);
REPLACE INTO `abra_db` VALUES (251,'Escudo Bumerangue',2,4000);
REPLACE INTO `abra_db` VALUES (252,'Escudo Refletor',4,4000);
REPLACE INTO `abra_db` VALUES (253,'Crux Divinum',2,4000);
REPLACE INTO `abra_db` VALUES (254,'Crux Magnun',6,4000);
REPLACE INTO `abra_db` VALUES (255,'Redenção',4,4000);
REPLACE INTO `abra_db` VALUES (256,'Divina Providência',2,4000);
REPLACE INTO `abra_db` VALUES (257,'Aura Sagrada',4,4000);
REPLACE INTO `abra_db` VALUES (258,'Rapidez com Lança',1,4000);
-- REPLACE INTO `abra_db` VALUES (259,'Punhos de Ferro',1,0);
-- REPLACE INTO `abra_db` VALUES (260,'Meditação',1,0);
REPLACE INTO `abra_db` VALUES (261,'Invocar Esfera Espiritual',1,4000);
REPLACE INTO `abra_db` VALUES (262,'Absorver Esferas Espirituais',1,4000);
-- REPLACE INTO `abra_db` VALUES (263,'Combo Triplo',1,0);
REPLACE INTO `abra_db` VALUES (264,'Passo Etéreo',4,4000);
-- REPLACE INTO `abra_db` VALUES (265,'Cair das Pétalas',1,0);
REPLACE INTO `abra_db` VALUES (266,'Impacto Psíquico',2,4000);
REPLACE INTO `abra_db` VALUES (267,'Disparo de Esferas Espirituais',2,4000);
REPLACE INTO `abra_db` VALUES (268,'Corpo Fechado',4,4000);
REPLACE INTO `abra_db` VALUES (269,'Dilema',2,4000);
REPLACE INTO `abra_db` VALUES (270,'Fúria Interior',2,4000);
REPLACE INTO `abra_db` VALUES (271,'Punho Supremo de Asura',6,4000);
REPLACE INTO `abra_db` VALUES (272,'Combo Quádruplo',1,0);
REPLACE INTO `abra_db` VALUES (273,'O Último Dragão',1,0);
-- REPLACE INTO `abra_db` VALUES (274,'Estudo de Livros',1,0);
REPLACE INTO `abra_db` VALUES (275,'Cancelar Magia',1,4000);
REPLACE INTO `abra_db` VALUES (276,'Espelho Mágico',1,4000);
REPLACE INTO `abra_db` VALUES (277,'Desconcentrar',2,4000);
-- REPLACE INTO `abra_db` VALUES (278,'Conjuração Livre',1,0);
REPLACE INTO `abra_db` VALUES (279,'Desejo Arcano',2,4000);
REPLACE INTO `abra_db` VALUES (280,'Encantar com Chama',2,4000);
REPLACE INTO `abra_db` VALUES (281,'Encantar com Geada',2,4000);
REPLACE INTO `abra_db` VALUES (282,'Encantar com Ventania',2,4000);
REPLACE INTO `abra_db` VALUES (283,'Encantar com Terremoto',2,4000);
-- REPLACE INTO `abra_db` VALUES (284,'Dragonologia',1,0);
REPLACE INTO `abra_db` VALUES (285,'Vulcão',4,4000);
REPLACE INTO `abra_db` VALUES (286,'Dilúvio',4,4000);
REPLACE INTO `abra_db` VALUES (287,'Furacão',4,4000);
REPLACE INTO `abra_db` VALUES (288,'Proteger Terreno',4,4000);
REPLACE INTO `abra_db` VALUES (289,'Desencantar',6,4000);
REPLACE INTO `abra_db` VALUES (290,'Abracadabra',4,4000);
REPLACE INTO `abra_db` VALUES (291,'Mono Cell',4,2500);
REPLACE INTO `abra_db` VALUES (292,'Transformação',8,2500);
REPLACE INTO `abra_db` VALUES (293,'Invocar Monstro',6,3500);
REPLACE INTO `abra_db` VALUES (294,'Transformação Orc',4,5000);
REPLACE INTO `abra_db` VALUES (295,'Extermínio',8,2000);
REPLACE INTO `abra_db` VALUES (296,'Toque de Midas',6,4000);
REPLACE INTO `abra_db` VALUES (297,'Hipnose',6,4000);
REPLACE INTO `abra_db` VALUES (298,'Interrogatório',4,5000);
REPLACE INTO `abra_db` VALUES (299,'Gravity',4,5000);
REPLACE INTO `abra_db` VALUES (300,'Level Up!',10,500);
REPLACE INTO `abra_db` VALUES (301,'Suicídio',4,2000);
REPLACE INTO `abra_db` VALUES (302,'Recuperação',8,3000);
REPLACE INTO `abra_db` VALUES (303,'Coma',4,4000);
REPLACE INTO `abra_db` VALUES (304,'Encerramento',1,0);
REPLACE INTO `abra_db` VALUES (305,'Bis',1,0);
REPLACE INTO `abra_db` VALUES (306,'Cantiga de Ninar',1,0);
REPLACE INTO `abra_db` VALUES (307,'Banquete de Njord',1,0);
REPLACE INTO `abra_db` VALUES (308,'Ritmo Caótico',1,0);
REPLACE INTO `abra_db` VALUES (309,'Rufar dos Tambores',1,0);
REPLACE INTO `abra_db` VALUES (310,'Anel dos Nibelungos',1,0);
REPLACE INTO `abra_db` VALUES (311,'Lamento de Loki',1,0);
REPLACE INTO `abra_db` VALUES (312,'Canção Preciosa',1,0);
REPLACE INTO `abra_db` VALUES (313,'Ode a Siegfried',1,0);
-- REPLACE INTO `abra_db` VALUES (314,'Ragnarok',1,0);
-- REPLACE INTO `abra_db` VALUES (315,'Lições de Música',1,0);
REPLACE INTO `abra_db` VALUES (316,'Flecha Melódica',1,4000);
REPLACE INTO `abra_db` VALUES (317,'Dissonância',1,0);
REPLACE INTO `abra_db` VALUES (318,'Piada Infame',2,4000);
REPLACE INTO `abra_db` VALUES (319,'Assovio',1,0);
REPLACE INTO `abra_db` VALUES (320,'Crepúsculo Sangrento',1,0);
REPLACE INTO `abra_db` VALUES (321,'Poema de Bragi',1,0);
REPLACE INTO `abra_db` VALUES (322,'Maçãs de Idun',1,0);
-- REPLACE INTO `abra_db` VALUES (323,'Lições de Dança',1,0);
REPLACE INTO `abra_db` VALUES (324,'Estilingue',1,4000);
REPLACE INTO `abra_db` VALUES (325,'Dança do Ventre',1,0);
REPLACE INTO `abra_db` VALUES (326,'Escândalo',2,4000);
REPLACE INTO `abra_db` VALUES (327,'Sibilo',1,0);
REPLACE INTO `abra_db` VALUES (328,'Não Me Abandones',1,0);
REPLACE INTO `abra_db` VALUES (329,'Beijo da Sorte',1,0);
REPLACE INTO `abra_db` VALUES (330,'Dança Cigana',1,0);



--
-- Estrutura para a tabela `castle_db`
--         

CREATE TABLE IF NOT EXISTS `castle_db` (
   `CastleID` tinyint(1) unsigned NOT NULL default '0',
   `MapName` text NOT NULL,
   `CastleName` text NOT NULL,
   `OnGuildBreakEventName` text NOT NULL,
   `Flag` tinyint(1) unsigned NOT NULL default '1',
   PRIMARY KEY (`CastleID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*
 Castelos.
 Descrição: Responsável pelo banco de dados dos castelos e seus chamamentos.
 Cabeçalho: REPLACE INTO `castle_db` VALUES ('ID do Castelo','Nome do Mapa','Nome do Castelo','Nome do Evento','Flag');
*/ 

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



--
-- Estrutura para a tabela `guild_skill_tree`
--

CREATE TABLE IF NOT EXISTS `guild_skill_tree` (
	`SkillID` smallint(2) unsigned NOT NULL default '0',
	`MaxLv` tinyint(1) unsigned NOT NULL default '0',
	`PrereqSkillID1` smallint(2) unsigned NOT NULL default '0',
	`PrereqSkillLv1` smallint(2) unsigned NOT NULL default '0',
	`PrereqSkillID2` smallint(2) unsigned NOT NULL default '0',
	`PrereqSkillLv2` smallint(2) unsigned NOT NULL default '0',
	`PrereqSkillID3` smallint(2) unsigned NOT NULL default '0',
	`PrereqSkillLv3` smallint(2) unsigned NOT NULL default '0',
	`PrereqSkillID4` smallint(2) unsigned NOT NULL default '0',
	`PrereqSkillLv4` smallint(2) unsigned NOT NULL default '0',
	`PrereqSkillID5` smallint(2) unsigned NOT NULL default '0',
	`PrereqSkillLv5` smallint(2) unsigned NOT NULL default '0',
	PRIMARY KEY (`SkillID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*
 Requerimentos de Habilidades da Guilda.
 Descrição: Responsável pelos requerimentos necessários para ter uma habilidade de guilda.
 Cabeçalho: REPLACE INTO `guild_skill_tree` VALUES ('ID da Hab','Level Max','Pré-Requesito da Habilidade de ID-1','Level de ID-1',
 'Pré-Requesito da Habilidade de ID-2','Level de ID-2','etc...');
*/ 

REPLACE INTO `guild_skill_tree` VALUES (10000,1,0,0,0,0,0,0,0,0,0,0);						-- 'GD_APPROVAL = Autorização Oficial'
REPLACE INTO `guild_skill_tree` VALUES (10001,1,10000,1,0,0,0,0,0,0,0,0);					-- 'GD_KAFRACONTRACT = Contrato com Kafra'
REPLACE INTO `guild_skill_tree` VALUES (10002,1,10000,1,0,0,0,0,0,0,0,0);					-- 'GD_GUARDRESEARCH = Comandar Guardiões'
REPLACE INTO `guild_skill_tree` VALUES (10003,3,0,0,0,0,0,0,0,0,0,0);						-- 'GD_GUARDUP = Fortalecer Guardiões'
REPLACE INTO `guild_skill_tree` VALUES (10004,10,0,0,0,0,0,0,0,0,0,0);						-- 'GD_EXTENSION = Expandir Clã'
REPLACE INTO `guild_skill_tree` VALUES (10005,0,0,0,0,0,0,0,0,0,0,0);						-- 'GD_GLORYGUILD = Glória da Guilda'
REPLACE INTO `guild_skill_tree` VALUES (10006,5,0,0,0,0,0,0,0,0,0,0);						-- 'GD_LEADERSHIP = Grande Liderança'
REPLACE INTO `guild_skill_tree` VALUES (10007,5,0,0,0,0,0,0,0,0,0,0);						-- 'GD_GLORYWOUNDS = Ferimentos de Glória'
REPLACE INTO `guild_skill_tree` VALUES (10008,5,10007,1,0,0,0,0,0,0,0,0);					-- 'GD_SOULCOLD = Coração de Frio'
REPLACE INTO `guild_skill_tree` VALUES (10009,5,10006,1,0,0,0,0,0,0,0,0);					-- 'GD_HAWKEYES = Olhar Apurado'
REPLACE INTO `guild_skill_tree` VALUES (10010,1,10000,1,10004,2,0,0,0,0,0,0);				-- 'GD_BATTLEORDER = Comando de Batalha'
REPLACE INTO `guild_skill_tree` VALUES (10011,3,10000,1,10004,5,10010,1,0,0,0,0);			-- 'GD_REGENERATION = Regeneração'
REPLACE INTO `guild_skill_tree` VALUES (10012,1,10011,1,0,0,0,0,0,0,0,0);					-- 'GD_RESTORE = Restauração'
REPLACE INTO `guild_skill_tree` VALUES (10013,1,10000,1,10002,1,10004,5,10010,1,10011,1);	-- 'GD_EMERGENCYCALL = Chamado Urgente'
REPLACE INTO `guild_skill_tree` VALUES (10014,1,0,0,0,0,0,0,0,0,0,0);						-- 'GD_DEVELOPMENT = Desenvolvimento Permanente'



--
-- Estrutura para a tabela `spellbook_db`
-- 

CREATE TABLE IF NOT EXISTS `spellbook_db` (
	`SkillID` smallint(2) unsigned NOT NULL default '0',
	`PreservePoints` tinyint(1) unsigned NOT NULL default '0',
	`BookID` smallint(2) unsigned NOT NULl default '0',
	PRIMARY KEY (`SkillID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*
 Habilidade Estudo Arcano.
 Descrição: Responsável pela preservação de pontos da habilidade Estudo Arcano.
 Cabeçalho: REPLACE INTO `spellbook_db` VALUES ('ID da Habilidade','Pontos Preservados','Livro Requerido');
*/ 


-- 'Mago'
REPLACE INTO `spellbook_db` VALUES (14,7,6190);	-- 'Lanças de Gelo'
REPLACE INTO `spellbook_db` VALUES (19,7,6189);	-- 'Lanças de Fogo'
REPLACE INTO `spellbook_db` VALUES (20,7,6191);	-- 'Relâmpago'
REPLACE INTO `spellbook_db` VALUES (21,9,6197);	-- 'Tempestade de Raios'

-- 'Bruxo'
REPLACE INTO `spellbook_db` VALUES (83,10,6194);	-- 'Chuva de Meteoros'
REPLACE INTO `spellbook_db` VALUES (84,9,6198);	-- 'Trovão de Júpiter'
REPLACE INTO `spellbook_db` VALUES (85,10,6193);	-- 'Ira de Thor'
REPLACE INTO `spellbook_db` VALUES (86,9,6199);	-- 'Esfera d Àgua'
REPLACE INTO `spellbook_db` VALUES (89,10,6192);	-- 'Nevasca'
REPLACE INTO `spellbook_db` VALUES (90,8,6201);	-- 'Coluna de Pedra'
REPLACE INTO `spellbook_db` VALUES (91,9,6200);	-- 'Fúria da Terra'

-- 'Arcano'
REPLACE INTO `spellbook_db` VALUES (2210,8,6205);	-- 'Drenar Vida'
REPLACE INTO `spellbook_db` VALUES (2211,12,6204);	-- 'Meteoro Escarlate'
REPLACE INTO `spellbook_db` VALUES (2213,22,6195);	-- 'Cometa'
REPLACE INTO `spellbook_db` VALUES (2214,12,6203);	-- 'Corrente Elétrica'
REPLACE INTO `spellbook_db` VALUES (2216,12,6202);	-- 'Abálo Sísmico'
REPLACE INTO `spellbook_db` VALUES (2217,22,6196);	-- 'Tetra Vortex'



--
-- Estrutura para a tabela `improvise_db`
-- 

CREATE TABLE IF NOT EXISTS `improvise_db` (
	`SkillID` smallint(2) unsigned NOT NULL default '0',
	`Rate` smallint(2) unsigned NOT NULL default '0',
	PRIMARY KEY (`SkillID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*
 Habilidade improvisar.
 Descrição: Responsável pelo uso de habilidades de várias classes ao usar a habilidade
 Cabeçalho: REPLACE INTO `improvise_db` VALUES ('ID da Habilidade','Chance de Uso');
*/ 


-- 'Mago'
REPLACE INTO `improvise_db` VALUES (10,5000);	-- 'Chama Reveladora'
REPLACE INTO `improvise_db` VALUES (11,5000);	-- 'Ataque Espiritual'
REPLACE INTO `improvise_db` VALUES (12,5000);	-- 'Escudo Mágico'
REPLACE INTO `improvise_db` VALUES (13,5000);	-- 'Espíritos Anciões'
REPLACE INTO `improvise_db` VALUES (14,5000);	-- 'Lanças de Gelo'
REPLACE INTO `improvise_db` VALUES (15,5000);	-- 'Rajada Congelante'
REPLACE INTO `improvise_db` VALUES (16,5000);	-- 'Petrificar'
REPLACE INTO `improvise_db` VALUES (17,5000);	-- 'Bolas de Fogo'
REPLACE INTO `improvise_db` VALUES (18,5000);	-- 'Barreira de Fogo'
REPLACE INTO `improvise_db` VALUES (19,5000);	-- 'Lanças de Fogo'
REPLACE INTO `improvise_db` VALUES (20,5000);	-- 'Relâmpago'
REPLACE INTO `improvise_db` VALUES (21,5000);	-- 'Tempestade de Raios'

-- 'Bruxo'
REPLACE INTO `improvise_db` VALUES (80,2500);	-- 'Coluna de Fogo'
REPLACE INTO `improvise_db` VALUES (81,2500);	-- 'Supernova'
REPLACE INTO `improvise_db` VALUES (83,2500);	-- 'Chuva de Meteoros'
REPLACE INTO `improvise_db` VALUES (84,2500);	-- 'Trovão de Júpiter'
REPLACE INTO `improvise_db` VALUES (85,2500);	-- 'Ira de Thor'
REPLACE INTO `improvise_db` VALUES (86,2500);	-- 'Esfera d Água'
REPLACE INTO `improvise_db` VALUES (87,2500);	-- 'Barreira de Gelo'
REPLACE INTO `improvise_db` VALUES (88,2500);	-- 'Congelar'
REPLACE INTO `improvise_db` VALUES (89,2500);	-- 'Nevasca'
REPLACE INTO `improvise_db` VALUES (90,2500);	-- 'Coluna de Pedra'
REPLACE INTO `improvise_db` VALUES (91,2500);	-- 'Fúria da Terra'
REPLACE INTO `improvise_db` VALUES (92,2500);	-- 'Pântano dos Mortos'
REPLACE INTO `improvise_db` VALUES (93,2500);	-- 'Sentido Sobrenatural'



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



--
-- Estrutura para a tabela `reproduce_db`
-- 

CREATE TABLE IF NOT EXISTS `reproduce_db` (
	`SkillID` smallint(2) unsigned NOT NULL default '0',
	PRIMARY KEY (`SkillID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*
 Habilidade Mimetismo.
 Descrição: Responsável pelo uso de habilidades de várias classes ao usar a habilidade Mimetismo.
 Cabeçalho: REPLACE INTO `reproduce_db` VALUES ('ID da Habilidade');
*/ 

-- 'Espadachim'
REPLACE INTO `reproduce_db` VALUES (5);		-- 'Golpe Fuminante'
REPLACE INTO `reproduce_db` VALUES (7);		-- 'Impacto Explosivo'

-- 'Mago'
REPLACE INTO `reproduce_db` VALUES (11);	-- 'Ataque Espiritual'
REPLACE INTO `reproduce_db` VALUES (13);	-- 'Espíritos Anciões'
REPLACE INTO `reproduce_db` VALUES (14);	-- 'Lanças de Gelo'
REPLACE INTO `reproduce_db` VALUES (15);	-- 'Rajada Congelante'
REPLACE INTO `reproduce_db` VALUES (17);	-- 'Bolas de Fogo'
REPLACE INTO `reproduce_db` VALUES (18);	-- 'Barreira de Fogo'
REPLACE INTO `reproduce_db` VALUES (19);	-- 'Lanças de Fogo'
REPLACE INTO `reproduce_db` VALUES (20);	-- 'Relâmpago'
REPLACE INTO `reproduce_db` VALUES (21);	-- 'Tempestade de Raios'

-- 'Noviço'
REPLACE INTO `reproduce_db` VALUES (24);	-- 'Revelação'
REPLACE INTO `reproduce_db` VALUES (28);	-- 'Curar'

-- 'Mercador'
REPLACE INTO `reproduce_db` VALUES (42);	-- 'Mammonita'

-- 'Arqueiro'
REPLACE INTO `reproduce_db` VALUES (46);	-- 'Double Strafe'
REPLACE INTO `reproduce_db` VALUES (47);	-- 'Arrow Shower'

-- 'Gatuno'
REPLACE INTO `reproduce_db` VALUES (52);	-- 'Envenenar'

-- 'Compartilhadas'
REPLACE INTO `reproduce_db` VALUES (54);	-- 'Ressucitar'

-- 'Cavaleiro'
REPLACE INTO `reproduce_db` VALUES (62);	-- 'Impacto de Tyr'

-- 'Sacerdote'
REPLACE INTO `reproduce_db` VALUES (68);	-- 'Aspersio'
REPLACE INTO `reproduce_db` VALUES (69);	-- 'B.S Sacramenti'
REPLACE INTO `reproduce_db` VALUES (70);	-- 'Santuário'
REPLACE INTO `reproduce_db` VALUES (77);	-- 'Esconjurar'
REPLACE INTO `reproduce_db` VALUES (79);	-- 'Magnus Exorcismus'

-- 'Bruxo'
REPLACE INTO `reproduce_db` VALUES (80);	-- 'Coluna de Fogo'
REPLACE INTO `reproduce_db` VALUES (81);	-- 'Supernova'
REPLACE INTO `reproduce_db` VALUES (83);	-- 'Chuva de Meteoros'
REPLACE INTO `reproduce_db` VALUES (84);	-- 'Trovão de Júpiter'
REPLACE INTO `reproduce_db` VALUES (85);	-- 'Ira de Thor'
REPLACE INTO `reproduce_db` VALUES (86);	-- 'Esfera d Água'
REPLACE INTO `reproduce_db` VALUES (88);	-- 'Congelar'
REPLACE INTO `reproduce_db` VALUES (89);	-- 'Nevasca'
REPLACE INTO `reproduce_db` VALUES (90);	-- 'Coluna de Pedra'
REPLACE INTO `reproduce_db` VALUES (91);	-- 'Fúria da Terra'

-- 'Caçador'
REPLACE INTO `reproduce_db` VALUES (116);	-- 'Armadilha Atordoante'
REPLACE INTO `reproduce_db` VALUES (121);	-- 'Armadilha Congelante'
REPLACE INTO `reproduce_db` VALUES (122);	-- 'Instalar Mina'
REPLACE INTO `reproduce_db` VALUES (123);	-- 'Armadilha Explosiva'

-- 'Mercenário'
REPLACE INTO `reproduce_db` VALUES (141);	-- 'Explosão Tóxica'

-- 'Habilidades de Platina'
REPLACE INTO `reproduce_db` VALUES (148);	-- 'Disparo Violento'
REPLACE INTO `reproduce_db` VALUES (152);	-- 'Arremessar Pedra'
REPLACE INTO `reproduce_db` VALUES (156);	-- 'Luz Divina'

-- 'Arruaceiro'
REPLACE INTO `reproduce_db` VALUES (212);	-- 'Apunhalar'

-- 'Alquimista'
REPLACE INTO `reproduce_db` VALUES (229);	-- 'Fogo Grego'
REPLACE INTO `reproduce_db` VALUES (230);	-- 'Terror Ácido'

-- 'Templário'
REPLACE INTO `reproduce_db` VALUES (250);	-- 'Punição Divina'
REPLACE INTO `reproduce_db` VALUES (251);	-- 'Escudo Bumerangue'
REPLACE INTO `reproduce_db` VALUES (253);	-- 'Crux Divinum'
REPLACE INTO `reproduce_db` VALUES (254);	-- 'Crux Magnun'

-- 'Monge'
REPLACE INTO `reproduce_db` VALUES (263);	-- 'Combo Triplo'
REPLACE INTO `reproduce_db` VALUES (266);	-- 'Impacto Psíquico'
REPLACE INTO `reproduce_db` VALUES (267);	-- 'Disparo de Esferas Espirituais'
REPLACE INTO `reproduce_db` VALUES (271);	-- 'Punho Supremo de Asura'
REPLACE INTO `reproduce_db` VALUES (272);	-- 'Combo Quádruplo'

-- 'Habilidades de NPC, Casamento e Itens'
REPLACE INTO `reproduce_db` VALUES (337);	-- 'Arremessar Tomahawk'

-- 'Taekwon'
REPLACE INTO `reproduce_db` VALUES (421);	-- 'Chute Aéreo'

-- 'Ninja'
REPLACE INTO `reproduce_db` VALUES (526);	-- 'Chuva de Moedas'
REPLACE INTO `reproduce_db` VALUES (527);	-- 'Virar Tatami'
REPLACE INTO `reproduce_db` VALUES (528);	-- 'Corte da Névoa'
REPLACE INTO `reproduce_db` VALUES (529);	-- 'Salto das Sombras'
REPLACE INTO `reproduce_db` VALUES (531);	-- 'Troca de Pele'
REPLACE INTO `reproduce_db` VALUES (534);	-- 'Pétalas Flamejantes'
REPLACE INTO `reproduce_db` VALUES (536);	-- 'Dragão Explosivo'
REPLACE INTO `reproduce_db` VALUES (537);	-- 'Lança Congelante'
REPLACE INTO `reproduce_db` VALUES (539);	-- 'Grande Floco de Neve'
REPLACE INTO `reproduce_db` VALUES (540);	-- 'Lâmina de Vento'
REPLACE INTO `reproduce_db` VALUES (541);	-- 'Descarga Elétrica'
REPLACE INTO `reproduce_db` VALUES (542);	-- 'Brisa Cortante'

-- 'Habilidades Extras das Classes Transcedentais'
REPLACE INTO `reproduce_db` VALUES (1001);	-- 'Avanço Ofensivo'
REPLACE INTO `reproduce_db` VALUES (1004);	-- 'Faca Envenenada'
REPLACE INTO `reproduce_db` VALUES (1006);	-- 'Explosão Protetora'
REPLACE INTO `reproduce_db` VALUES (1009);	-- 'Flecha Fantasma'
REPLACE INTO `reproduce_db` VALUES (1015);	-- 'Concessão Espiritual'

-- 'Cavaleiro Rúnico'
REPLACE INTO `reproduce_db` VALUES (2002);	-- 'Onda de Choque'
REPLACE INTO `reproduce_db` VALUES (2005);	-- 'Vento Cortante'
REPLACE INTO `reproduce_db` VALUES (2006);	-- 'Impacto Flamejante'

-- 'Sicário'
REPLACE INTO `reproduce_db` VALUES (2022);	-- 'Lâminas Retalhadoras'
REPLACE INTO `reproduce_db` VALUES (2023);	-- 'Passo Sombrio'
REPLACE INTO `reproduce_db` VALUES (2034);	-- 'Ameaça Fantasma'

-- 'Arcebispo'
REPLACE INTO `reproduce_db` VALUES (2038);	-- 'Judex'
REPLACE INTO `reproduce_db` VALUES (2040);	-- 'Adoramus'
REPLACE INTO `reproduce_db` VALUES (2051);	-- 'Curatio'
REPLACE INTO `reproduce_db` VALUES (2054);	-- 'Gemini Lumen'

-- 'Arcano'
REPLACE INTO `reproduce_db` VALUES (2202);	-- 'Impacto Espiritual'
REPLACE INTO `reproduce_db` VALUES (2203);	-- 'Zero Absoluto'
REPLACE INTO `reproduce_db` VALUES (2204);	-- 'Esquife de Gelo'
REPLACE INTO `reproduce_db` VALUES (2210);	-- 'Drenar Vida'
REPLACE INTO `reproduce_db` VALUES (2211);	-- 'Meteoro Escarlate'
REPLACE INTO `reproduce_db` VALUES (2212);	-- 'Chamas de Hela'
REPLACE INTO `reproduce_db` VALUES (2213);	-- 'Cometa'
REPLACE INTO `reproduce_db` VALUES (2214);	-- 'Corrente Elétrica'
REPLACE INTO `reproduce_db` VALUES (2216);	-- 'Abalo Sísmico'

-- 'Sentinela'
REPLACE INTO `reproduce_db` VALUES (2233);	-- 'Tempestade de Flechas'
REPLACE INTO `reproduce_db` VALUES (2236);	-- 'Disparo Certeiro'
REPLACE INTO `reproduce_db` VALUES (2239);	-- 'Bomba Relógio'
REPLACE INTO `reproduce_db` VALUES (2253);	-- 'Armadilha Incendiária'
REPLACE INTO `reproduce_db` VALUES (2254);	-- 'Armadilha Glacial'

-- 'Renegado'
REPLACE INTO `reproduce_db` VALUES (2284);	-- 'Acerto de Contas'
REPLACE INTO `reproduce_db` VALUES (2288);	-- 'Disparo Triplo'
REPLACE INTO `reproduce_db` VALUES (2304);	-- 'Cópia Explosiva'

-- 'Guardião Real'
REPLACE INTO `reproduce_db` VALUES (2310);	-- 'Escudo Compressor'
REPLACE INTO `reproduce_db` VALUES (2315);	-- 'Aegis Domini'
REPLACE INTO `reproduce_db` VALUES (2316);	-- 'Exceder Limite'
REPLACE INTO `reproduce_db` VALUES (2320);	-- 'Espiral Lunar'
REPLACE INTO `reproduce_db` VALUES (2323);	-- 'Aegis Inferi'

-- 'Shura'
REPLACE INTO `reproduce_db` VALUES (2326);	-- 'Punho do Dragão'
REPLACE INTO `reproduce_db` VALUES (2327);	-- 'Soco Furação'
REPLACE INTO `reproduce_db` VALUES (2328);	-- 'Impacto Sísmico'
REPLACE INTO `reproduce_db` VALUES (2330);	-- 'Garra de Tigre'
REPLACE INTO `reproduce_db` VALUES (2332);	-- 'Explosão Espiritual'
REPLACE INTO `reproduce_db` VALUES (2336);	-- 'Investida de Shura'
REPLACE INTO `reproduce_db` VALUES (2337);	-- 'Rasteira'
REPLACE INTO `reproduce_db` VALUES (2343);	-- 'Portões do Inferno'
REPLACE INTO `reproduce_db` VALUES (2344);	-- 'Chakra do Silêncio'
REPLACE INTO `reproduce_db` VALUES (2517);	-- 'Rugido do Leão'
REPLACE INTO `reproduce_db` VALUES (2518);	-- 'Tempestade Espiritual'

-- 'Trovador & Musa'
REPLACE INTO `reproduce_db` VALUES (2413);	-- 'Ruído Estridente'
REPLACE INTO `reproduce_db` VALUES (2414);	-- 'Ressonância'
REPLACE INTO `reproduce_db` VALUES (2418);	-- 'Temporal de Mil Flechas'

-- 'Feiticeiro'
REPLACE INTO `reproduce_db` VALUES (2443);	-- 'Passos da Salamandra'
REPLACE INTO `reproduce_db` VALUES (2444);	-- 'Passos da Sílfide'
REPLACE INTO `reproduce_db` VALUES (2446);	-- 'Castigo de Nerthus'
REPLACE INTO `reproduce_db` VALUES (2447);	-- 'Pó de Diamante'
REPLACE INTO `reproduce_db` VALUES (2448);	-- 'Implosão Tóxica'
REPLACE INTO `reproduce_db` VALUES (2449);	-- 'Onda Psíquica'
REPLACE INTO `reproduce_db` VALUES (2450);	-- 'Maldição de Jormungand'
REPLACE INTO `reproduce_db` VALUES (2454);	-- 'Lanças de Aesir'

-- 'Bioquímico'
REPLACE INTO `reproduce_db` VALUES (2479);	-- 'Armadilha de Espinhos'
REPLACE INTO `reproduce_db` VALUES (2480);	-- 'Planta Sanguessuga'
REPLACE INTO `reproduce_db` VALUES (2481);	-- 'Esporo Explosivo'
REPLACE INTO `reproduce_db` VALUES (2482);	-- 'Muralha de Espinhos'
REPLACE INTO `reproduce_db` VALUES (2483);	-- 'Erva Daninha'
REPLACE INTO `reproduce_db` VALUES (2490);	-- 'Planta Infernal'