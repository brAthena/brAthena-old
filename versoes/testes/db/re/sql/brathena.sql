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



--
-- Estrutura para a tabela `mercenary_db`
-- 

CREATE TABLE IF NOT EXISTS `mercenary_db` (
	`ID` smallint(2) unsigned NOT NULL default '0',
	`Sprite` text NOT NULL,
	`Name` text NOT NULL,
	`LV` tinyint(1) unsigned NOT NULL default '0',
	`HP` smallint(2) unsigned NOT NULL default '0',
	`SP` smallint(2) unsigned NOT NULL default '0',
	`Range1` tinyint(4) unsigned NOT NULL default '0',
	`ATK1` smallint(2) unsigned NOT NULL default '0',
	`ATK2` smallint(2) unsigned NOT NULL default '0',
	`DEF` smallint(2) unsigned NOT NULL default '0',
	`MDEF` smallint(2) unsigned NOT NULL default '0',
	`STR` smallint(2) unsigned NOT NULL default '0',
	`AGI` smallint(2) unsigned NOT NULL default '0',
	`VIT` smallint(2) unsigned NOT NULL default '0',
	`INT` smallint(2) unsigned NOT NULL default '0',
	`DEX` smallint(2) unsigned NOT NULL default '0',
	`LUK` smallint(2) unsigned NOT NULL default '0',
	`Range2` tinyint(1) unsigned NOT NULL default '0',
	`Range3` tinyint(1) unsigned NOT NULL default '0',
	`Scale` tinyint(1) unsigned NOT NULL default '0',
	`Race` tinyint(1) unsigned NOT NULL default '0',
	`Element` tinyint(1) unsigned NOT NULL default '0',
	`Speed` smallint(2) unsigned NOT NULL default '0',
	`aDelay` smallint(2) unsigned NOT NULL default '0',
	`aMotion` smallint(2) unsigned NOT NULL default '0',
	`dMotion` smallint(2) unsigned NOT NULL default '0',
	PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*
 Homuncuus.
 Descrição: Responsável pelo banco de dados de mercenários.
 Cabeçalho: REPLACE INTO `mercenary_db` VALUES ('ID','Nome da Sprite','Nome do Mercenário','LV','HP','SP','Range1','ATK1','ATK2','DEF','MDEF','STR','AGI',
 'VIT','INT','DEX','LUK','Range2','Range3','Scale','Race','Element','Speed','aDelay','aMotion','dMotion');
*/

REPLACE INTO `mercenary_db` VALUES (1191,'MIMIC','Mímico',51,6120,187,2,150,900,10,40,44,121,1,60,75,110,10,12,1,0,60,100,972,500,288);
REPLACE INTO `mercenary_db` VALUES (1506,'DISGUISE','Mascarado',55,7543,180,2,279,546,18,29,0,72,45,35,48,65,10,12,1,6,82,147,516,768,384);
REPLACE INTO `mercenary_db` VALUES (1275,'ALICE','Alice',62,10000,221,2,550,700,5,5,64,64,42,85,100,130,10,12,1,7,60,200,502,2304,480);
REPLACE INTO `mercenary_db` VALUES (1965,'M_WILD_ROSE','Rosa Selvagem',38,2980,130,2,315,360,0,15,65,85,15,35,65,80,10,12,0,2,24,100,964,864,288);
REPLACE INTO `mercenary_db` VALUES (1966,'M_DOPPELGANGER','Doppelganger',72,249000,200,2,1340,1590,60,35,88,90,30,35,125,65,10,12,1,6,67,100,480,480,288);
REPLACE INTO `mercenary_db` VALUES (1967,'M_YGNIZEM','Egnigem Cenia',58,11200,320,2,823,1212,35,8,60,35,52,18,79,20,10,12,1,7,43,145,576,432,288);
REPLACE INTO `mercenary_db` VALUES (2000,'M_GAMEMASTER','[GM] Game Master',50,7000,250,2,100,50,6,17,1,109,1,60,215,111,10,0,0,7,20,150,450,432,300);
REPLACE INTO `mercenary_db` VALUES (2001,'F_GAMEMASTER','[GM] Game Master',50,7000,250,2,100,50,6,17,1,109,1,60,215,111,10,0,0,7,20,150,450,432,300);
REPLACE INTO `mercenary_db` VALUES (2034,'M_DESERT_WOLF_B','Baby Desert Wolf',9,164,15,1,500,600,0,0,1,9,9,5,40,40,10,12,0,2,23,100,1600,900,240);
REPLACE INTO `mercenary_db` VALUES (2037,'VALKYRIE_A','Valkyrie Randgris',90,5000,15,1,10,160,10,20,1,20,40,0,20,20,10,12,1,8,66,100,576,576,480);
REPLACE INTO `mercenary_db` VALUES (2038,'VALKYRIE_B','Valkyrie Randgris',90,10000,15,1,300,450,10,40,1,20,80,0,80,20,10,12,1,8,66,100,576,576,480);
REPLACE INTO `mercenary_db` VALUES (2058,'M_MIMIC','Mimic',51,6120,182,1,800,950,10,40,44,121,1,60,75,110,10,12,1,0,60,100,972,500,288);
REPLACE INTO `mercenary_db` VALUES (2059,'M_DISGUISE','Disguise',55,7543,180,2,526,693,18,29,0,72,45,35,48,65,10,12,1,6,82,147,516,768,384);
REPLACE INTO `mercenary_db` VALUES (2060,'M_ALICE','Alice',62,10000,221,1,700,850,5,5,64,64,42,85,100,130,10,12,1,7,60,200,502,1999,480);
REPLACE INTO `mercenary_db` VALUES (6017,'MER_ARCHER01','Mina',20,256,200,10,170,85,7,5,1,16,5,1,28,8,10,0,0,7,20,150,700,432,300);
REPLACE INTO `mercenary_db` VALUES (6018,'MER_ARCHER02','Dororu',30,457,70,10,228,114,11,7,1,18,8,1,40,11,10,0,0,7,20,150,700,432,300);
REPLACE INTO `mercenary_db` VALUES (6019,'MER_ARCHER03','Nami',40,732,93,10,260,130,15,9,3,21,12,4,52,17,10,0,0,7,20,150,700,432,300);
REPLACE INTO `mercenary_db` VALUES (6020,'MER_ARCHER04','Elfin',50,1092,116,10,310,155,18,11,5,33,17,6,60,23,10,0,0,7,20,150,575,432,300);
REPLACE INTO `mercenary_db` VALUES (6021,'MER_ARCHER05','Clara',60,2212,280,10,360,180,20,13,5,41,17,12,75,30,10,0,0,7,20,150,575,432,300);
REPLACE INTO `mercenary_db` VALUES (6022,'MER_ARCHER06','Dali',70,3098,353,10,424,212,21,15,11,46,24,22,83,37,10,0,0,7,20,150,575,432,300);
REPLACE INTO `mercenary_db` VALUES (6023,'MER_ARCHER07','Karaya',80,4051,415,10,468,234,22,16,14,55,27,26,91,44,10,0,0,7,20,150,450,432,300);
REPLACE INTO `mercenary_db` VALUES (6024,'MER_ARCHER08','Hiyori',90,5039,469,10,482,241,24,18,19,65,27,27,103,49,10,0,0,7,20,150,450,432,300);
REPLACE INTO `mercenary_db` VALUES (6025,'MER_ARCHER09','Kero',95,5572,499,10,500,250,25,20,20,71,27,28,110,51,10,0,0,7,20,150,450,432,300);
REPLACE INTO `mercenary_db` VALUES (6026,'MER_ARCHER10','Sukye',99,7381,642,10,816,308,49,49,21,83,27,28,123,52,10,0,0,7,20,150,450,432,300);
REPLACE INTO `mercenary_db` VALUES (6027,'MER_LANCER01','David',22,2071,100,2,168,84,30,1,27,1,4,1,30,2,10,0,0,7,20,150,700,432,300);
REPLACE INTO `mercenary_db` VALUES (6028,'MER_LANCER02','Ellen',34,2523,131,2,208,104,33,1,37,1,4,1,37,4,10,0,0,7,20,150,700,432,300);
REPLACE INTO `mercenary_db` VALUES (6029,'MER_LANCER03','Luise',41,3397,161,2,248,124,36,5,45,1,22,1,40,6,10,0,0,7,20,150,700,432,300);
REPLACE INTO `mercenary_db` VALUES (6030,'MER_LANCER04','Frank',55,4580,191,2,300,150,39,5,55,2,35,1,50,8,10,0,0,7,20,150,575,432,300);
REPLACE INTO `mercenary_db` VALUES (6031,'MER_LANCER05','Ryan',60,5899,221,2,350,160,42,10,65,2,39,1,60,10,10,0,0,7,20,150,575,432,300);
REPLACE INTO `mercenary_db` VALUES (6032,'MER_LANCER06','Paolo',72,7874,252,2,370,185,46,10,75,3,15,77,61,12,10,0,0,7,20,150,575,432,300);
REPLACE INTO `mercenary_db` VALUES (6033,'MER_LANCER07','Jens',81,10260,330,2,380,190,50,15,85,3,63,20,61,14,10,0,0,7,20,150,450,432,300);
REPLACE INTO `mercenary_db` VALUES (6034,'MER_LANCER08','Thierry',90,13167,366,2,400,200,55,20,95,20,74,20,63,16,10,0,0,7,20,150,450,432,300);
REPLACE INTO `mercenary_db` VALUES (6035,'MER_LANCER09','Steven',95,14648,398,2,440,220,60,25,100,25,77,25,63,18,10,0,0,7,20,150,450,432,300);
REPLACE INTO `mercenary_db` VALUES (6036,'MER_LANCER10','Wayne',99,18000,413,2,700,250,70,30,120,30,90,30,70,30,10,0,0,7,20,150,450,432,300);
REPLACE INTO `mercenary_db` VALUES (6037,'MER_SWORDMAN01','Rodin',20,502,70,2,174,87,26,0,21,27,5,1,30,3,10,0,0,7,20,150,700,432,300);
REPLACE INTO `mercenary_db` VALUES (6038,'MER_SWORDMAN02','Lancer',30,979,99,2,258,129,31,0,26,38,6,1,35,3,10,0,0,7,20,150,700,432,300);
REPLACE INTO `mercenary_db` VALUES (6039,'MER_SWORDMAN03','Nathan',40,1555,134,2,326,163,36,3,31,45,7,6,40,6,10,0,0,7,20,150,700,432,300);
REPLACE INTO `mercenary_db` VALUES (6040,'MER_SWORDMAN04','Roan',50,2397,162,2,382,191,39,5,37,59,8,6,40,6,10,0,0,7,20,150,575,432,300);
REPLACE INTO `mercenary_db` VALUES (6041,'MER_SWORDMAN05','Orizaro',60,3387,195,2,406,203,42,7,48,68,9,6,45,9,10,0,0,7,20,150,575,432,300);
REPLACE INTO `mercenary_db` VALUES (6042,'MER_SWORDMAN06','Thyla',70,4495,241,2,436,218,45,12,53,79,10,12,50,9,10,0,0,7,20,150,575,432,300);
REPLACE INTO `mercenary_db` VALUES (6043,'MER_SWORDMAN07','Ben',80,5889,279,2,468,234,47,15,59,88,11,12,55,12,10,0,0,7,20,150,450,432,300);
REPLACE INTO `mercenary_db` VALUES (6044,'MER_SWORDMAN08','Pinaka',90,7520,325,2,500,250,49,18,70,95,12,18,60,15,10,0,0,7,20,150,450,432,300);
REPLACE INTO `mercenary_db` VALUES (6045,'MER_SWORDMAN09','Kuhlmann',95,9052,348,2,524,262,51,22,80,95,18,18,60,15,10,0,0,7,20,150,450,432,300);
REPLACE INTO `mercenary_db` VALUES (6046,'MER_SWORDMAN10','Roux',99,12355,451,2,760,280,64,30,99,105,30,30,60,30,10,0,0,7,20,150,450,432,300);



--
-- Estrutura para a tabela `mercenary_skill_db`
--    

CREATE TABLE IF NOT EXISTS `mercenary_skill_db` (
	`MercenaryID` smallint(2) unsigned NOT NULL default '0',
	`SkillID` smallint(2) unsigned NOT NULL default '0',
	`SkillLevel` tinyint(1) unsigned NOT NULL default '0',
	PRIMARY KEY (`SkillID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*
 Habilidades de Assistentes.
 Descrição: Responsável pelo banco de dados de habilidades dos assistentes mercenários.
 Cabeçalho: REPLACE INTO `mercenary_skill_db` VALUES ('ID do Assistente','ID da Habilidade','Nível da Habilidade');
*/ 

REPLACE INTO `mercenary_skill_db` VALUES (6017,8207,2);			-- 'MA_DOUBLE = Rajada de Flechas'
REPLACE INTO `mercenary_skill_db` VALUES (6017,8233,1);			-- 'MER_AUTOBERSERK = Instinto de Sobrevivência Automático'
REPLACE INTO `mercenary_skill_db` VALUES (6018,8208,2);			-- 'MA_SHOWER = Chuva de Flechas'
REPLACE INTO `mercenary_skill_db` VALUES (6018,8224,1);			-- 'MER_SIGHT = Chama Reveladora'
REPLACE INTO `mercenary_skill_db` VALUES (6019,8214,1);			-- 'MA_CHARGEARROW = Carregar Flechas'
REPLACE INTO `mercenary_skill_db` VALUES (6019,8223,1);			-- 'MER_QUICKEN = Rapidez com Arma'
REPLACE INTO `mercenary_skill_db` VALUES (6020,8237,1);			-- 'MER_ESTIMATION = Propriedades do Monstro'
REPLACE INTO `mercenary_skill_db` VALUES (6020,8222,1);			-- 'MER_MAGNIFICAT = Magnificat'
REPLACE INTO `mercenary_skill_db` VALUES (6020,8227,1);			-- 'MER_TENDER = Amolecer'
REPLACE INTO `mercenary_skill_db` VALUES (6021,8207,5);			-- 'MA_DOUBLE = Rajada de Flechas'
REPLACE INTO `mercenary_skill_db` VALUES (6021,8232,1);			-- 'MER_PROVOKE = Provocar'
REPLACE INTO `mercenary_skill_db` VALUES (6021,8213,1);			-- 'MA_REMOVETRAP = Remover Armadilha'
REPLACE INTO `mercenary_skill_db` VALUES (6022,8207,7);			-- 'MA_DOUBLE = Rajada de Flechas'
REPLACE INTO `mercenary_skill_db` VALUES (6022,8209,3);			-- 'MA_SKIDTRAP = Armadilha Escorregadia'
REPLACE INTO `mercenary_skill_db` VALUES (6022,8234,1);			-- 'MER_DECAGI = Diminuir Agilidade'
REPLACE INTO `mercenary_skill_db` VALUES (6023,8208,10);		-- 'MA_SHOWER = Chuva de Flechas'
REPLACE INTO `mercenary_skill_db` VALUES (6023,8230,1);			-- 'MER_MENTALCURE = Cura Mental'
REPLACE INTO `mercenary_skill_db` VALUES (6023,8212,2);			-- 'MA_FREEZINGTRAP = Armadilha Congelante'
REPLACE INTO `mercenary_skill_db` VALUES (6024,8223,2);			-- 'MER_QUICKEN = Rapidez com Arma'
REPLACE INTO `mercenary_skill_db` VALUES (6024,8232,3);			-- 'MER_PROVOKE = Provocar'
REPLACE INTO `mercenary_skill_db` VALUES (6024,8211,3);			-- 'MA_SANDMAN = Armadilha Sonífera'
REPLACE INTO `mercenary_skill_db` VALUES (6025,8207,10);		-- 'MA_DOUBLE = Rajada de Flechas'
REPLACE INTO `mercenary_skill_db` VALUES (6025,8214,1);			-- 'MA_CHARGEARROW = Carregar Flechas'
REPLACE INTO `mercenary_skill_db` VALUES (6025,8210,5);			-- 'MA_LANDMINE = Armadilha Atordoante'
REPLACE INTO `mercenary_skill_db` VALUES (6026,8214,1);			-- 'MA_CHARGEARROW = Carregar Flechas'
REPLACE INTO `mercenary_skill_db` VALUES (6026,8215,5);			-- 'MA_SHARPSHOOTING = Disparo Violento'
REPLACE INTO `mercenary_skill_db` VALUES (6026,8223,5);			-- 'MER_QUICKEN = Rapidez com Arma'
REPLACE INTO `mercenary_skill_db` VALUES (6026,8233,1);			-- 'MER_AUTOBERSERK = Instinto de Sobrevivência Automático'
REPLACE INTO `mercenary_skill_db` VALUES (6027,8216,1);			-- 'ML_PIERCE = Perfurar'
REPLACE INTO `mercenary_skill_db` VALUES (6027,8226,1);			-- 'MER_REGAIN = Recompor'
REPLACE INTO `mercenary_skill_db` VALUES (6028,8217,2);			-- 'ML_BRANDISH = Brandir Lança'
REPLACE INTO `mercenary_skill_db` VALUES (6028,8236,1);			-- 'MER_LEXDIVINA = Lex Divina'
REPLACE INTO `mercenary_skill_db` VALUES (6029,8216,2);			-- 'ML_PIERCE = Perfurar'
REPLACE INTO `mercenary_skill_db` VALUES (6029,8221,1);			-- 'ML_DEVOTION = Devoção'
REPLACE INTO `mercenary_skill_db` VALUES (6029,8229,1);			-- 'MER_RECUPERATE = Restabelecer'
REPLACE INTO `mercenary_skill_db` VALUES (6030,8219,1);			-- 'ML_DEFENDER = Aura Sagrada'
REPLACE INTO `mercenary_skill_db` VALUES (6030,8225,4);			-- 'MER_CRASH = Impacto'
REPLACE INTO `mercenary_skill_db` VALUES (6031,8216,5);			-- 'ML_PIERCE = Perfurar'
REPLACE INTO `mercenary_skill_db` VALUES (6031,8220,3);			-- 'ML_AUTOGUARD = Bloqueio'
REPLACE INTO `mercenary_skill_db` VALUES (6032,8223,2);			-- 'MER_QUICKEN = Rapidez com Arma'
REPLACE INTO `mercenary_skill_db` VALUES (6032,8217,5);			-- 'ML_BRANDISH = Brandir Lança'
REPLACE INTO `mercenary_skill_db` VALUES (6033,8221,1);			-- 'ML_DEVOTION = Devoção'
REPLACE INTO `mercenary_skill_db` VALUES (6033,8233,1);			-- 'MER_AUTOBERSERK = Instinto de Sobrevivência Automático'
REPLACE INTO `mercenary_skill_db` VALUES (6034,8235,1);			-- 'MER_SCAPEGOAT = Bode Expiatório'
REPLACE INTO `mercenary_skill_db` VALUES (6034,8216,10);		-- 'ML_PIERCE = Perfurar'
REPLACE INTO `mercenary_skill_db` VALUES (6034,8232,5);			-- 'MER_PROVOKE = Provocar'
REPLACE INTO `mercenary_skill_db` VALUES (6035,8217,10);		-- 'ML_BRANDISH = Brandir Lança'
REPLACE INTO `mercenary_skill_db` VALUES (6035,8220,7);			-- 'ML_AUTOGUARD = Bloqueio'
REPLACE INTO `mercenary_skill_db` VALUES (6035,8219,3);			-- 'ML_DEFENDER = Aura Sagrada'
REPLACE INTO `mercenary_skill_db` VALUES (6036,8223,5);			-- 'MER_QUICKEN = Rapidez com Arma'
REPLACE INTO `mercenary_skill_db` VALUES (6036,8220,10);		-- 'ML_AUTOGUARD = Bloqueio'
REPLACE INTO `mercenary_skill_db` VALUES (6036,8221,3);			-- 'ML_DEVOTION = Devoção'
REPLACE INTO `mercenary_skill_db` VALUES (6036,8218,5);			-- 'ML_SPIRALPIERCE = Perfurar em Espiral'
REPLACE INTO `mercenary_skill_db` VALUES (6037,8201,1);			-- 'MS_BASH = Golpe Fulminante'
REPLACE INTO `mercenary_skill_db` VALUES (6037,8234,1);			-- 'MER_DECAGI = Diminuir Agilidade'
REPLACE INTO `mercenary_skill_db` VALUES (6038,8232,5);			-- 'MER_PROVOKE = Provocar'
REPLACE INTO `mercenary_skill_db` VALUES (6038,8202,3);			-- 'MS_MAGNUM = Impacto Explosivo'
REPLACE INTO `mercenary_skill_db` VALUES (6039,8223,1);			-- 'MER_QUICKEN = Rapidez com Arma'
REPLACE INTO `mercenary_skill_db` VALUES (6039,8228,1);			-- 'MER_BENEDICTION = Bendição'
REPLACE INTO `mercenary_skill_db` VALUES (6040,8225,1);			-- 'MER_CRASH = Impacto'
REPLACE INTO `mercenary_skill_db` VALUES (6040,8202,5);			-- 'MS_MAGNUM = Impacto Explosivo'
REPLACE INTO `mercenary_skill_db` VALUES (6041,8201,5);			-- 'MS_BASH = Golpe Fulminante'
REPLACE INTO `mercenary_skill_db` VALUES (6041,8225,4);			-- 'MER_CRASH = Impacto'
REPLACE INTO `mercenary_skill_db` VALUES (6041,8228,1);			-- 'MER_BENEDICTION = Bendição'
REPLACE INTO `mercenary_skill_db` VALUES (6042,8223,5);			-- 'MER_QUICKEN = Rapidez com Arma'
REPLACE INTO `mercenary_skill_db` VALUES (6042,8237,1);			-- 'MER_ESTIMATION = Propriedades do Monstro'
REPLACE INTO `mercenary_skill_db` VALUES (6042,8234,3);			-- 'MER_DECAGI = Diminuir Agilidade'
REPLACE INTO `mercenary_skill_db` VALUES (6043,8201,10);		-- 'MS_BASH = Golpe Fulminante'
REPLACE INTO `mercenary_skill_db` VALUES (6043,8233,1);			-- 'MER_AUTOBERSERK = Instinto de Sobrevivência Automático'
REPLACE INTO `mercenary_skill_db` VALUES (6043,8235,1);			-- 'MER_SCAPEGOAT = Bode Expiatório'
REPLACE INTO `mercenary_skill_db` VALUES (6044,8223,10);		-- 'MER_QUICKEN = Rapidez com Arma'
REPLACE INTO `mercenary_skill_db` VALUES (6044,8203,5);			-- 'MS_BOWLINGABASH = Impacto de Tyr'
REPLACE INTO `mercenary_skill_db` VALUES (6044,8231,1);			-- 'MER_COMPRESS = Compressa'
REPLACE INTO `mercenary_skill_db` VALUES (6044,8204,4);			-- 'MS_PARRYING = Aparar Golpe'
REPLACE INTO `mercenary_skill_db` VALUES (6045,8203,8);			-- 'MS_BOWLINGABASH = Impacto de Tyr'
REPLACE INTO `mercenary_skill_db` VALUES (6045,8225,3);			-- 'MER_CRASH = Impacto'
REPLACE INTO `mercenary_skill_db` VALUES (6045,8205,5);			-- 'MS_REFLECTSHIELD = Escudo Refletor'
REPLACE INTO `mercenary_skill_db` VALUES (6046,8223,10);		-- 'MER_QUICKEN = Rapidez com Arma'
REPLACE INTO `mercenary_skill_db` VALUES (6046,8203,10);		-- 'MS_BOWLINGABASH = Impacto de Tyr'
REPLACE INTO `mercenary_skill_db` VALUES (6046,8201,10);		-- 'MS_BASH = Golpe Fulminante'
REPLACE INTO `mercenary_skill_db` VALUES (6046,8206,1);			-- 'MS_BERSERK = Fúria Insana'
REPLACE INTO `mercenary_skill_db` VALUES (1191,8233,1);			-- 'MER_AUTOBERSERK = Instinto de Sobrevivência Automático'
REPLACE INTO `mercenary_skill_db` VALUES (1191,8220,5);			-- 'ML_AUTOGUARD = Bloqueio'
REPLACE INTO `mercenary_skill_db` VALUES (1191,8201,5);			-- 'MS_BASH = Golpe Fulminante'
REPLACE INTO `mercenary_skill_db` VALUES (1506,8223,2);			-- 'MER_QUICKEN = Rapidez com Arma'
REPLACE INTO `mercenary_skill_db` VALUES (1506,8225,5);			-- 'MER_CRASH = Impacto'
REPLACE INTO `mercenary_skill_db` VALUES (1506,8236,3);			-- 'MER_LEXDIVINA = Lex Divina'
REPLACE INTO `mercenary_skill_db` VALUES (1275,8232,5);			-- 'MER_PROVOKE = Provocar'
REPLACE INTO `mercenary_skill_db` VALUES (1275,8202,5);			-- 'MS_MAGNUM = Impacto Explosivo'
REPLACE INTO `mercenary_skill_db` VALUES (1275,8217,5);			-- 'ML_BRANDISH = Brandir Lança'
REPLACE INTO `mercenary_skill_db` VALUES (1275,8226,1);			-- 'MER_REGAIN = Recompor'
REPLACE INTO `mercenary_skill_db` VALUES (1965,8201,5);			-- 'MS_BASH = Golpe Fulminante'
REPLACE INTO `mercenary_skill_db` VALUES (1966,8223,5);			-- 'MER_QUICKEN = Rapidez com Arma'
REPLACE INTO `mercenary_skill_db` VALUES (1966,8201,5);			-- 'MS_BASH = Golpe Fulminante'
REPLACE INTO `mercenary_skill_db` VALUES (1966,8221,3);			-- 'ML_DEVOTION = Devoção'
REPLACE INTO `mercenary_skill_db` VALUES (1967,8223,5);			-- 'MER_QUICKEN = Rapidez com Arma'
REPLACE INTO `mercenary_skill_db` VALUES (1967,8201,5);			-- 'MS_BASH = Golpe Fulminante'
REPLACE INTO `mercenary_skill_db` VALUES (1967,8221,3);			-- 'ML_DEVOTION = Devoção'
REPLACE INTO `mercenary_skill_db` VALUES (2000,8226,1);			-- 'MER_REGAIN = Recompor'
REPLACE INTO `mercenary_skill_db` VALUES (2000,8227,1);			-- 'MER_TENDER = Amolecer'
REPLACE INTO `mercenary_skill_db` VALUES (2000,8238,5);			-- 'MER_KYRIE = Kyrie Eleison'
REPLACE INTO `mercenary_skill_db` VALUES (2000,8239,5);			-- 'MER_BLESSING = Benção'
REPLACE INTO `mercenary_skill_db` VALUES (2000,8240,5);			-- 'MER_INCAGI = Aumentar Agilidade'
REPLACE INTO `mercenary_skill_db` VALUES (2001,8226,1);			-- 'MER_REGAIN = Recompor'
REPLACE INTO `mercenary_skill_db` VALUES (2001,8227,1);			-- 'MER_TENDER = Amolecer'
REPLACE INTO `mercenary_skill_db` VALUES (2001,8238,5);			-- 'MER_KYRIE = Kyrie Eleison'
REPLACE INTO `mercenary_skill_db` VALUES (2001,8239,5);			-- 'MER_BLESSING = Benção'
REPLACE INTO `mercenary_skill_db` VALUES (2001,8240,5);			-- 'MER_INCAGI = Aumentar Agilidade'
REPLACE INTO `mercenary_skill_db` VALUES (2058,8233,1);			-- 'MER_AUTOBERSERK = Instinto de Sobrevivência Automático'
REPLACE INTO `mercenary_skill_db` VALUES (2058,8220,5);			-- 'ML_AUTOGUARD = Bloqueio'
REPLACE INTO `mercenary_skill_db` VALUES (2058,8201,5);			-- 'MS_BASH = Golpe Fulminante'
REPLACE INTO `mercenary_skill_db` VALUES (2059,8223,2);			-- 'MER_QUICKEN = Rapidez com Arma'
REPLACE INTO `mercenary_skill_db` VALUES (2059,8225,5);			-- 'MER_CRASH = Impacto'
REPLACE INTO `mercenary_skill_db` VALUES (2059,8236,3);			-- 'MER_LEXDIVINA = Lex Divina'
REPLACE INTO `mercenary_skill_db` VALUES (2060,8232,5);			-- 'MER_PROVOKE = Provocar'
REPLACE INTO `mercenary_skill_db` VALUES (2060,8202,5);			-- 'MS_MAGNUM = Impacto Explosivo'
REPLACE INTO `mercenary_skill_db` VALUES (2060,8217,5);			-- 'ML_BRANDISH = Brandir Lança'
REPLACE INTO `mercenary_skill_db` VALUES (2060,8226,1);			-- 'MER_REGAIN = Recompor'



--
-- Estrutura para a tabela `homunculus_db`
--         

CREATE TABLE IF NOT EXISTS `homunculus_db` (
	`Class` smallint(2) unsigned NOT NULL default '0',
	`EvoClass` smallint(2) unsigned NOT NULL default '0',
	`Name` text NOT NULL default '',
	`FoodID` mediumint(3) unsigned NOT NULL default '0',
	`FoodDelay` int(4) unsigned NOT NULL default '0',
	`BaseSize` tinyint(1) unsigned NOT NULL default '0',
	`EvoSize` tinyint(1) unsigned NOT NULL default '0',
	`Race` tinyint(1) unsigned NOT NULL default '0',
	`Element` tinyint(1) unsigned NOT NULL default '0',
	`bASPD` smallint(2) unsigned NOT NULL default '0',
	`bHP` smallint(2) unsigned NOT NULL default '0',
	`bSP` smallint(2) unsigned NOT NULL default '0',
	`bSTR` smallint(2) unsigned NOT NULL default '0',
	`bAGI` smallint(2) unsigned NOT NULL default '0',
	`bVIT` smallint(2) unsigned NOT NULL default '0',
	`bINT` smallint(2) unsigned NOT NULL default '0',
	`bDEX` smallint(2) unsigned NOT NULL default '0',
	`bLUK` smallint(2) unsigned NOT NULL default '0',
	`gnHP` smallint(2) unsigned NOT NULL default '0',
	`gxHP` smallint(2) unsigned NOT NULL default '0',
	`gnSP` smallint(2) unsigned NOT NULL default '0',
	`gxSP` smallint(2) unsigned NOT NULL default '0',
	`gnSTR` smallint(2) unsigned NOT NULL default '0',
	`gxSTR` smallint(2) unsigned NOT NULL default '0',
	`gnAGI` smallint(2) unsigned NOT NULL default '0',
	`gxAGI` smallint(2) unsigned NOT NULL default '0',
	`gnVIT` smallint(2) unsigned NOT NULL default '0',
	`gxVIT` smallint(2) unsigned NOT NULL default '0',
	`gnINT` smallint(2) unsigned NOT NULL default '0',
	`gxINT` smallint(2) unsigned NOT NULL default '0',
	`gnDEX` smallint(2) unsigned NOT NULL default '0',
	`gxDEX` smallint(2) unsigned NOT NULL default '0',
	`gnLUK` smallint(2) unsigned NOT NULL default '0',
	`gxLUK` smallint(2) unsigned NOT NULL default '0',
	`enHP` smallint(2) unsigned NOT NULL default '0',
	`exHP` smallint(2) unsigned NOT NULL default '0',
	`enSP` smallint(2) unsigned NOT NULL default '0',
	`exSP` smallint(2) unsigned NOT NULL default '0',
	`enSTR` smallint(2) unsigned NOT NULL default '0',
	`exSTR` smallint(2) unsigned NOT NULL default '0',
	`enAGI` smallint(2) unsigned NOT NULL default '0',
	`exAGI` smallint(2) unsigned NOT NULL default '0',
	`enVIT` smallint(2) unsigned NOT NULL default '0',
	`exVIT` smallint(2) unsigned NOT NULL default '0',
	`enINT` smallint(2) unsigned NOT NULL default '0',
	`exINT` smallint(2) unsigned NOT NULL default '0',
	`enDEX` smallint(2) unsigned NOT NULL default '0',
	`exDEX` smallint(2) unsigned NOT NULL default '0',
	`enLUK` smallint(2) unsigned NOT NULL default '0',
	`exLUK` smallint(2) unsigned NOT NULL default '0',
	PRIMARY KEY (`Class`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*
 Homuncuus.
 Descrição: Responsável pelo banco de dados de homunculus.
 Cabeçalho: REPLACE INTO `homunculus_db` VALUES ('Classe','Classe Evoluído','Nome','ID da Comida','Delay de Fome','Base Evoluído','Tamanho Evoluído',
 'Raça','Elemento','bASPD','bHP','bSP','bFOR','bAGI','bVIT','bINT','bDES','bSOR','gnHP','gxHP','gnSP','gxSP','gnFOR','gnFOR','gnAGI','gxAGI','gnVIT','gxVIT',
 'gnINT','gxINT','gnDES','gxDES','gnSOR','gxSOR','enHP','exHP','enSP','exSP','enFOR','exFOR','enAGI','exAGI','enVIT','exVIT','enINT','exINT','enDES','exDES',
 'enSOR','exSOR');
*/ 

REPLACE INTO `homunculus_db` VALUES (6001,6009,'Lif',537,60000,0,1,7,0,700,150,40,17,20,15,35,24,12,60,100,4,9,5,19,5,19,5,19,4,20,6,20,6,20,1,10,10,20,1,5,1,4,1,5,4,10,1,10,1,3);
REPLACE INTO `homunculus_db` VALUES (6002,6010,'Amistr',912,60000,0,1,2,0,700,320,10,20,17,35,11,24,12,80,130,1,4,8,20,4,20,4,20,1,10,3,19,3,19,10,20,1,10,1,10,1,5,4,10,1,3,1,4,1,5);
REPLACE INTO `homunculus_db` VALUES (6003,6011,'Filir',910,60000,0,1,2,0,700,90,25,29,35,9,8,30,9,45,75,3,6,4,20,8,20,1,10,3,19,4,20,3,19,5,15,5,15,4,10,1,10,1,3,1,4,1,5,1,5);
REPLACE INTO `homunculus_db` VALUES (6004,6012,'Vanilmirth',911,60000,0,1,0,0,700,80,11,11,11,11,11,11,11,30,150,0,7,1,30,1,30,1,30,1,30,1,30,1,30,1,30,1,30,1,10,1,10,1,10,1,10,1,10,1,10);
REPLACE INTO `homunculus_db` VALUES (6005,6013,'Lif',537,60000,0,1,7,0,700,150,40,17,20,15,35,24,12,60,100,4,9,5,19,5,19,5,19,4,20,6,20,6,20,1,10,10,20,1,5,1,4,1,5,4,10,1,10,1,3);
REPLACE INTO `homunculus_db` VALUES (6006,6014,'Amistr',912,60000,0,1,2,0,700,320,10,20,17,35,11,24,12,80,130,1,4,8,20,4,20,4,20,1,10,3,19,3,19,10,20,1,10,1,10,1,5,4,10,1,3,1,4,1,5);
REPLACE INTO `homunculus_db` VALUES (6007,6015,'Filir',910,60000,0,1,2,0,700,90,25,29,35,9,8,30,9,45,75,3,6,4,20,8,20,1,10,3,19,4,20,3,19,5,15,5,15,4,10,1,10,1,3,1,4,1,5,1,5);
REPLACE INTO `homunculus_db` VALUES (6008,6016,'Vanilmirth',911,60000,0,1,0,0,700,80,11,11,11,11,11,11,11,30,150,0,7,1,30,1,30,1,30,1,30,1,30,1,30,1,30,1,30,1,10,1,10,1,10,1,10,1,10,1,10);
REPLACE INTO `homunculus_db` VALUES (6048,6048,'Eira',6098,60000,1,1,7,0,700,150,40,17,20,15,35,24,12,60,100,4,9,5,19,5,19,5,19,4,20,6,20,6,20,1,10,10,20,1,5,1,4,1,5,4,10,1,10,1,3);
REPLACE INTO `homunculus_db` VALUES (6049,6049,'Bayeri',6112,60000,1,1,2,0,700,320,10,20,17,35,11,24,12,80,130,1,4,8,20,4,20,4,20,1,10,3,19,3,19,10,20,1,10,1,10,1,5,4,10,1,3,1,4,1,5);
REPLACE INTO `homunculus_db` VALUES (6050,6050,'Sera',6108,60000,1,1,4,0,700,90,25,29,35,9,8,30,9,45,75,3,6,4,20,8,20,1,10,3,19,4,20,3,19,5,15,5,15,4,10,1,10,1,3,1,4,1,5,1,5);
REPLACE INTO `homunculus_db` VALUES (6051,6051,'Dieter',6104,60000,1,1,0,0,700,80,11,11,11,11,11,11,11,30,150,0,7,1,30,1,30,1,30,1,30,1,30,1,30,1,30,1,30,1,10,1,10,1,10,1,10,1,10,1,10);
REPLACE INTO `homunculus_db` VALUES (6052,6052,'Elanor',6094,60000,1,1,2,0,700,320,10,20,17,35,11,24,12,80,130,1,4,8,20,4,20,4,20,1,10,3,19,3,19,10,20,1,10,1,10,1,5,4,10,1,3,1,4,1,5);



--
-- Estrutura para a tabela `homunculus_skill_tree`
--         

CREATE TABLE IF NOT EXISTS `homunculus_skill_tree` (
	`Class` smallint(2) unsigned NOT NULL default '0',
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
	PRIMARY KEY (`Class`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*
 Habilidades de Homunculus.
 Descrição: Responsável pelos requesitos de habilidades dos homunculus.
 Cabeçalho: REPLACE INTO `homunculus_skill_tree` VALUES ('ID da Habilidade','Nível Máximo','Pré-Requesito da Habilidade de ID-1',Level de ID-1,
 'Pré-Requesito da Habilidade de ID-2','Level de ID-2','Pré-Requesito da Habilidade de ID-3','Level de ID-3','Pré-Requesito da Habilidade de ID-4',
 'Level de ID-4','Pré-Requesito da Habilidade de ID-5','Level de ID-5');
*/ 

REPLACE INTO `homunculus_skill_tree` VALUES (6001,8001,5,0,0,0,0,0,0,0,0,0,0);		-- 'HLIF_HEAL = Cura pelas Mãos'
REPLACE INTO `homunculus_skill_tree` VALUES (6001,8002,5,8001,3,0,0,0,0,0,0,0,0); 	-- 'HLIF_AVOID = Bater em Retirada'
REPLACE INTO `homunculus_skill_tree` VALUES (6001,8003,5,8001,5,0,0,0,0,0,0,0,0); 	-- 'HLIF_BRAIN = Cirurgia Cerebral'
REPLACE INTO `homunculus_skill_tree` VALUES (6002,8005,5,0,0,0,0,0,0,0,0,0,0);  		-- 'HAMI_CASTLE = Fortaleza'
REPLACE INTO `homunculus_skill_tree` VALUES (6002,8006,5,8005,5,0,0,0,0,0,0,0,0);  	-- 'HAMI_DEFENCE = Trocar de Lugar'
REPLACE INTO `homunculus_skill_tree` VALUES (6002,8007,5,8006,3,0,0,0,0,0,0,0,0); 	-- 'HAMI_SKIN = Pele de Adamantiun'
REPLACE INTO `homunculus_skill_tree` VALUES (6003,8009,5,0,0,0,0,0,0,0,0,0,0); 		-- 'HFLI_MOON = Pica-Pau'
REPLACE INTO `homunculus_skill_tree` VALUES (6003,8010,5,8009,3,0,0,0,0,0,0,0,0); 	-- 'HFLI_FLEET = Vôo Acelerado'
REPLACE INTO `homunculus_skill_tree` VALUES (6003,8011,5,8010,3,0,0,0,0,0,0,0,0); 	-- 'HFLI_SPEED = Frenético'
REPLACE INTO `homunculus_skill_tree` VALUES (6004,8013,5,0,0,0,0,0,0,0,0,0,0); 		-- 'HVAN_CAPRICE = Capricho'
REPLACE INTO `homunculus_skill_tree` VALUES (6004,8014,5,8013,3,0,0,0,0,0,0,0,0); 	-- 'HVAN_CHAOTIC = Benção Caótica'
REPLACE INTO `homunculus_skill_tree` VALUES (6004,8015,5,8013,5,0,0,0,0,0,0,0,0); 	-- 'HVAN_INSTRUCT = Mudança de Planos'
REPLACE INTO `homunculus_skill_tree` VALUES (6005,8001,5,0,0,0,0,0,0,0,0,0,0); 		-- 'HLIF_HEAL = Cura pelas Mãos'
REPLACE INTO `homunculus_skill_tree` VALUES (6005,8002,5,8001,3,0,0,0,0,0,0,0,0); 	-- 'HLIF_AVOID = Bater em Retirada'
REPLACE INTO `homunculus_skill_tree` VALUES (6005,8003,5,8001,5,0,0,0,0,0,0,0,0 );	-- 'HLIF_BRAIN = Cirurgia Cerebral'
REPLACE INTO `homunculus_skill_tree` VALUES (6006,8005,5,0,0,0,0,0,0,0,0,0,0); 		-- 'HAMI_CASTLE = Fortaleza'
REPLACE INTO `homunculus_skill_tree` VALUES (6006,8006,5,8005,5,0,0,0,0,0,0,0,0); 	-- 'HAMI_DEFENCE = Trocar de Lugar'
REPLACE INTO `homunculus_skill_tree` VALUES (6006,8007,5,8006,3,0,0,0,0,0,0,0,0); 	-- 'HAMI_SKIN = Pele de Adamantiun'
REPLACE INTO `homunculus_skill_tree` VALUES (6007,8009,5,0,0,0,0,0,0,0,0,0,0);		-- 'HFLI_MOON = Pica-Pau'
REPLACE INTO `homunculus_skill_tree` VALUES (6007,8010,5,8009,3,0,0,0,0,0,0,0,0); 	-- 'HFLI_FLEET = Vôo Acelerado'
REPLACE INTO `homunculus_skill_tree` VALUES (6007,8011,5,8010,3,0,0,0,0,0,0,0,0 );	-- 'HFLI_SPEED = Frenético'
REPLACE INTO `homunculus_skill_tree` VALUES (6008,8013,5,0,0,0,0,0,0,0,0,0,0); 		-- 'HVAN_CAPRICE = Capricho'
REPLACE INTO `homunculus_skill_tree` VALUES (6008,8014,5,8013,3,0,0,0,0,0,0,0,0); 	-- 'HVAN_CHAOTIC = Benção Caótica'
REPLACE INTO `homunculus_skill_tree` VALUES (6008,8015,5,8013,5,0,0,0,0,0,0,0,0); 	-- 'HVAN_INSTRUCT = Mudança de Planos'
REPLACE INTO `homunculus_skill_tree` VALUES (6009,8001,5,0,0,0,0,0,0,0,0,0,0);		-- 'HLIF_HEAL = Cura pelas Mãos'
REPLACE INTO `homunculus_skill_tree` VALUES (6009,8002,5,8001,3,0,0,0,0,0,0,0,0); 	-- 'HLIF_AVOID = Bater em Retirada'
REPLACE INTO `homunculus_skill_tree` VALUES (6009,8003,5,8001,5,0,0,0,0,0,0,0,0); 	-- 'HLIF_BRAIN = Cirurgia Cerebral'
REPLACE INTO `homunculus_skill_tree` VALUES (6009,8004,3,0,0,0,0,0,0,0,0,0,0); 		-- 'HLIF_CHANGE = Esforço Mental'
REPLACE INTO `homunculus_skill_tree` VALUES (6010,8005,5,0,0,0,0,0,0,0,0,0,0); 		-- 'HAMI_CASTLE = Trocar de Lugar'
REPLACE INTO `homunculus_skill_tree` VALUES (6010,8006,5,8005,5,0,0,0,0,0,0,0,0); 	-- 'HAMI_DEFENCE = Fortaleza'
REPLACE INTO `homunculus_skill_tree` VALUES (6010,8007,5,8006,3,0,0,0,0,0,0,0,0); 	-- 'HAMI_SKIN = Pele de Adamantiun'
REPLACE INTO `homunculus_skill_tree` VALUES (6010,8008,3,0,0,0,0,0,0,0,0,0,0); 		-- 'HAMI_BLOODLUST = Desejo Sangrento'
REPLACE INTO `homunculus_skill_tree` VALUES (6011,8009,5,0,0,0,0,0,0,0,0,0,0); 		-- 'HFLI_MOON = Pica-Pau'
REPLACE INTO `homunculus_skill_tree` VALUES (6011,8010,5,8009,3,0,0,0,0,0,0,0,0);	-- 'HFLI_FLEET = Vôo Acelerado'
REPLACE INTO `homunculus_skill_tree` VALUES (6011,8011,5,8010,3,0,0,0,0,0,0,0,0); 	-- 'HFLI_SPEED = Frenético'
REPLACE INTO `homunculus_skill_tree` VALUES (6011,8012,3,0,0,0,0,0,0,0,0,0,0); 		-- 'HFLI_SBR44 = S.B.R.44'
REPLACE INTO `homunculus_skill_tree` VALUES (6012,8013,5,0,0,0,0,0,0,0,0,0,0); 		-- 'HVAN_CAPRICE = Capricho'
REPLACE INTO `homunculus_skill_tree` VALUES (6012,8014,5,8013,3,0,0,0,0,0,0,0,0); 	-- 'HVAN_CHAOTIC = Benção Caótica'
REPLACE INTO `homunculus_skill_tree` VALUES (6012,8015,5,8013,5,0,0,0,0,0,0,0,0); 	-- 'HVAN_INSTRUCT = Mudança de Planos'
REPLACE INTO `homunculus_skill_tree` VALUES (6012,8016,3,0,0,0,0,0,0,0,0,0,0); 		-- 'HVAN_EXPLOSION = Auto-Destruição'
REPLACE INTO `homunculus_skill_tree` VALUES (6013,8001,5,0,0,0,0,0,0,0,0,0,0); 		-- 'HLIF_HEAL = Cura pelas Mãos'
REPLACE INTO `homunculus_skill_tree` VALUES (6013,8002,5,8001,3,0,0,0,0,0,0,0,0); 	-- 'HLIF_AVOID = Bater em Retirada'
REPLACE INTO `homunculus_skill_tree` VALUES (6013,8003,5,8001,5,0,0,0,0,0,0,0,0); 	-- 'HLIF_BRAIN = Cirurgia Cerebral'
REPLACE INTO `homunculus_skill_tree` VALUES (6013,8004,3,0,0,0,0,0,0,0,0,0,0); 		-- 'HLIF_CHANGE = Esforço Mental'
REPLACE INTO `homunculus_skill_tree` VALUES (6014,8005,5,0,0,0,0,0,0,0,0,0,0);		-- 'HAMI_CASTLE = Fortaleza'
REPLACE INTO `homunculus_skill_tree` VALUES (6014,8006,5,8005,5,0,0,0,0,0,0,0,0); 	-- 'HAMI_DEFENCE = Trocar de Lugar'
REPLACE INTO `homunculus_skill_tree` VALUES (6014,8007,5,8006,3,0,0,0,0,0,0,0,0); 	-- 'HAMI_SKIN = Pele de Adamantiun'
REPLACE INTO `homunculus_skill_tree` VALUES (6014,8008,3,0,0,0,0,0,0,0,0,0,0); 		-- 'HAMI_BLOODLUST = Desejo Sangrento'
REPLACE INTO `homunculus_skill_tree` VALUES (6015,8009,5,0,0,0,0,0,0,0,0,0,0); 		-- 'HFLI_MOON = Pica-Pau'
REPLACE INTO `homunculus_skill_tree` VALUES (6015,8010,5,8009,3,0,0,0,0,0,0,0,0); 	-- 'HFLI_FLEET = Vôo Acelerado'
REPLACE INTO `homunculus_skill_tree` VALUES (6015,8011,5,8010,3,0,0,0,0,0,0,0,0);	-- 'HFLI_SPEED = Frenético'
REPLACE INTO `homunculus_skill_tree` VALUES (6015,8012,3,0,0,0,0,0,0,0,0,0,0); 		-- 'HFLI_SBR44 = S.B.R.44'
REPLACE INTO `homunculus_skill_tree` VALUES (6016,8013,5,0,0,0,0,0,0,0,0,0,0); 		-- 'HVAN_CAPRICE = Capricho'
REPLACE INTO `homunculus_skill_tree` VALUES (6016,8014,5,8013,3,0,0,0,0,0,0,0,0); 	-- 'HVAN_CHAOTIC = Benção Caótica'
REPLACE INTO `homunculus_skill_tree` VALUES (6016,8015,5,8013,5,0,0,0,0,0,0,0,0); 	-- 'HVAN_INSTRUCT = Mudança de Planos'
REPLACE INTO `homunculus_skill_tree` VALUES (6016,8016,3,0,0,0,0,0,0,0,0,0,0); 		-- 'HVAN_EXPLOSION = Auto-Destruição'
REPLACE INTO `homunculus_skill_tree` VALUES (6048,8022,5,0,0,0,0,0,0,0,0,0,0); 		-- 'MH_LIGHT_OF_REGENE'
REPLACE INTO `homunculus_skill_tree` VALUES (6048,8023,5,0,0,0,0,0,0,0,0,0,0); 		-- 'MH_OVERED_BOOST'
REPLACE INTO `homunculus_skill_tree` VALUES (6048,8024,5,0,0,0,0,0,0,0,0,0,0); 		-- 'MH_ERASER_CUTTER'
REPLACE INTO `homunculus_skill_tree` VALUES (6048,8025,5,0,0,0,0,0,0,0,0,0,0); 		-- 'MH_XENO_SLASHER'
REPLACE INTO `homunculus_skill_tree` VALUES (6048,8026,5,0,0,0,0,0,0,0,0,0,0); 		-- 'MH_SILENT_BREEZE'
REPLACE INTO `homunculus_skill_tree` VALUES (6049,8031,5,0,0,0,0,0,0,0,0,0,0); 		-- 'MH_STAHL_HORN'
REPLACE INTO `homunculus_skill_tree` VALUES (6049,8032,5,0,0,0,0,0,0,0,0,0,0); 		-- 'MH_GOLDENE_FERSE'
REPLACE INTO `homunculus_skill_tree` VALUES (6049,8033,5,0,0,0,0,0,0,0,0,0,0); 		-- 'MH_STEINWAND'
REPLACE INTO `homunculus_skill_tree` VALUES (6050,8018,5,0,0,0,0,0,0,0,0,0,0); 		-- 'MH_SUMMON_LEGION'
REPLACE INTO `homunculus_skill_tree` VALUES (6050,8019,5,0,0,0,0,0,0,0,0,0,0); 		-- 'MH_NEEDLE_OF_PARALYZE'
REPLACE INTO `homunculus_skill_tree` VALUES (6050,8020,5,0,0,0,0,0,0,0,0,0,0); 		-- 'MH_POISON_MIST'
REPLACE INTO `homunculus_skill_tree` VALUES (6050,8021,5,0,0,0,0,0,0,0,0,0,0); 		-- 'MH_PAIN_KILLER'
REPLACE INTO `homunculus_skill_tree` VALUES (6051,8039,5,0,0,0,0,0,0,0,0,0,0); 		-- 'MH_MAGMA_FLOW'
REPLACE INTO `homunculus_skill_tree` VALUES (6051,8040,5,0,0,0,0,0,0,0,0,0,0);		-- 'MH_GRANITIC_ARMOR'
REPLACE INTO `homunculus_skill_tree` VALUES (6051,8041,5,0,0,0,0,0,0,0,0,0,0); 		-- 'MH_LAVA_SLIDE'
REPLACE INTO `homunculus_skill_tree` VALUES (6051,8042,5,0,0,0,0,0,0,0,0,0,0); 		-- 'MH_PYROCLASTIC'
REPLACE INTO `homunculus_skill_tree` VALUES (6051,8043,5,0,0,0,0,0,0,0,0,0,0); 		-- 'MH_VOLCANIC_ASH'
REPLACE INTO `homunculus_skill_tree` VALUES (6052,8027,1,0,0,0,0,0,0,0,0,0,0); 		-- 'MH_STYLE_CHANGE'
REPLACE INTO `homunculus_skill_tree` VALUES (6052,8028,5,0,0,0,0,0,0,0,0,0,0); 		-- 'MH_SONIC_CRAW'
REPLACE INTO `homunculus_skill_tree` VALUES (6052,8029,5,0,0,0,0,0,0,0,0,0,0); 		-- 'MH_SILVERVEIN_RUSH'
REPLACE INTO `homunculus_skill_tree` VALUES (6052,8030,5,0,0,0,0,0,0,0,0,0,0); 		-- 'MH_MIDNIGHT_FRENZY'
REPLACE INTO `homunculus_skill_tree` VALUES (6052,8034,5,0,0,0,0,0,0,0,0,0,0); 		-- 'MH_HEILIGE_STANGE'
REPLACE INTO `homunculus_skill_tree` VALUES (6052,8035,5,0,0,0,0,0,0,0,0,0,0); 		-- 'MH_ANGRIFFS_MODUS'
REPLACE INTO `homunculus_skill_tree` VALUES (6052,8036,5,0,0,0,0,0,0,0,0,0,0); 		-- 'MH_TINDER_BREAKER'
REPLACE INTO `homunculus_skill_tree` VALUES (6052,8037,5,0,0,0,0,0,0,0,0,0,0); 		-- 'MH_CBC'
REPLACE INTO `homunculus_skill_tree` VALUES (6052,8038,5,0,0,0,0,0,0,0,0,0,0); 		-- 'MH_EQC'



--
-- Estrutura para a tabela `elemental_db`
--

CREATE TABLE IF NOT EXISTS `elemental_db` (
	`ElementalID` smallint(2) unsigned NOT NULL default '0',
	`SprName` text NOT NULL,
	`Name`  text NOT NULL,
	`Level` smallint(2) unsigned NOT NULL default '0',
	`HP` int(4) unsigned NOT NULL default '0',
	`SP` int(4) unsigned NOT NULL default '0',
	`Area1` tinyint(1) unsigned NOT NULL default '0',
	`ATK1` smallint(2) unsigned NOT NULL default '0',
	`ATK2` smallint(2) unsigned NOT NULL default '0',
	`DEF` smallint(2) unsigned NOT NULL default '0',
	`MDEF` smallint(2) unsigned NOT NULL default '0',
	`FOR` smallint(2) unsigned NOT NULL default '0',
	`AGI` smallint(2) unsigned NOT NULL default '0',
	`VIT` smallint(2) unsigned NOT NULL default '0',
	`INT` smallint(2) unsigned NOT NULL default '0',
	`DES` smallint(2) unsigned NOT NULL default '0',
	`SOR` smallint(2) unsigned NOT NULL default '0',
	`Area2` smallint(2) unsigned NOT NULL default '0',
	`Area3` smallint(2) unsigned NOT NULL default '0',
	`Tamanho` tinyint(1) unsigned NOT NULL default '0',
	`Race` tinyint(1) unsigned NOT NULL default '0',
	`Elemento` tinyint(1) unsigned NOT NULL default '0',
	`Velocidade` smallint(2) unsigned NOT NULL default '0',
	`aDelay` smallint(2) unsigned NOT NULL default '0',
	`aMotion` smallint(2) unsigned NOT NULL default '0',
	`dMotion` smallint(2) unsigned NOT NULL default '0',
	PRIMARY KEY (`ElementalID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*
 Elementais.
 Descrição: Responsável pelo banco de dados de elementais.
 Cabeçalho: REPLACE INTO `homunculus_db` VALUES ('ID','Nome_do_Sprite','Nome,Level','HP','SP','Área1','ATK1','ATK2','DEF','MDEF',
 'FOR','AGI','VIT','INT','DES','SOR','Área2','Área3','Tamanho','Raça','Elemento','Velocidade','aDelay','aMotion','dMotion');
*/ 

REPLACE INTO `elemental_db` VALUES (2114,'EL_AGNI_S','Agni',100,5000,1,1,100,100,10,10,1,1,1,1,1,1,5,12,0,0,83,200,504,1020,360);
REPLACE INTO `elemental_db` VALUES (2115,'EL_AGNI_M','Agni',100,7500,1,1,250,250,25,25,1,1,1,1,1,1,5,12,1,0,83,200,504,1020,360);
REPLACE INTO `elemental_db` VALUES (2116,'EL_AGNI_L','Agni',100,10000,1,1,500,500,50,50,1,1,1,1,1,1,5,12,2,0,83,200,504,1020,360);
REPLACE INTO `elemental_db` VALUES (2117,'EL_AQUA_S','Varuna',100,5000,1,1,100,100,10,10,1,1,1,1,1,1,5,12,0,0,81,200,504,1020,360);
REPLACE INTO `elemental_db` VALUES (2118,'EL_AQUA_M','Varuna',100,7500,1,1,250,250,25,25,1,1,1,1,1,1,5,12,1,0,81,200,504,1020,360);
REPLACE INTO `elemental_db` VALUES (2119,'EL_AQUA_L','Varuna',100,10000,1,1,500,500,50,50,1,1,1,1,1,1,5,12,2,0,81,200,504,1020,360);
REPLACE INTO `elemental_db` VALUES (2120,'EL_VENTUS_S','Vayu',100,5000,1,4,100,100,10,10,1,1,1,1,1,1,5,12,0,0,84,200,504,1020,360);
REPLACE INTO `elemental_db` VALUES (2121,'EL_VENTUS_M','Vayu',100,7500,1,4,250,250,25,25,1,1,1,1,1,1,5,12,1,0,84,200,504,1020,360);
REPLACE INTO `elemental_db` VALUES (2122,'EL_VENTUS_L','Vayu',100,10000,1,4,500,500,50,50,1,1,1,1,1,1,5,12,2,0,84,200,504,1020,360);
REPLACE INTO `elemental_db` VALUES (2123,'EL_TERA_S','Chandra',100,5000,1,1,100,100,10,10,1,1,1,1,1,1,5,12,0,0,82,200,504,1020,360);
REPLACE INTO `elemental_db` VALUES (2124,'EL_TERA_M','Chandra',100,7500,1,1,250,250,25,25,1,1,1,1,1,1,5,12,1,0,82,200,504,1020,360);
REPLACE INTO `elemental_db` VALUES (2125,'EL_TERA_L','Chandra',100,10000,1,1,500,500,50,50,1,1,1,1,1,1,5,12,2,0,82,200,504,1020,360);



--
-- Estrutura para a tabela `elemental_skill_db`
--

CREATE TABLE IF NOT EXISTS `elemental_skill_db` (
	`ElementalID` smallint(2) unsigned NOT NULL default '0',
	`SkillID` smallint(2) unsigned NOT NULL default '0',
	`SkillLevel` tinyint(1) unsigned NOT NULL default '0',
	`ReqMode` tinyint(1) unsigned NOT NULL default '0',
	PRIMARY KEY (`ElementalID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*
 Habilidades dos Elementais
 Descrição: Responsável pelo banco de dados de habilidades dos elementais.
 Cabeçalho: REPLACE INTO `elemental_skill_db` VALUES ('ID do Elemental','ID da Habilidade','Nível da Habilidade','Modo');          
*/ 

REPLACE INTO `elemental_skill_db` VALUES (2114,8413,1,1);
REPLACE INTO `elemental_skill_db` VALUES (2114,8401,1,2);
REPLACE INTO `elemental_skill_db` VALUES (2114,8425,1,4);
REPLACE INTO `elemental_skill_db` VALUES (2115,8414,1,1);
REPLACE INTO `elemental_skill_db` VALUES (2115,8402,1,2);
REPLACE INTO `elemental_skill_db` VALUES (2115,8426,1,4);
REPLACE INTO `elemental_skill_db` VALUES (2116,8415,1,1);
REPLACE INTO `elemental_skill_db` VALUES (2116,8403,1,2);
REPLACE INTO `elemental_skill_db` VALUES (2116,8428,1,4);
REPLACE INTO `elemental_skill_db` VALUES (2117,8416,1,1);
REPLACE INTO `elemental_skill_db` VALUES (2117,8404,1,2);
REPLACE INTO `elemental_skill_db` VALUES (2117,8430,1,4);
REPLACE INTO `elemental_skill_db` VALUES (2118,8417,1,1);
REPLACE INTO `elemental_skill_db` VALUES (2118,8405,1,2);
REPLACE INTO `elemental_skill_db` VALUES (2118,8431,1,4);
REPLACE INTO `elemental_skill_db` VALUES (2119,8418,3,1);
REPLACE INTO `elemental_skill_db` VALUES (2119,8406,3,2);
REPLACE INTO `elemental_skill_db` VALUES (2119,8433,3,4);
REPLACE INTO `elemental_skill_db` VALUES (2120,8419,1,1);
REPLACE INTO `elemental_skill_db` VALUES (2120,8407,1,2);
REPLACE INTO `elemental_skill_db` VALUES (2120,8434,1,4);
REPLACE INTO `elemental_skill_db` VALUES (2121,8420,1,1);
REPLACE INTO `elemental_skill_db` VALUES (2121,8408,1,2);
REPLACE INTO `elemental_skill_db` VALUES (2121,8435,1,4);
REPLACE INTO `elemental_skill_db` VALUES (2122,8421,3,1);
REPLACE INTO `elemental_skill_db` VALUES (2122,8409,3,2);
REPLACE INTO `elemental_skill_db` VALUES (2122,8437,3,4);
REPLACE INTO `elemental_skill_db` VALUES (2123,8422,1,1);
REPLACE INTO `elemental_skill_db` VALUES (2123,8410,1,2);
REPLACE INTO `elemental_skill_db` VALUES (2123,8439,1,4);
REPLACE INTO `elemental_skill_db` VALUES (2124,8423,1,1);
REPLACE INTO `elemental_skill_db` VALUES (2124,8411,1,2);
REPLACE INTO `elemental_skill_db` VALUES (2124,8440,1,4);
REPLACE INTO `elemental_skill_db` VALUES (2125,8424,1,1);
REPLACE INTO `elemental_skill_db` VALUES (2125,8412,1,2);
REPLACE INTO `elemental_skill_db` VALUES (2125,8442,3,4);



--
-- Estrutura para a tabela `item_avail`
--         

CREATE TABLE IF NOT EXISTS `item_avail` (
   `ItemID` mediumint(3) unsigned NOT NULL default '0',
   `SpriteID` smallint(2) unsigned NOT NULL default '0',
   PRIMARY KEY (`ItemID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*
 Aparência de Itens.
 Descrição: Responsável pela visualização de uma sprite diferente em um item.
 Cabeçalho: REPLACE INTO `item_avail` VALUES ('ID do Item','ID da Sprite');
*/ 

-- 'Quest do Bigode Grisalho'
REPLACE INTO `item_avail` VALUES (2240,2241);

-- 'Quest - Caça ao Tesouro de Geffenia'
-- REPLACE INTO `item_avail` VALUES (7950,7021);
-- REPLACE INTO `item_avail` VALUES (7951,7042);
-- REPLACE INTO `item_avail` VALUES (1998,1250);
-- REPLACE INTO `item_avail` VALUES (1999,1472);

-- 'Quest - St. Patrics (2008)'
-- REPLACE INTO `item_avail` VALUES (12715,7721);
-- REPLACE INTO `item_avail` VALUES (7915,673);
-- REPLACE INTO `item_avail` VALUES (7916,675);



--
-- Estrutura para a tabela `item_buyingstore`
--  

CREATE TABLE IF NOT EXISTS `item_buyingstore` (
  `ItemID` mediumint(3) unsigned NOT NULL default '0',
   PRIMARY KEY (`ItemID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*
 Janela de Compras.
 Descrição: Responsável pelos itens usáveis com a janela de compras.
 Cabeçalho: REPLACE INTO `item_buyingstore` VALUES ('ID do Item');
*/

REPLACE INTO `item_buyingstore` VALUES (714);  -- 'Emperium'
REPLACE INTO `item_buyingstore` VALUES (6381);  -- 'Field_Shovel'
REPLACE INTO `item_buyingstore` VALUES (6382);  -- 'Urn'
REPLACE INTO `item_buyingstore` VALUES (6393);  -- 'Round_Feather'
REPLACE INTO `item_buyingstore` VALUES (6394);  -- 'Golden_Feather'
REPLACE INTO `item_buyingstore` VALUES (6395);  -- 'Angel_Magic_Power'
REPLACE INTO `item_buyingstore` VALUES (7347);  -- 'Lab_Staff_Record'
REPLACE INTO `item_buyingstore` VALUES (7760);  -- 'Yaga_Magic_Book'
REPLACE INTO `item_buyingstore` VALUES (7762);  -- 'Yaga_Pestle'
REPLACE INTO `item_buyingstore` VALUES (7824);  -- 'Spirit_Liquor'
REPLACE INTO `item_buyingstore` VALUES (11519);  -- 'Beef_Toast'
REPLACE INTO `item_buyingstore` VALUES (11520);  -- 'Mora_Mandarin'
REPLACE INTO `item_buyingstore` VALUES (11521);  -- 'Pingui_Berry_Juice'
REPLACE INTO `item_buyingstore` VALUES (11522);  -- 'Red_Raffle_Sap'
REPLACE INTO `item_buyingstore` VALUES (11523);  -- 'Yellow_Raffle_Sap'
REPLACE INTO `item_buyingstore` VALUES (11524);  -- 'White_Raffle_Sap'
REPLACE INTO `item_buyingstore` VALUES (11525);  -- 'Mora_Hip_Tea'
REPLACE INTO `item_buyingstore` VALUES (11526);  -- 'Rafflecino'
REPLACE INTO `item_buyingstore` VALUES (12329);  -- 'Recall_MaleGm'
REPLACE INTO `item_buyingstore` VALUES (12330);  -- 'Recall_FemaleGm'
REPLACE INTO `item_buyingstore` VALUES (12342);  -- 'ManukNULLs_Opportunity'
REPLACE INTO `item_buyingstore` VALUES (12343);  -- 'ManukNULLs_Courage'
REPLACE INTO `item_buyingstore` VALUES (12344);  -- 'PinguiculaNULLs_fruit_Jam'
REPLACE INTO `item_buyingstore` VALUES (12345);  -- 'LuciolaNULLs_Honey_Jam'
REPLACE INTO `item_buyingstore` VALUES (12348);  -- 'ManukNULLs_Faith'
REPLACE INTO `item_buyingstore` VALUES (12349);  -- 'CornusNULL_Tears'
REPLACE INTO `item_buyingstore` VALUES (12350);  -- 'Angeling_Potion'
REPLACE INTO `item_buyingstore` VALUES (12351);  -- 'Shout_Megaphone'
REPLACE INTO `item_buyingstore` VALUES (12354);  -- 'Buche_De_Noel'
REPLACE INTO `item_buyingstore` VALUES (12355);  -- 'Xmas_Gift'
REPLACE INTO `item_buyingstore` VALUES (12356);  -- 'Louise_Costume_Box'
REPLACE INTO `item_buyingstore` VALUES (12418);  -- 'Full_Swingk'
REPLACE INTO `item_buyingstore` VALUES (12419);  -- 'Mana_Plus'
REPLACE INTO `item_buyingstore` VALUES (12422);  -- 'HP_Increase_Potions'
REPLACE INTO `item_buyingstore` VALUES (12423);  -- 'HP_Increase_Potionm'
REPLACE INTO `item_buyingstore` VALUES (12424);  -- 'HP_Increase_Potionl'
REPLACE INTO `item_buyingstore` VALUES (12425);  -- 'SP_Increase_Potions'
REPLACE INTO `item_buyingstore` VALUES (12426);  -- 'SP_Increase_Potionm'
REPLACE INTO `item_buyingstore` VALUES (12427);  -- 'SP_Increase_Potionl'
REPLACE INTO `item_buyingstore` VALUES (12428);  -- 'Enrich_White_Potionz'
REPLACE INTO `item_buyingstore` VALUES (12429);  -- 'Savage_BBq'
REPLACE INTO `item_buyingstore` VALUES (12430);  -- 'Wug_Blood_Cocktail'
REPLACE INTO `item_buyingstore` VALUES (12431);  -- 'Minor_Brisket'
REPLACE INTO `item_buyingstore` VALUES (12432);  -- 'Siroma_Icetea'
REPLACE INTO `item_buyingstore` VALUES (12433);  -- 'Drocera_Herb_Stew'
REPLACE INTO `item_buyingstore` VALUES (12434);  -- 'Petti_Tail_Noodle'
REPLACE INTO `item_buyingstore` VALUES (12436);  -- 'Vitata500'
REPLACE INTO `item_buyingstore` VALUES (12437);  -- 'Enrich_Celermine_Juice'
REPLACE INTO `item_buyingstore` VALUES (12475);  -- 'Cure_Free'
REPLACE INTO `item_buyingstore` VALUES (12536);  -- 'NY_Rice_Cake_Soup'
REPLACE INTO `item_buyingstore` VALUES (12539);  -- 'Splendid_Box'
REPLACE INTO `item_buyingstore` VALUES (12561);  -- 'Mysterious_Seed'
REPLACE INTO `item_buyingstore` VALUES (12574);  -- 'Mora_Berry'
REPLACE INTO `item_buyingstore` VALUES (12575);  -- 'Arrow_Of_Elf_Cntr'
REPLACE INTO `item_buyingstore` VALUES (12576);  -- 'Hunting_Arrow_Cntr'
REPLACE INTO `item_buyingstore` VALUES (601);  -- 'Asa de Mosca'
REPLACE INTO `item_buyingstore` VALUES (602);  -- 'Asa de Borboleta'
REPLACE INTO `item_buyingstore` VALUES (603);  -- 'Velha Caixa Azul'
REPLACE INTO `item_buyingstore` VALUES (604);  -- 'Galho Seco'
REPLACE INTO `item_buyingstore` VALUES (605);  -- 'Analgésico'
REPLACE INTO `item_buyingstore` VALUES (606);  -- 'Aloe Vera'
REPLACE INTO `item_buyingstore` VALUES (607);  -- 'Fruto de Yggdrasil'
REPLACE INTO `item_buyingstore` VALUES (608);  -- 'Semente de Yggdrasil'
REPLACE INTO `item_buyingstore` VALUES (609);  -- 'Amuleto'
REPLACE INTO `item_buyingstore` VALUES (610);  -- 'Folha de Yggdrasil'
REPLACE INTO `item_buyingstore` VALUES (611);  -- 'Lupa'
REPLACE INTO `item_buyingstore` VALUES (612);  -- 'Mini-Fornalha'
REPLACE INTO `item_buyingstore` VALUES (613);  -- 'Martelo de Ferro'
REPLACE INTO `item_buyingstore` VALUES (614);  -- 'Martelo de Ouro'
REPLACE INTO `item_buyingstore` VALUES (615);  -- 'Martelo de Oridecon'
REPLACE INTO `item_buyingstore` VALUES (616);  -- 'Velho Álbum de Cartas'
REPLACE INTO `item_buyingstore` VALUES (617);  -- 'Velha Caixa Roxa'
REPLACE INTO `item_buyingstore` VALUES (618);  -- 'Pergaminho Desgastado'
REPLACE INTO `item_buyingstore` VALUES (619);  -- 'Maçã Verde'
REPLACE INTO `item_buyingstore` VALUES (620);  -- 'Suco de Laranja'
REPLACE INTO `item_buyingstore` VALUES (621);  -- 'Erva Amarga'
REPLACE INTO `item_buyingstore` VALUES (622);  -- 'Cenoura Arco-Íris'
REPLACE INTO `item_buyingstore` VALUES (623);  -- 'Minhoca Boa-Pinta'
REPLACE INTO `item_buyingstore` VALUES (624);  -- 'Peixe Podre'
REPLACE INTO `item_buyingstore` VALUES (625);  -- 'Ferro Enferrujado'
REPLACE INTO `item_buyingstore` VALUES (626);  -- 'Suco de Monstro'
REPLACE INTO `item_buyingstore` VALUES (627);  -- 'Leite Doce'
REPLACE INTO `item_buyingstore` VALUES (628);  -- 'Osso Seco'
REPLACE INTO `item_buyingstore` VALUES (629);  -- 'Flor Cantante'
REPLACE INTO `item_buyingstore` VALUES (630);  -- 'Musgo Encharcado'
REPLACE INTO `item_buyingstore` VALUES (631);  -- 'Erva Letal'
REPLACE INTO `item_buyingstore` VALUES (632);  -- 'Minhoca Gorducha'
REPLACE INTO `item_buyingstore` VALUES (633);  -- 'Batata Assada'
REPLACE INTO `item_buyingstore` VALUES (634);  -- 'Banana Tropical'
REPLACE INTO `item_buyingstore` VALUES (635);  -- 'Horror da Tribo'
REPLACE INTO `item_buyingstore` VALUES (636);  -- 'Sem Destinatário'
REPLACE INTO `item_buyingstore` VALUES (637);  -- 'Vassoura Velha'
REPLACE INTO `item_buyingstore` VALUES (638);  -- 'Faca de Prata da Castidade'
REPLACE INTO `item_buyingstore` VALUES (639);  -- 'Bracelete da Obediência'
REPLACE INTO `item_buyingstore` VALUES (640);  -- 'Pedra Brilhante'
REPLACE INTO `item_buyingstore` VALUES (641);  -- 'Contratos das Sombras'
REPLACE INTO `item_buyingstore` VALUES (642);  -- 'Livro do Diabo'
REPLACE INTO `item_buyingstore` VALUES (643);  -- 'Incubadora'
REPLACE INTO `item_buyingstore` VALUES (644);  -- 'Caixa de Presente'
REPLACE INTO `item_buyingstore` VALUES (645);  -- 'Poção da Concentração'
REPLACE INTO `item_buyingstore` VALUES (656);  -- 'Poção do Despertar'
REPLACE INTO `item_buyingstore` VALUES (657);  -- 'Poção da Fúria Selvagem'
REPLACE INTO `item_buyingstore` VALUES (658);  -- 'União da Tribo'
REPLACE INTO `item_buyingstore` VALUES (659);  -- 'Coração Apaixonado'
REPLACE INTO `item_buyingstore` VALUES (660);  -- 'Vela do Marquês de Sade'
REPLACE INTO `item_buyingstore` VALUES (661);  -- 'Avental Elegante'
REPLACE INTO `item_buyingstore` VALUES (662);  -- 'Emblema Oficial'
REPLACE INTO `item_buyingstore` VALUES (663);  -- 'Ovos de Chocolate Branco'
REPLACE INTO `item_buyingstore` VALUES (664);  -- 'Caixa de Presente 1'
REPLACE INTO `item_buyingstore` VALUES (665);  -- 'Caixa de Presente 2'
REPLACE INTO `item_buyingstore` VALUES (666);  -- 'Caixa de Presente 3'
REPLACE INTO `item_buyingstore` VALUES (667);  -- 'Caixa de Presente 4'
REPLACE INTO `item_buyingstore` VALUES (668);  -- 'Envelope Vermelho'
REPLACE INTO `item_buyingstore` VALUES (669);  -- 'Sopa de Arroz'
REPLACE INTO `item_buyingstore` VALUES (678);  -- 'Garrafa de Veneno'
REPLACE INTO `item_buyingstore` VALUES (679);  -- 'Pílula Dourada'
REPLACE INTO `item_buyingstore` VALUES (681);  -- 'Álbum de Fotos de Casamento'
REPLACE INTO `item_buyingstore` VALUES (682);  -- 'Bebida de Realgar'
REPLACE INTO `item_buyingstore` VALUES (683);  -- 'Erva de Exorcismo'
REPLACE INTO `item_buyingstore` VALUES (684);  -- 'Jaca'
REPLACE INTO `item_buyingstore` VALUES (686);  -- 'Coluna de Pedra Nível 3'
REPLACE INTO `item_buyingstore` VALUES (687);  -- 'Coluna de Pedra Nível 5'
REPLACE INTO `item_buyingstore` VALUES (688);  -- 'Lanças de Gelo Nível 3'
REPLACE INTO `item_buyingstore` VALUES (689);  -- 'Lanças de Gelo Nível 5'
REPLACE INTO `item_buyingstore` VALUES (690);  -- 'Lanças de Fogo Nível 3'
REPLACE INTO `item_buyingstore` VALUES (691);  -- 'Lanças de Fogo Nível 5'
REPLACE INTO `item_buyingstore` VALUES (692);  -- 'Relâmpago Nível 3'
REPLACE INTO `item_buyingstore` VALUES (693);  -- 'Relâmpago Nível 5'
REPLACE INTO `item_buyingstore` VALUES (694);  -- 'Espíritos Anciões Nível 3'
REPLACE INTO `item_buyingstore` VALUES (695);  -- 'Espíritos Anciões Nível 5'
REPLACE INTO `item_buyingstore` VALUES (696);  -- 'Bolas de Fogo Nível 1'
REPLACE INTO `item_buyingstore` VALUES (697);  -- 'Bolas de Fogo Nível 5'
REPLACE INTO `item_buyingstore` VALUES (698);  -- 'Barreira de Fogo Nível 1'
REPLACE INTO `item_buyingstore` VALUES (699);  -- 'Barreira de Fogo Nível 5'
REPLACE INTO `item_buyingstore` VALUES (700);  -- 'Rajada Congelante Nível 1'
REPLACE INTO `item_buyingstore` VALUES (12000);  -- 'Rajada Congelante Nível 5'
REPLACE INTO `item_buyingstore` VALUES (12001);  -- 'Cura Nível 3'
REPLACE INTO `item_buyingstore` VALUES (12002);  -- 'Cura Nível 5'
REPLACE INTO `item_buyingstore` VALUES (12003);  -- 'Teleporte Nível 1'
REPLACE INTO `item_buyingstore` VALUES (12004);  -- 'Aljave'
REPLACE INTO `item_buyingstore` VALUES (12005);  -- 'Aljave de Flechas de Ferro'
REPLACE INTO `item_buyingstore` VALUES (12006);  -- 'Aljave de Flechas de Aço'
REPLACE INTO `item_buyingstore` VALUES (12007);  -- 'Aljave de Flechas de Oridecon'
REPLACE INTO `item_buyingstore` VALUES (12008);  -- 'Aljave de Flechas de Fogo'
REPLACE INTO `item_buyingstore` VALUES (12009);  -- 'Aljave de Flechas de Prata'
REPLACE INTO `item_buyingstore` VALUES (12010);  -- 'Aljave de Flechas de Vento'
REPLACE INTO `item_buyingstore` VALUES (12011);  -- 'Aljave de Flechas de Pedra'
REPLACE INTO `item_buyingstore` VALUES (12012);  -- 'Aljave de Flechas de Cristal'
REPLACE INTO `item_buyingstore` VALUES (12013);  -- 'Aljave de Flechas de Sombra'
REPLACE INTO `item_buyingstore` VALUES (12014);  -- 'Aljave de Flechas Imateriais'
REPLACE INTO `item_buyingstore` VALUES (12015);  -- 'Aljave de Flechas Enferrujadas'
REPLACE INTO `item_buyingstore` VALUES (12016);  -- 'Poção do Vento'
REPLACE INTO `item_buyingstore` VALUES (12017);  -- 'Poção da Lentidão'
REPLACE INTO `item_buyingstore` VALUES (12018);  -- 'Fogo de Artifício'
REPLACE INTO `item_buyingstore` VALUES (12020);  -- 'Água Amaldiçoada'
REPLACE INTO `item_buyingstore` VALUES (12027);  -- 'Caixa Risonha'
REPLACE INTO `item_buyingstore` VALUES (12028);  -- 'Caixa do Trovão'
REPLACE INTO `item_buyingstore` VALUES (12029);  -- 'Caixa da Escuridão'
REPLACE INTO `item_buyingstore` VALUES (12030);  -- 'Caixa do Ressentimento'
REPLACE INTO `item_buyingstore` VALUES (12031);  -- 'Caixa da Sonolência'
REPLACE INTO `item_buyingstore` VALUES (12032);  -- 'Caixa da Tempestade'
REPLACE INTO `item_buyingstore` VALUES (12033);  -- 'Caixa da Luz do Sol'
REPLACE INTO `item_buyingstore` VALUES (12034);  -- 'Caixa do Arquejo'
REPLACE INTO `item_buyingstore` VALUES (12040);  -- 'Pedra do Sábio'
REPLACE INTO `item_buyingstore` VALUES (12041);  -- 'Pernas de Gafanhoto Fritas'
REPLACE INTO `item_buyingstore` VALUES (12042);  -- 'Palmípede Temperado'
REPLACE INTO `item_buyingstore` VALUES (12043);  -- 'Bife Bombástico'
REPLACE INTO `item_buyingstore` VALUES (12044);  -- 'Bife Marinado com Ervas'
REPLACE INTO `item_buyingstore` VALUES (12045);  -- 'Panqueca de Lutie'
REPLACE INTO `item_buyingstore` VALUES (12046);  -- 'Chá de Ervas com Uvas'
REPLACE INTO `item_buyingstore` VALUES (12047);  -- 'Chá Vermelho de Outono'
REPLACE INTO `item_buyingstore` VALUES (12048);  -- 'Chá de Ervas e Mel'
REPLACE INTO `item_buyingstore` VALUES (12049);  -- 'Vinho de Frutas de Morroc'
REPLACE INTO `item_buyingstore` VALUES (12050);  -- 'Vinho de Mastela'
REPLACE INTO `item_buyingstore` VALUES (12051);  -- 'Garras de Caranguejo no Vapor'
REPLACE INTO `item_buyingstore` VALUES (12052);  -- 'Frutos do Mar Sortidos'
REPLACE INTO `item_buyingstore` VALUES (12053);  -- 'Sopa de Ostra'
REPLACE INTO `item_buyingstore` VALUES (12054);  -- 'Água-Viva Temperada'
REPLACE INTO `item_buyingstore` VALUES (12055);  -- 'Pão de Carne Picante Frito'
REPLACE INTO `item_buyingstore` VALUES (12056);  -- 'Sopa de Tinta de Lula e Ovos de Sapo'
REPLACE INTO `item_buyingstore` VALUES (12057);  -- 'Macarrão Liso'
REPLACE INTO `item_buyingstore` VALUES (12058);  -- 'Queijo Gratinado com Tentáculos'
REPLACE INTO `item_buyingstore` VALUES (12059);  -- 'Macarrão Frio de Lutie'
REPLACE INTO `item_buyingstore` VALUES (12060);  -- 'Asa de Morcego com Abóbora no Vapor'
REPLACE INTO `item_buyingstore` VALUES (12061);  -- 'Suco de Uva e Mel'
REPLACE INTO `item_buyingstore` VALUES (12062);  -- 'Bolo-Mousse de Chocolate'
REPLACE INTO `item_buyingstore` VALUES (12063);  -- 'Salada de Frutas'
REPLACE INTO `item_buyingstore` VALUES (12064);  -- 'Sanduíche Cremoso'
REPLACE INTO `item_buyingstore` VALUES (12065);  -- 'Salada Verde'
REPLACE INTO `item_buyingstore` VALUES (12066);  -- 'Caudas de Macaco Fritas'
REPLACE INTO `item_buyingstore` VALUES (12067);  -- 'Suco Misto'
REPLACE INTO `item_buyingstore` VALUES (12068);  -- 'Batata-Doce Frita'
REPLACE INTO `item_buyingstore` VALUES (12069);  -- 'Lábios Fossilizados no Vapor'
REPLACE INTO `item_buyingstore` VALUES (12070);  -- 'Caudas de Escorpião Fritas'
REPLACE INTO `item_buyingstore` VALUES (12071);  -- 'Bife Marinado Brilhante'
REPLACE INTO `item_buyingstore` VALUES (12072);  -- 'Assado Inteiro'
REPLACE INTO `item_buyingstore` VALUES (12073);  -- 'Pé de Urso Especial'
REPLACE INTO `item_buyingstore` VALUES (12074);  -- 'Saté de Tendões'
REPLACE INTO `item_buyingstore` VALUES (12075);  -- 'Língua no Vapor'
REPLACE INTO `item_buyingstore` VALUES (12076);  -- 'Vinho de Cogumelo Vermelho'
REPLACE INTO `item_buyingstore` VALUES (12077);  -- 'Chá de Ervas e Geléia Real Especial'
REPLACE INTO `item_buyingstore` VALUES (12078);  -- 'Chá da Família Real'
REPLACE INTO `item_buyingstore` VALUES (12079);  -- 'Tristam 12 Anos'
REPLACE INTO `item_buyingstore` VALUES (12080);  -- 'Coquetel Sopro do Dragão'
REPLACE INTO `item_buyingstore` VALUES (12081);  -- 'Bebida Amargosa'
REPLACE INTO `item_buyingstore` VALUES (12082);  -- 'Banquete Suntuoso'
REPLACE INTO `item_buyingstore` VALUES (12083);  -- 'Burrito Gigante'
REPLACE INTO `item_buyingstore` VALUES (12084);  -- 'Sopa de Dragão Ascendente'
REPLACE INTO `item_buyingstore` VALUES (12085);  -- 'Cozido Imortal'
REPLACE INTO `item_buyingstore` VALUES (12086);  -- 'Gratinado de Chilli e Camarão'
REPLACE INTO `item_buyingstore` VALUES (12087);  -- 'Crocodilo no Vapor com Vegetais'
REPLACE INTO `item_buyingstore` VALUES (12088);  -- 'Curry Incrivelmente Picante'
REPLACE INTO `item_buyingstore` VALUES (12089);  -- 'Cozido de Carne Especial'
REPLACE INTO `item_buyingstore` VALUES (12090);  -- 'Escorpiões do Deserto no Vapor'
REPLACE INTO `item_buyingstore` VALUES (12091);  -- 'Bolo de Pêssego'
REPLACE INTO `item_buyingstore` VALUES (12092);  -- 'Pão Doce Assombroso'
REPLACE INTO `item_buyingstore` VALUES (12093);  -- 'Torrada Especial'
REPLACE INTO `item_buyingstore` VALUES (12094);  -- 'Suco de Frutas Divino'
REPLACE INTO `item_buyingstore` VALUES (12095);  -- 'Tônico de Hwergelmir'
REPLACE INTO `item_buyingstore` VALUES (12096);  -- 'Sopa da Sorte'
REPLACE INTO `item_buyingstore` VALUES (12097);  -- 'Espetinho Sortido'
REPLACE INTO `item_buyingstore` VALUES (12098);  -- 'Bolinho de Arroz com Morango'
REPLACE INTO `item_buyingstore` VALUES (12099);  -- 'Refrigerante Sangrento'
REPLACE INTO `item_buyingstore` VALUES (12100);  -- 'Nove Caudas Cozidas'
REPLACE INTO `item_buyingstore` VALUES (12101);  -- 'Citron'
REPLACE INTO `item_buyingstore` VALUES (12102);  -- 'Grilled Skewer'
REPLACE INTO `item_buyingstore` VALUES (12103);  -- 'Galho Sangrento'
REPLACE INTO `item_buyingstore` VALUES (12104);  -- 'Aljave Aleatório'
REPLACE INTO `item_buyingstore` VALUES (12105);  -- 'Kit de Domesticação'
REPLACE INTO `item_buyingstore` VALUES (12106);  -- 'Caixa de Jóias'
REPLACE INTO `item_buyingstore` VALUES (12107);  -- 'Máscara Embrulhada'
REPLACE INTO `item_buyingstore` VALUES (12108);  -- 'Pacote de Pergaminho'
REPLACE INTO `item_buyingstore` VALUES (12109);  -- 'Caixa Poring'
REPLACE INTO `item_buyingstore` VALUES (12110);  -- 'Kit de Primeiros Socorros'
REPLACE INTO `item_buyingstore` VALUES (12111);  -- 'Trouxa de Comida'
REPLACE INTO `item_buyingstore` VALUES (12112);  -- 'Sograt Tropical'
REPLACE INTO `item_buyingstore` VALUES (12113);  -- 'Escarlate Praiano'
REPLACE INTO `item_buyingstore` VALUES (12114);  -- 'Conversor Elemental'
REPLACE INTO `item_buyingstore` VALUES (12115);  -- 'Conversor Elemental'
REPLACE INTO `item_buyingstore` VALUES (12116);  -- 'Conversor Elemental'
REPLACE INTO `item_buyingstore` VALUES (12117);  -- 'Conversor Elemental'
REPLACE INTO `item_buyingstore` VALUES (12118);  -- 'Poção Anti-Fogo'
REPLACE INTO `item_buyingstore` VALUES (12119);  -- 'Poção Anti-Água'
REPLACE INTO `item_buyingstore` VALUES (12120);  -- 'Poção Anti-Terra'
REPLACE INTO `item_buyingstore` VALUES (12121);  -- 'Poção Anti-Vento'
REPLACE INTO `item_buyingstore` VALUES (12122);  -- 'Ovinhos Coloridos'
REPLACE INTO `item_buyingstore` VALUES (12123);  -- 'Biscoito de Mel'
REPLACE INTO `item_buyingstore` VALUES (12124);  -- 'Bolo Arco-Íris'
REPLACE INTO `item_buyingstore` VALUES (12125);  -- 'Kit de Culinária Portátil'
REPLACE INTO `item_buyingstore` VALUES (12126);  -- 'Kit de Culinária Caseiro'
REPLACE INTO `item_buyingstore` VALUES (12127);  -- 'Kit de Culinária Profissional'
REPLACE INTO `item_buyingstore` VALUES (12128);  -- 'Kit de Culinária Real'
REPLACE INTO `item_buyingstore` VALUES (12129);  -- 'Kit de Culinária Fantástico'
REPLACE INTO `item_buyingstore` VALUES (12130);  -- 'Sacola de Biscoitos'
REPLACE INTO `item_buyingstore` VALUES (12132);  -- 'Bolsa de Papai Noel'
REPLACE INTO `item_buyingstore` VALUES (12144);  -- 'Pacote de Esferas de Relâmpago'
REPLACE INTO `item_buyingstore` VALUES (12145);  -- 'Pacote de Esferas Cegantes'
REPLACE INTO `item_buyingstore` VALUES (12146);  -- 'Pacote de Esferas Venenosas'
REPLACE INTO `item_buyingstore` VALUES (12147);  -- 'Pacote de Esferas Congelantes'
REPLACE INTO `item_buyingstore` VALUES (12148);  -- 'Pacote de Esferas de Chamas'
REPLACE INTO `item_buyingstore` VALUES (12149);  -- 'Carregador'
REPLACE INTO `item_buyingstore` VALUES (12150);  -- 'Carregador Sanguinário'
REPLACE INTO `item_buyingstore` VALUES (12151);  -- 'Carregador de Prata'
REPLACE INTO `item_buyingstore` VALUES (12183);  -- 'Aljave de Flechas Sagradas'
REPLACE INTO `item_buyingstore` VALUES (12184);  -- 'Poção Vermelha de Ajudante'
REPLACE INTO `item_buyingstore` VALUES (12185);  -- 'Poção Azul de Ajudante'
REPLACE INTO `item_buyingstore` VALUES (12194);  -- 'Hometown Gift'
REPLACE INTO `item_buyingstore` VALUES (12195);  -- 'Plain Rice Cake'
REPLACE INTO `item_buyingstore` VALUES (12196);  -- 'Hearty Rice Cake'
REPLACE INTO `item_buyingstore` VALUES (12197);  -- 'Salty Rice Cake'
REPLACE INTO `item_buyingstore` VALUES (12198);  -- 'Lucky Rice Cake'
REPLACE INTO `item_buyingstore` VALUES (12241);  -- 'Poção da Concentração para Assistentes'
REPLACE INTO `item_buyingstore` VALUES (12242);  -- 'Poção de Despertar para Assistentes'
REPLACE INTO `item_buyingstore` VALUES (12243);  -- 'Poção da Fúria Selvagem para Assistentes'
REPLACE INTO `item_buyingstore` VALUES (12246);  -- 'Álbum Mágico de Cartas'
REPLACE INTO `item_buyingstore` VALUES (12260);  -- 'Roupas de Praia'
REPLACE INTO `item_buyingstore` VALUES (12290);  -- 'Mysterious Can Magic Powder'
REPLACE INTO `item_buyingstore` VALUES (12291);  -- 'Mysterious PET Bottle'
REPLACE INTO `item_buyingstore` VALUES (12292);  -- 'Unripe Fruit'
REPLACE INTO `item_buyingstore` VALUES (12293);  -- 'Dried Yggdrasilberry'
REPLACE INTO `item_buyingstore` VALUES (12341);  -- 'Special Alloy Trap Box'
REPLACE INTO `item_buyingstore` VALUES (12346);  -- 'Avelã Verde'
REPLACE INTO `item_buyingstore` VALUES (12347);  -- 'Geleia de Avelã'
REPLACE INTO `item_buyingstore` VALUES (12353);  -- 'Garrafa Pequena'
REPLACE INTO `item_buyingstore` VALUES (12358);  -- 'Leque dos Ventos'
REPLACE INTO `item_buyingstore` VALUES (12359);  -- 'Folha Macia'
REPLACE INTO `item_buyingstore` VALUES (12360);  -- 'Suco Vermelho-Sangue'
REPLACE INTO `item_buyingstore` VALUES (12362);  -- 'Kuloren'
REPLACE INTO `item_buyingstore` VALUES (12364);  -- 'Cajado do Líder'
REPLACE INTO `item_buyingstore` VALUES (12365);  -- 'Flor de Lótus'
REPLACE INTO `item_buyingstore` VALUES (12366);  -- 'Bonequinha Oriental'
REPLACE INTO `item_buyingstore` VALUES (12367);  -- 'Garrafa de Bebida'
REPLACE INTO `item_buyingstore` VALUES (12368);  -- 'Espelho de Mão'
REPLACE INTO `item_buyingstore` VALUES (12369);  -- 'Oilpalm Coconut'
REPLACE INTO `item_buyingstore` VALUES (12371);  -- 'Magical Lithography'
REPLACE INTO `item_buyingstore` VALUES (12372);  -- 'Hell Contract'
REPLACE INTO `item_buyingstore` VALUES (12373);  -- 'Coração Puro'
REPLACE INTO `item_buyingstore` VALUES (12374);  -- 'Chama Azulada'
REPLACE INTO `item_buyingstore` VALUES (12376);  -- 'Mysterious Can2'
REPLACE INTO `item_buyingstore` VALUES (12377);  -- 'Mysterious PET Bottle2'
REPLACE INTO `item_buyingstore` VALUES (12379);  -- 'Pope Cookie'
REPLACE INTO `item_buyingstore` VALUES (12383);  -- 'Vulcan Bullet Magazine'
REPLACE INTO `item_buyingstore` VALUES (12392);  -- 'Repair a'
REPLACE INTO `item_buyingstore` VALUES (12393);  -- 'Repair b'
REPLACE INTO `item_buyingstore` VALUES (12394);  -- 'Repair c'
REPLACE INTO `item_buyingstore` VALUES (12395);  -- 'Guloseima Recheada'
REPLACE INTO `item_buyingstore` VALUES (12414);  -- 'Bala de Guaraná'
REPLACE INTO `item_buyingstore` VALUES (12717);  -- 'Curare'
REPLACE INTO `item_buyingstore` VALUES (12718);  -- 'Vipera'
REPLACE INTO `item_buyingstore` VALUES (12719);  -- 'Toque do Oblívio'
REPLACE INTO `item_buyingstore` VALUES (12720);  -- 'Beijo da Morte'
REPLACE INTO `item_buyingstore` VALUES (12721);  -- 'Cicuta'
REPLACE INTO `item_buyingstore` VALUES (12722);  -- 'Pirexia'
REPLACE INTO `item_buyingstore` VALUES (12723);  -- 'Waraitake'
REPLACE INTO `item_buyingstore` VALUES (12724);  -- 'Beladona'
REPLACE INTO `item_buyingstore` VALUES (12734);  -- 'Runa Bruta Forte'
REPLACE INTO `item_buyingstore` VALUES (12735);  -- 'Runa Bruta Antiga'
REPLACE INTO `item_buyingstore` VALUES (12736);  -- 'Runa Bruta Mística'
REPLACE INTO `item_buyingstore` VALUES (12737);  -- 'Runa Bruta Comum'
REPLACE INTO `item_buyingstore` VALUES (12738);  -- 'Runa Bruta Rara'
REPLACE INTO `item_buyingstore` VALUES (506);  -- 'Poção Verde'
REPLACE INTO `item_buyingstore` VALUES (507);  -- 'Erva Vermelha'
REPLACE INTO `item_buyingstore` VALUES (508);  -- 'Erva Amarela'
REPLACE INTO `item_buyingstore` VALUES (509);  -- 'Erva Branca'
REPLACE INTO `item_buyingstore` VALUES (510);  -- 'Erva Azul'
REPLACE INTO `item_buyingstore` VALUES (511);  -- 'Erva Verde'
REPLACE INTO `item_buyingstore` VALUES (512);  -- 'Maçã'
REPLACE INTO `item_buyingstore` VALUES (513);  -- 'Banana'
REPLACE INTO `item_buyingstore` VALUES (514);  -- 'Uvas'
REPLACE INTO `item_buyingstore` VALUES (515);  -- 'Cenoura'
REPLACE INTO `item_buyingstore` VALUES (516);  -- 'Batata Doce'
REPLACE INTO `item_buyingstore` VALUES (517);  -- 'Carne'
REPLACE INTO `item_buyingstore` VALUES (518);  -- 'Mel'
REPLACE INTO `item_buyingstore` VALUES (519);  -- 'Leite'
REPLACE INTO `item_buyingstore` VALUES (520);  -- 'Folha de Hinalle'
REPLACE INTO `item_buyingstore` VALUES (521);  -- 'Folha de Aloe'
REPLACE INTO `item_buyingstore` VALUES (522);  -- 'Mastela'
REPLACE INTO `item_buyingstore` VALUES (523);  -- 'Água Benta'
REPLACE INTO `item_buyingstore` VALUES (525);  -- 'Panacéia'
REPLACE INTO `item_buyingstore` VALUES (526);  -- 'Geléia Real'
REPLACE INTO `item_buyingstore` VALUES (528);  -- 'Ração para Monstros'
REPLACE INTO `item_buyingstore` VALUES (529);  -- 'Bala'
REPLACE INTO `item_buyingstore` VALUES (530);  -- 'Bengala Doce'
REPLACE INTO `item_buyingstore` VALUES (531);  -- 'Suco de Maçã'
REPLACE INTO `item_buyingstore` VALUES (532);  -- 'Suco de Banana'
REPLACE INTO `item_buyingstore` VALUES (533);  -- 'Suco de Uva'
REPLACE INTO `item_buyingstore` VALUES (534);  -- 'Suco de Cenoura'
REPLACE INTO `item_buyingstore` VALUES (535);  -- 'Abóbora'
REPLACE INTO `item_buyingstore` VALUES (536);  -- 'Sorvete'
REPLACE INTO `item_buyingstore` VALUES (537);  -- 'Ração para Bichinho'
REPLACE INTO `item_buyingstore` VALUES (538);  -- 'Biscoito de Gengibre'
REPLACE INTO `item_buyingstore` VALUES (539);  -- 'Pedaço de Bolo'
REPLACE INTO `item_buyingstore` VALUES (544);  -- 'Peixe Cru'
REPLACE INTO `item_buyingstore` VALUES (548);  -- 'Queijo'
REPLACE INTO `item_buyingstore` VALUES (549);  -- 'Batata Doce Assada'
REPLACE INTO `item_buyingstore` VALUES (550);  -- 'Bolinhos de Arroz'
REPLACE INTO `item_buyingstore` VALUES (551);  -- 'Sushi'
REPLACE INTO `item_buyingstore` VALUES (553);  -- 'Pão de Carne'
REPLACE INTO `item_buyingstore` VALUES (564);  -- 'Bolinho de Arroz'
REPLACE INTO `item_buyingstore` VALUES (566);  -- 'Sopa Tailandesa'
REPLACE INTO `item_buyingstore` VALUES (567);  -- 'Camarão'
REPLACE INTO `item_buyingstore` VALUES (568);  -- 'Limão'
REPLACE INTO `item_buyingstore` VALUES (569);  -- 'Poção de Aprendiz'
REPLACE INTO `item_buyingstore` VALUES (570);  -- 'Doce da Sorte'
REPLACE INTO `item_buyingstore` VALUES (571);  -- 'Bengala Doce da Sorte'
REPLACE INTO `item_buyingstore` VALUES (572);  -- 'Biscoito da Sorte'
REPLACE INTO `item_buyingstore` VALUES (574);  -- 'Ovo'
REPLACE INTO `item_buyingstore` VALUES (576);  -- 'Fruta Espinhosa'
REPLACE INTO `item_buyingstore` VALUES (577);  -- 'Sacola de Grãos'
REPLACE INTO `item_buyingstore` VALUES (578);  -- 'Morango'
REPLACE INTO `item_buyingstore` VALUES (579);  -- 'Peixe Fresco'
REPLACE INTO `item_buyingstore` VALUES (580);  -- 'Pão'
REPLACE INTO `item_buyingstore` VALUES (581);  -- 'Cogumelo Comestível'
REPLACE INTO `item_buyingstore` VALUES (582);  -- 'Laranja'
REPLACE INTO `item_buyingstore` VALUES (584);  -- 'Sopa com Bolinhos de Peixe'
REPLACE INTO `item_buyingstore` VALUES (587);  -- 'Fruta Espinhosa Escarlate'
REPLACE INTO `item_buyingstore` VALUES (591);  -- 'Panqueca de Caviar'
REPLACE INTO `item_buyingstore` VALUES (592);  -- 'Panqueca de Geléia'
REPLACE INTO `item_buyingstore` VALUES (593);  -- 'Panqueca com Mel'
REPLACE INTO `item_buyingstore` VALUES (594);  -- 'Panqueca Azeda'
REPLACE INTO `item_buyingstore` VALUES (595);  -- 'Panqueca de Cogumelos'
REPLACE INTO `item_buyingstore` VALUES (11513);  -- 'Pastilha Refrescante'
REPLACE INTO `item_buyingstore` VALUES (11515);  -- 'Coco'
REPLACE INTO `item_buyingstore` VALUES (11516);  -- 'Açaí'
REPLACE INTO `item_buyingstore` VALUES (11517);  -- 'Poção Puri'
REPLACE INTO `item_buyingstore` VALUES (701);  -- 'Armadilha para Insetos'
REPLACE INTO `item_buyingstore` VALUES (702);  -- 'Sangue de Animal'
REPLACE INTO `item_buyingstore` VALUES (703);  -- 'Hinalle'
REPLACE INTO `item_buyingstore` VALUES (704);  -- 'Aloés'
REPLACE INTO `item_buyingstore` VALUES (705);  -- 'Trevo'
REPLACE INTO `item_buyingstore` VALUES (706);  -- 'Trevo de Quatro Folhas'
REPLACE INTO `item_buyingstore` VALUES (707);  -- 'Planta da Melodia'
REPLACE INTO `item_buyingstore` VALUES (708);  -- 'Menta'
REPLACE INTO `item_buyingstore` VALUES (709);  -- 'Izidor'
REPLACE INTO `item_buyingstore` VALUES (710);  -- 'Flor das Ilusões'
REPLACE INTO `item_buyingstore` VALUES (711);  -- 'Broto'
REPLACE INTO `item_buyingstore` VALUES (712);  -- 'Flor'
REPLACE INTO `item_buyingstore` VALUES (713);  -- 'Garrafa Vazia'
REPLACE INTO `item_buyingstore` VALUES (715);  -- 'Gema Amarela'
REPLACE INTO `item_buyingstore` VALUES (716);  -- 'Gema Vermelha'
REPLACE INTO `item_buyingstore` VALUES (717);  -- 'Gema Azul'
REPLACE INTO `item_buyingstore` VALUES (718);  -- 'Granada'
REPLACE INTO `item_buyingstore` VALUES (719);  -- 'Ametista'
REPLACE INTO `item_buyingstore` VALUES (720);  -- 'Aquamarina'
REPLACE INTO `item_buyingstore` VALUES (721);  -- 'Esmeralda'
REPLACE INTO `item_buyingstore` VALUES (722);  -- 'Pérola'
REPLACE INTO `item_buyingstore` VALUES (723);  -- 'Rubi'
REPLACE INTO `item_buyingstore` VALUES (724);  -- 'Rubi Amaldiçoado'
REPLACE INTO `item_buyingstore` VALUES (725);  -- 'Peridoto'
REPLACE INTO `item_buyingstore` VALUES (726);  -- 'Safira'
REPLACE INTO `item_buyingstore` VALUES (727);  -- 'Opala'
REPLACE INTO `item_buyingstore` VALUES (728);  -- 'Topázio'
REPLACE INTO `item_buyingstore` VALUES (729);  -- 'Zircônio'
REPLACE INTO `item_buyingstore` VALUES (730);  -- 'Diamante de 1 quilate'
REPLACE INTO `item_buyingstore` VALUES (731);  -- 'Diamante de 2 quilates'
REPLACE INTO `item_buyingstore` VALUES (732);  -- 'Diamante de 3 quilates'
REPLACE INTO `item_buyingstore` VALUES (733);  -- 'Diamante Rachado'
REPLACE INTO `item_buyingstore` VALUES (734);  -- 'Moldura Vermelha'
REPLACE INTO `item_buyingstore` VALUES (735);  -- 'Chung Jah'
REPLACE INTO `item_buyingstore` VALUES (736);  -- 'Prato de Porcelana'
REPLACE INTO `item_buyingstore` VALUES (737);  -- 'Concha Preta'
REPLACE INTO `item_buyingstore` VALUES (738);  -- 'Estojo de Lápis'
REPLACE INTO `item_buyingstore` VALUES (739);  -- 'Batom'
REPLACE INTO `item_buyingstore` VALUES (740);  -- 'Boneco de Pelúcia'
REPLACE INTO `item_buyingstore` VALUES (741);  -- 'Boneco de Poring'
REPLACE INTO `item_buyingstore` VALUES (742);  -- 'Boneco de Chonchon'
REPLACE INTO `item_buyingstore` VALUES (743);  -- 'Boneco de Esporo'
REPLACE INTO `item_buyingstore` VALUES (744);  -- 'Buquê'
REPLACE INTO `item_buyingstore` VALUES (745);  -- 'Buquê de Casamento'
REPLACE INTO `item_buyingstore` VALUES (746);  -- 'Bolinha de Gude'
REPLACE INTO `item_buyingstore` VALUES (747);  -- 'Espelho de Cristal'
REPLACE INTO `item_buyingstore` VALUES (748);  -- 'Rosa Eterna'
REPLACE INTO `item_buyingstore` VALUES (749);  -- 'Rosa de Gelo'
REPLACE INTO `item_buyingstore` VALUES (750);  -- 'Boneco de Bafomé'
REPLACE INTO `item_buyingstore` VALUES (751);  -- 'Boneco de Osíris'
REPLACE INTO `item_buyingstore` VALUES (752);  -- 'Boneco de Rocker'
REPLACE INTO `item_buyingstore` VALUES (753);  -- 'Boneco de Yoyo'
REPLACE INTO `item_buyingstore` VALUES (754);  -- 'Boneco de Fumacento'
REPLACE INTO `item_buyingstore` VALUES (756);  -- 'Minério de Oridecon'
REPLACE INTO `item_buyingstore` VALUES (757);  -- 'Minério de Elunium'
REPLACE INTO `item_buyingstore` VALUES (901);  -- 'Trança'
REPLACE INTO `item_buyingstore` VALUES (902);  -- 'Raiz de Árvore'
REPLACE INTO `item_buyingstore` VALUES (903);  -- 'Língua de Réptil'
REPLACE INTO `item_buyingstore` VALUES (904);  -- 'Cauda de Escorpião'
REPLACE INTO `item_buyingstore` VALUES (905);  -- 'Caule'
REPLACE INTO `item_buyingstore` VALUES (906);  -- 'Escama Afiada'
REPLACE INTO `item_buyingstore` VALUES (907);  -- 'Resina'
REPLACE INTO `item_buyingstore` VALUES (908);  -- 'Ova de Sapo'
REPLACE INTO `item_buyingstore` VALUES (909);  -- 'Jellopy'
REPLACE INTO `item_buyingstore` VALUES (910);  -- 'Garleta'
REPLACE INTO `item_buyingstore` VALUES (911);  -- 'Scell'
REPLACE INTO `item_buyingstore` VALUES (912);  -- 'Zargônio'
REPLACE INTO `item_buyingstore` VALUES (913);  -- 'Dente de Morcego'
REPLACE INTO `item_buyingstore` VALUES (914);  -- 'Felpa'
REPLACE INTO `item_buyingstore` VALUES (915);  -- 'Crisálida'
REPLACE INTO `item_buyingstore` VALUES (916);  -- 'Plumas de Ave'
REPLACE INTO `item_buyingstore` VALUES (917);  -- 'Garra de Ave'
REPLACE INTO `item_buyingstore` VALUES (918);  -- 'Pata Pegajosa'
REPLACE INTO `item_buyingstore` VALUES (919);  -- 'Couro de Animal'
REPLACE INTO `item_buyingstore` VALUES (920);  -- 'Garra de Lobo'
REPLACE INTO `item_buyingstore` VALUES (921);  -- 'Esporo de Cogumelo'
REPLACE INTO `item_buyingstore` VALUES (922);  -- 'Presa de Orc'
REPLACE INTO `item_buyingstore` VALUES (923);  -- 'Chifre Diabólico'
REPLACE INTO `item_buyingstore` VALUES (924);  -- 'Pó de Borboleta'
REPLACE INTO `item_buyingstore` VALUES (925);  -- 'Bico de Ave'
REPLACE INTO `item_buyingstore` VALUES (926);  -- 'Escamas de Cobra'
REPLACE INTO `item_buyingstore` VALUES (928);  -- 'Antenas de Inseto'
REPLACE INTO `item_buyingstore` VALUES (929);  -- 'Coração Imortal'
REPLACE INTO `item_buyingstore` VALUES (930);  -- 'Bandagem Estragada'
REPLACE INTO `item_buyingstore` VALUES (931);  -- 'Amuleto dos Orcs'
REPLACE INTO `item_buyingstore` VALUES (932);  -- 'Osso'
REPLACE INTO `item_buyingstore` VALUES (934);  -- 'Espólio'
REPLACE INTO `item_buyingstore` VALUES (935);  -- 'Casca'
REPLACE INTO `item_buyingstore` VALUES (936);  -- 'Casca Escamada'
REPLACE INTO `item_buyingstore` VALUES (937);  -- 'Canino Venenoso'
REPLACE INTO `item_buyingstore` VALUES (938);  -- 'Muco Pegajoso'
REPLACE INTO `item_buyingstore` VALUES (939);  -- 'Ferrão de Abelha'
REPLACE INTO `item_buyingstore` VALUES (940);  -- 'Perna de Gafanhoto'
REPLACE INTO `item_buyingstore` VALUES (941);  -- 'Argola'
REPLACE INTO `item_buyingstore` VALUES (942);  -- 'Cauda de Yoyo'
REPLACE INTO `item_buyingstore` VALUES (943);  -- 'Casca Rija'
REPLACE INTO `item_buyingstore` VALUES (944);  -- 'Ferradura'
REPLACE INTO `item_buyingstore` VALUES (945);  -- 'Folha de Fumacento'
REPLACE INTO `item_buyingstore` VALUES (946);  -- 'Casco de Caramujo'
REPLACE INTO `item_buyingstore` VALUES (947);  -- 'Chifre'
REPLACE INTO `item_buyingstore` VALUES (948);  -- 'Pata de Urso'
REPLACE INTO `item_buyingstore` VALUES (949);  -- 'Pluma'
REPLACE INTO `item_buyingstore` VALUES (950);  -- 'Coração de Sereia'
REPLACE INTO `item_buyingstore` VALUES (951);  -- 'Nadadeira'
REPLACE INTO `item_buyingstore` VALUES (952);  -- 'Espinho de Cacto'
REPLACE INTO `item_buyingstore` VALUES (953);  -- 'Coração de Pedra'
REPLACE INTO `item_buyingstore` VALUES (954);  -- 'Escama Brilhante'
REPLACE INTO `item_buyingstore` VALUES (955);  -- 'Pele de Verme'
REPLACE INTO `item_buyingstore` VALUES (956);  -- 'Guelra'
REPLACE INTO `item_buyingstore` VALUES (957);  -- 'Unha Apodrecida'
REPLACE INTO `item_buyingstore` VALUES (958);  -- 'Mandíbula Horrenda'
REPLACE INTO `item_buyingstore` VALUES (959);  -- 'Escama Fétida'
REPLACE INTO `item_buyingstore` VALUES (960);  -- 'Garra de Crustáceo'
REPLACE INTO `item_buyingstore` VALUES (961);  -- 'Concha'
REPLACE INTO `item_buyingstore` VALUES (962);  -- 'Tentáculo'
REPLACE INTO `item_buyingstore` VALUES (963);  -- 'Escama Aquática'
REPLACE INTO `item_buyingstore` VALUES (964);  -- 'Casco de Caranguejo'
REPLACE INTO `item_buyingstore` VALUES (965);  -- 'Casco de Ostra'
REPLACE INTO `item_buyingstore` VALUES (966);  -- 'Carne de Ostra'
REPLACE INTO `item_buyingstore` VALUES (967);  -- 'Casco de Tartaruga'
REPLACE INTO `item_buyingstore` VALUES (968);  -- 'Insígnia do Herói'
REPLACE INTO `item_buyingstore` VALUES (969);  -- 'Ouro'
REPLACE INTO `item_buyingstore` VALUES (971);  -- 'Detrimindexta'
REPLACE INTO `item_buyingstore` VALUES (972);  -- 'Karvodailnirol'
REPLACE INTO `item_buyingstore` VALUES (973);  -- 'Antígeno'
REPLACE INTO `item_buyingstore` VALUES (974);  -- 'Mistura'
REPLACE INTO `item_buyingstore` VALUES (975);  -- 'Tintura Vermelha'
REPLACE INTO `item_buyingstore` VALUES (976);  -- 'Tintura Amarela'
REPLACE INTO `item_buyingstore` VALUES (978);  -- 'Tintura Azul'
REPLACE INTO `item_buyingstore` VALUES (979);  -- 'Tintura Verde'
REPLACE INTO `item_buyingstore` VALUES (980);  -- 'Tintura Laranja'
REPLACE INTO `item_buyingstore` VALUES (981);  -- 'Tintura Violeta'
REPLACE INTO `item_buyingstore` VALUES (982);  -- 'Tintura Branca'
REPLACE INTO `item_buyingstore` VALUES (983);  -- 'Tintura Preta'
REPLACE INTO `item_buyingstore` VALUES (984);  -- 'Oridecon'
REPLACE INTO `item_buyingstore` VALUES (985);  -- 'Elunium'
REPLACE INTO `item_buyingstore` VALUES (986);  -- 'Bigorna'
REPLACE INTO `item_buyingstore` VALUES (987);  -- 'Bigorna de Oridecon'
REPLACE INTO `item_buyingstore` VALUES (988);  -- 'Bigorna de Ouro'
REPLACE INTO `item_buyingstore` VALUES (989);  -- 'Bigorna de Emperium'
REPLACE INTO `item_buyingstore` VALUES (990);  -- 'Sangue Escarlate'
REPLACE INTO `item_buyingstore` VALUES (991);  -- 'Cristal Azul'
REPLACE INTO `item_buyingstore` VALUES (992);  -- 'Frescor do Vento'
REPLACE INTO `item_buyingstore` VALUES (993);  -- 'Vida Verdejante'
REPLACE INTO `item_buyingstore` VALUES (994);  -- 'Coração Flamejante'
REPLACE INTO `item_buyingstore` VALUES (995);  -- 'Gelo Místico'
REPLACE INTO `item_buyingstore` VALUES (996);  -- 'Vento Bruto'
REPLACE INTO `item_buyingstore` VALUES (997);  -- 'Natureza Grandiosa'
REPLACE INTO `item_buyingstore` VALUES (998);  -- 'Ferro'
REPLACE INTO `item_buyingstore` VALUES (999);  -- 'Aço'
REPLACE INTO `item_buyingstore` VALUES (1000);  -- 'Fragmento Estelar'
REPLACE INTO `item_buyingstore` VALUES (1001);  -- 'Poeira Estelar'
REPLACE INTO `item_buyingstore` VALUES (1002);  -- 'Minério de Ferro'
REPLACE INTO `item_buyingstore` VALUES (1003);  -- 'Carvão'
REPLACE INTO `item_buyingstore` VALUES (1004);  -- 'Insígnia da Cavalaria'
REPLACE INTO `item_buyingstore` VALUES (1005);  -- 'Martelo de Ferreiro'
REPLACE INTO `item_buyingstore` VALUES (1006);  -- 'Grimório Antigo'
REPLACE INTO `item_buyingstore` VALUES (1007);  -- 'Colar da Sabedoria'
REPLACE INTO `item_buyingstore` VALUES (1008);  -- 'Colar do Oblívio'
REPLACE INTO `item_buyingstore` VALUES (1009);  -- 'Mão Divina'
REPLACE INTO `item_buyingstore` VALUES (1010);  -- 'Fracon'
REPLACE INTO `item_buyingstore` VALUES (1011);  -- 'Emveretarcon'
REPLACE INTO `item_buyingstore` VALUES (1012);  -- 'Brasão'
REPLACE INTO `item_buyingstore` VALUES (1013);  -- 'Casco Arco-Íris'
REPLACE INTO `item_buyingstore` VALUES (1014);  -- 'Mandíbula de Formiga'
REPLACE INTO `item_buyingstore` VALUES (1015);  -- 'Língua'
REPLACE INTO `item_buyingstore` VALUES (1016);  -- 'Cauda de Rato'
REPLACE INTO `item_buyingstore` VALUES (1017);  -- 'Bigodes de Toupeira'
REPLACE INTO `item_buyingstore` VALUES (1018);  -- 'Garras de Toupeira'
REPLACE INTO `item_buyingstore` VALUES (1019);  -- 'Tronco'
REPLACE INTO `item_buyingstore` VALUES (1020);  -- 'Cabelos Morenos'
REPLACE INTO `item_buyingstore` VALUES (1021);  -- 'Chifre de Dokebi'
REPLACE INTO `item_buyingstore` VALUES (1022);  -- 'Nove-Caudas'
REPLACE INTO `item_buyingstore` VALUES (1023);  -- 'Cauda de Peixe'
REPLACE INTO `item_buyingstore` VALUES (1024);  -- 'Tinta de Polvo'
REPLACE INTO `item_buyingstore` VALUES (1025);  -- 'Teia de Aranha'
REPLACE INTO `item_buyingstore` VALUES (1026);  -- 'Avelã'
REPLACE INTO `item_buyingstore` VALUES (1027);  -- 'Espinho de Porco-Espinho'
REPLACE INTO `item_buyingstore` VALUES (1028);  -- 'Crina'
REPLACE INTO `item_buyingstore` VALUES (1029);  -- 'Pele de Tigre'
REPLACE INTO `item_buyingstore` VALUES (1030);  -- 'Pata de Tigre'
REPLACE INTO `item_buyingstore` VALUES (1031);  -- 'Foice de Louva-a-Deus'
REPLACE INTO `item_buyingstore` VALUES (1032);  -- 'Flor de Planta Carnívora'
REPLACE INTO `item_buyingstore` VALUES (1033);  -- 'Raiz de Planta Carnívora'
REPLACE INTO `item_buyingstore` VALUES (1034);  -- 'Cabelo Azul'
REPLACE INTO `item_buyingstore` VALUES (1035);  -- 'Canino de Dragão'
REPLACE INTO `item_buyingstore` VALUES (1036);  -- 'Escama de Dragão'
REPLACE INTO `item_buyingstore` VALUES (1037);  -- 'Cauda de Dragão'
REPLACE INTO `item_buyingstore` VALUES (1038);  -- 'Pequeno Chifre Maligno'
REPLACE INTO `item_buyingstore` VALUES (1039);  -- 'Pequena Asa Maligna'
REPLACE INTO `item_buyingstore` VALUES (1040);  -- 'Bigode de Anão Ancião'
REPLACE INTO `item_buyingstore` VALUES (1041);  -- 'Lampião'
REPLACE INTO `item_buyingstore` VALUES (1042);  -- 'Pata de Inseto'
REPLACE INTO `item_buyingstore` VALUES (1043);  -- 'Garra de Orc'
REPLACE INTO `item_buyingstore` VALUES (1044);  -- 'Presa de Zenorc'
REPLACE INTO `item_buyingstore` VALUES (1045);  -- 'Máscara Ritualística'
REPLACE INTO `item_buyingstore` VALUES (1046);  -- 'Garra de Escorpião'
REPLACE INTO `item_buyingstore` VALUES (1047);  -- 'Cabeça de Medusa'
REPLACE INTO `item_buyingstore` VALUES (1048);  -- 'Cabelo Horrendo'
REPLACE INTO `item_buyingstore` VALUES (1049);  -- 'Saia Virginal'
REPLACE INTO `item_buyingstore` VALUES (1050);  -- 'Tendões'
REPLACE INTO `item_buyingstore` VALUES (1051);  -- 'Neurônio'
REPLACE INTO `item_buyingstore` VALUES (1052);  -- 'Célula Única'
REPLACE INTO `item_buyingstore` VALUES (1053);  -- 'Dente Fossilizado'
REPLACE INTO `item_buyingstore` VALUES (1054);  -- 'Lábios Fossilizados'
REPLACE INTO `item_buyingstore` VALUES (1055);  -- 'Pele de Minhoca'
REPLACE INTO `item_buyingstore` VALUES (1056);  -- 'Torrão de Areia'
REPLACE INTO `item_buyingstore` VALUES (1057);  -- 'Pó de Traça'
REPLACE INTO `item_buyingstore` VALUES (1058);  -- 'Asas de Traça'
REPLACE INTO `item_buyingstore` VALUES (1059);  -- 'Tecido'
REPLACE INTO `item_buyingstore` VALUES (1060);  -- 'Cabelos Dourados'
REPLACE INTO `item_buyingstore` VALUES (1061);  -- 'Areia Estelar de Bruxa'
REPLACE INTO `item_buyingstore` VALUES (1062);  -- 'Zé-Lanterna'
REPLACE INTO `item_buyingstore` VALUES (1063);  -- 'Presa'
REPLACE INTO `item_buyingstore` VALUES (1064);  -- 'Rédeas'
REPLACE INTO `item_buyingstore` VALUES (1065);  -- 'Armadilha'
REPLACE INTO `item_buyingstore` VALUES (1066);  -- 'Tronco de Alta Qualidade'
REPLACE INTO `item_buyingstore` VALUES (1067);  -- 'Tronco Sólido'
REPLACE INTO `item_buyingstore` VALUES (1068);  -- 'Tronco Estéril'
REPLACE INTO `item_buyingstore` VALUES (1088);  -- 'Solução de Morroc'
REPLACE INTO `item_buyingstore` VALUES (1089);  -- 'Solução de Payon'
REPLACE INTO `item_buyingstore` VALUES (1092);  -- 'Tubo de Ensaio'
REPLACE INTO `item_buyingstore` VALUES (1093);  -- 'Garrafa de Poção'
REPLACE INTO `item_buyingstore` VALUES (1094);  -- 'Trança Curta'
REPLACE INTO `item_buyingstore` VALUES (1095);  -- 'Ponteiro'
REPLACE INTO `item_buyingstore` VALUES (1096);  -- 'Casca Arredondada'
REPLACE INTO `item_buyingstore` VALUES (1097);  -- 'Página Deteriorada'
REPLACE INTO `item_buyingstore` VALUES (1098);  -- 'Algemas'
REPLACE INTO `item_buyingstore` VALUES (1099);  -- 'Uniforme Velho de Presidiário'
REPLACE INTO `item_buyingstore` VALUES (6001);  -- 'Essência de Fogo'
REPLACE INTO `item_buyingstore` VALUES (6002);  -- 'Medalhão do Apóstolo'
REPLACE INTO `item_buyingstore` VALUES (6003);  -- 'Pingente do Espírito'
REPLACE INTO `item_buyingstore` VALUES (6004);  -- 'Boneco de Bafomé Maldito'
REPLACE INTO `item_buyingstore` VALUES (6008);  -- 'Wood'
REPLACE INTO `item_buyingstore` VALUES (6010);  -- 'Picareta'
REPLACE INTO `item_buyingstore` VALUES (6020);  -- 'Pêlo'
REPLACE INTO `item_buyingstore` VALUES (6021);  -- 'Chapéu Pontudo'
REPLACE INTO `item_buyingstore` VALUES (6022);  -- 'Pele Dura'
REPLACE INTO `item_buyingstore` VALUES (6023);  -- 'Chifre Místico'
REPLACE INTO `item_buyingstore` VALUES (6032);  -- 'Chifre de Leão da Montanha'
REPLACE INTO `item_buyingstore` VALUES (6033);  -- 'Chifre de Leão de Vinhas'
REPLACE INTO `item_buyingstore` VALUES (6073);  -- 'Crina de Dragão'
REPLACE INTO `item_buyingstore` VALUES (6075);  -- 'Lágrima Cristalizada'
REPLACE INTO `item_buyingstore` VALUES (6086);  -- 'Flor Murcha'
REPLACE INTO `item_buyingstore` VALUES (6087);  -- 'Crista Espiritual Azul'
REPLACE INTO `item_buyingstore` VALUES (6088);  -- 'Crista Espiritual Vermelha'
REPLACE INTO `item_buyingstore` VALUES (6089);  -- 'Fragmento Sombrio'
REPLACE INTO `item_buyingstore` VALUES (6090);  -- 'Bradium Purificado'
REPLACE INTO `item_buyingstore` VALUES (6091);  -- 'Escama Vermelha-Escura'
REPLACE INTO `item_buyingstore` VALUES (6095);  -- 'Líquido Aromatizado'
REPLACE INTO `item_buyingstore` VALUES (6096);  -- 'Peixe Azulado'
REPLACE INTO `item_buyingstore` VALUES (6097);  -- 'Torta Assustadora'
REPLACE INTO `item_buyingstore` VALUES (6098);  -- 'Cristal de Neve'
REPLACE INTO `item_buyingstore` VALUES (6099);  -- 'Grilled Rice Cake'
REPLACE INTO `item_buyingstore` VALUES (6100);  -- 'Fumaça Negra'
REPLACE INTO `item_buyingstore` VALUES (6104);  -- 'Cristal Gigante'
REPLACE INTO `item_buyingstore` VALUES (6105);  -- 'Orvalho da Manhã'
REPLACE INTO `item_buyingstore` VALUES (6106);  -- 'Morango Maduro'
REPLACE INTO `item_buyingstore` VALUES (6107);  -- 'Coquetel de Verão'
REPLACE INTO `item_buyingstore` VALUES (6108);  -- 'Gelatina de Maçã'
REPLACE INTO `item_buyingstore` VALUES (6109);  -- 'Plant Neutrient'
REPLACE INTO `item_buyingstore` VALUES (6110);  -- 'Flor Vívida'
REPLACE INTO `item_buyingstore` VALUES (6111);  -- 'Mystic Stone'
REPLACE INTO `item_buyingstore` VALUES (6112);  -- 'Fresh Plant'
REPLACE INTO `item_buyingstore` VALUES (6113);  -- 'Flor Vital'
REPLACE INTO `item_buyingstore` VALUES (6114);  -- 'Gema em Chamas'
REPLACE INTO `item_buyingstore` VALUES (6115);  -- 'Bolinho Quente'
REPLACE INTO `item_buyingstore` VALUES (6120);  -- 'Tinta para Parede'
REPLACE INTO `item_buyingstore` VALUES (6123);  -- 'Surface Paint'
REPLACE INTO `item_buyingstore` VALUES (6128);  -- 'Antídoto'
REPLACE INTO `item_buyingstore` VALUES (6144);  -- 'Lágrimas de Arrependimento'
REPLACE INTO `item_buyingstore` VALUES (6145);  -- 'Cápsula Incandescente'
REPLACE INTO `item_buyingstore` VALUES (6146);  -- 'Combustível Diferenciado Leve'
REPLACE INTO `item_buyingstore` VALUES (6147);  -- 'Cápsula de Nitrogênio Líquido'
REPLACE INTO `item_buyingstore` VALUES (6186);  -- 'Chave Inglesa'
REPLACE INTO `item_buyingstore` VALUES (6189);  -- 'Grimório de Lanças de Fogo'
REPLACE INTO `item_buyingstore` VALUES (6190);  -- 'Grimório de Lanças de Gelo'
REPLACE INTO `item_buyingstore` VALUES (6191);  -- 'Grimório de Relâmpago'
REPLACE INTO `item_buyingstore` VALUES (6192);  -- 'Grimório de Nevasca'
REPLACE INTO `item_buyingstore` VALUES (6193);  -- 'Grimório de Ira de Thor'
REPLACE INTO `item_buyingstore` VALUES (6194);  -- 'Grimório de Chuva de Meteoros'
REPLACE INTO `item_buyingstore` VALUES (6195);  -- 'Grimório de Cometa'
REPLACE INTO `item_buyingstore` VALUES (6196);  -- 'Grimório de Tetra Vortex'
REPLACE INTO `item_buyingstore` VALUES (6197);  -- 'Grimório de Tempestade de Raios'
REPLACE INTO `item_buyingstore` VALUES (6198);  -- 'Grimório de Trovão de Júpiter'
REPLACE INTO `item_buyingstore` VALUES (6199);  -- 'Grimório de Esferas DNULLÁgua'
REPLACE INTO `item_buyingstore` VALUES (6200);  -- 'Grimório de Fúria da Terra'
REPLACE INTO `item_buyingstore` VALUES (6201);  -- 'Grimório de Coluna de Pedra'
REPLACE INTO `item_buyingstore` VALUES (6202);  -- 'Grimório de Abalo Sísmico'
REPLACE INTO `item_buyingstore` VALUES (6203);  -- 'Grimório de Corrente Elétrica'
REPLACE INTO `item_buyingstore` VALUES (6204);  -- 'Grimório de Meteoro Escarlate'
REPLACE INTO `item_buyingstore` VALUES (6205);  -- 'Grimório de Drenar Vida'
REPLACE INTO `item_buyingstore` VALUES (6210);  -- 'Semente de Planta Selvagem'
REPLACE INTO `item_buyingstore` VALUES (6211);  -- 'Semente de Planta Sanguessuga'
REPLACE INTO `item_buyingstore` VALUES (6212);  -- 'Esporo de Cogumelo Explosivo'
REPLACE INTO `item_buyingstore` VALUES (6213);  -- 'Pó Explosivo'
REPLACE INTO `item_buyingstore` VALUES (6214);  -- 'Gás de Fumaça'
REPLACE INTO `item_buyingstore` VALUES (6215);  -- 'Gás Lacrimejante'
REPLACE INTO `item_buyingstore` VALUES (6216);  -- 'Garrafa com Óleo'
REPLACE INTO `item_buyingstore` VALUES (6217);  -- 'Muda de Mandrágora'
REPLACE INTO `item_buyingstore` VALUES (6223);  -- 'Carnium'
REPLACE INTO `item_buyingstore` VALUES (6224);  -- 'Bradium'
REPLACE INTO `item_buyingstore` VALUES (6244);  -- 'Mistura de Pólvora'
REPLACE INTO `item_buyingstore` VALUES (6245);  -- 'Pó Negro'
REPLACE INTO `item_buyingstore` VALUES (6246);  -- 'Pó Amarelo'
REPLACE INTO `item_buyingstore` VALUES (6247);  -- 'Pó Branco'
REPLACE INTO `item_buyingstore` VALUES (6248);  -- 'Vasilha Melange'
REPLACE INTO `item_buyingstore` VALUES (6249);  -- 'Carne de Selvagem'
REPLACE INTO `item_buyingstore` VALUES (6250);  -- 'Espeto de Cozinha'
REPLACE INTO `item_buyingstore` VALUES (6251);  -- 'Carvão Negro'
REPLACE INTO `item_buyingstore` VALUES (6252);  -- 'Sangue de Lobo'
REPLACE INTO `item_buyingstore` VALUES (6253);  -- 'Gelo'
REPLACE INTO `item_buyingstore` VALUES (6254);  -- 'Medalhões de Carne'
REPLACE INTO `item_buyingstore` VALUES (6255);  -- 'Vasilha Grande'
REPLACE INTO `item_buyingstore` VALUES (6256);  -- 'Raspadinha'
REPLACE INTO `item_buyingstore` VALUES (6257);  -- 'Gelo Cristalino'
REPLACE INTO `item_buyingstore` VALUES (6258);  -- 'Fruta de Comodo'
REPLACE INTO `item_buyingstore` VALUES (6259);  -- 'Tentáculo de Drosera'
REPLACE INTO `item_buyingstore` VALUES (6260);  -- 'Rabo de Petite'
REPLACE INTO `item_buyingstore` VALUES (6261);  -- 'Macarrão Fino'
REPLACE INTO `item_buyingstore` VALUES (6262);  -- 'Molho Especial'
REPLACE INTO `item_buyingstore` VALUES (6263);  -- 'Coco Fresco'
REPLACE INTO `item_buyingstore` VALUES (6264);  -- 'Melão'
REPLACE INTO `item_buyingstore` VALUES (6265);  -- 'Abacaxi'
REPLACE INTO `item_buyingstore` VALUES (6279);  -- 'Livro de Bombas de Maçã'
REPLACE INTO `item_buyingstore` VALUES (6280);  -- 'Livro de Bombas de Abacaxi'
REPLACE INTO `item_buyingstore` VALUES (6281);  -- 'Livro de Bombas de Coco'
REPLACE INTO `item_buyingstore` VALUES (6282);  -- 'Livro de Bombas de Melão'
REPLACE INTO `item_buyingstore` VALUES (6283);  -- 'Livro de Bombas de Banana'
REPLACE INTO `item_buyingstore` VALUES (6284);  -- 'Livro de Genética Vegetal'
REPLACE INTO `item_buyingstore` VALUES (6285);  -- 'Livro de Farmacologia'
REPLACE INTO `item_buyingstore` VALUES (6297);  -- 'Garrafa de Arremesso'
REPLACE INTO `item_buyingstore` VALUES (6321);  -- 'Rake Helmet'
REPLACE INTO `item_buyingstore` VALUES (6322);  -- 'Antler Helmet'
REPLACE INTO `item_buyingstore` VALUES (6323);  -- 'Two-Horn Helmet'
REPLACE INTO `item_buyingstore` VALUES (6324);  -- 'One-Horn Helmet'
REPLACE INTO `item_buyingstore` VALUES (6325);  -- 'White Spider Legs'
REPLACE INTO `item_buyingstore` VALUES (6326);  -- 'Queen Scraba Shell'
REPLACE INTO `item_buyingstore` VALUES (6360);  -- 'Fragmento Escarlate'
REPLACE INTO `item_buyingstore` VALUES (6361);  -- 'Fragmento Azul'
REPLACE INTO `item_buyingstore` VALUES (6362);  -- 'Fragmento Amarelo'
REPLACE INTO `item_buyingstore` VALUES (6363);  -- 'FragmentoVerde'
REPLACE INTO `item_buyingstore` VALUES (7001);  -- 'Pó de Bolor'
REPLACE INTO `item_buyingstore` VALUES (7002);  -- 'Dente de Ogro'
REPLACE INTO `item_buyingstore` VALUES (7003);  -- 'Pele de Anolian'
REPLACE INTO `item_buyingstore` VALUES (7004);  -- 'Monte de Lama'
REPLACE INTO `item_buyingstore` VALUES (7005);  -- 'Crânio'
REPLACE INTO `item_buyingstore` VALUES (7006);  -- 'Asa de Morcego Vermelho'
REPLACE INTO `item_buyingstore` VALUES (7007);  -- 'Garra de Rato'
REPLACE INTO `item_buyingstore` VALUES (7008);  -- 'Chifre Firme'
REPLACE INTO `item_buyingstore` VALUES (7009);  -- 'Casca Brilhante'
REPLACE INTO `item_buyingstore` VALUES (7010);  -- 'Cauda de Escorpião de Aço'
REPLACE INTO `item_buyingstore` VALUES (7011);  -- 'Garra de Macaco'
REPLACE INTO `item_buyingstore` VALUES (7012);  -- 'Pedaço de Escama Dura'
REPLACE INTO `item_buyingstore` VALUES (7013);  -- 'Coral'
REPLACE INTO `item_buyingstore` VALUES (7014);  -- 'Retrato Velho'
REPLACE INTO `item_buyingstore` VALUES (7015);  -- 'Marca-Página'
REPLACE INTO `item_buyingstore` VALUES (7016);  -- 'Colher Entortada'
REPLACE INTO `item_buyingstore` VALUES (7017);  -- 'Luva do Carrasco'
REPLACE INTO `item_buyingstore` VALUES (7018);  -- 'Graveto de Visco'
REPLACE INTO `item_buyingstore` VALUES (7019);  -- 'Sussurros de Loki'
REPLACE INTO `item_buyingstore` VALUES (7020);  -- 'Pesadelo Maternal'
REPLACE INTO `item_buyingstore` VALUES (7021);  -- 'Tolice do Cego'
REPLACE INTO `item_buyingstore` VALUES (7022);  -- 'Bainha Velha'
REPLACE INTO `item_buyingstore` VALUES (7023);  -- 'Lâmina Perdida nas Trevas'
REPLACE INTO `item_buyingstore` VALUES (7024);  -- 'Lâmina Ensanguentada'
REPLACE INTO `item_buyingstore` VALUES (7026);  -- 'Chave para a Torre do Relógio'
REPLACE INTO `item_buyingstore` VALUES (7027);  -- 'Chave para o Subterrâneo'
REPLACE INTO `item_buyingstore` VALUES (7030);  -- 'Garra de Lobo do Deserto'
REPLACE INTO `item_buyingstore` VALUES (7031);  -- 'Frigideira Velha'
REPLACE INTO `item_buyingstore` VALUES (7032);  -- 'Pedaço de Casca de Ovo'
REPLACE INTO `item_buyingstore` VALUES (7033);  -- 'Esporo Venenoso'
REPLACE INTO `item_buyingstore` VALUES (7034);  -- 'Meia Furada'
REPLACE INTO `item_buyingstore` VALUES (7035);  -- 'Palito de Fósforo'
REPLACE INTO `item_buyingstore` VALUES (7036);  -- 'Presa de Hati'
REPLACE INTO `item_buyingstore` VALUES (7038);  -- 'Novelo'
REPLACE INTO `item_buyingstore` VALUES (7041);  -- 'Torrão de Areia Fina'
REPLACE INTO `item_buyingstore` VALUES (7043);  -- 'Areia Fina'
REPLACE INTO `item_buyingstore` VALUES (7047);  -- 'Avental de Alice'
REPLACE INTO `item_buyingstore` VALUES (7048);  -- 'Garra de Grifo'
REPLACE INTO `item_buyingstore` VALUES (7049);  -- 'Pedra'
REPLACE INTO `item_buyingstore` VALUES (7053);  -- 'Cyfar'
REPLACE INTO `item_buyingstore` VALUES (7054);  -- 'Brigan'
REPLACE INTO `item_buyingstore` VALUES (7055);  -- 'Cocô de Bichinho'
REPLACE INTO `item_buyingstore` VALUES (7056);  -- 'Extrato de Pagamento'
REPLACE INTO `item_buyingstore` VALUES (7057);  -- 'Gjallar'
REPLACE INTO `item_buyingstore` VALUES (7058);  -- 'Gleipnir'
REPLACE INTO `item_buyingstore` VALUES (7063);  -- 'Pena Macia'
REPLACE INTO `item_buyingstore` VALUES (7064);  -- 'Asas de Libélula'
REPLACE INTO `item_buyingstore` VALUES (7065);  -- 'Pele de Lontra'
REPLACE INTO `item_buyingstore` VALUES (7066);  -- 'Cubo de Gelo'
REPLACE INTO `item_buyingstore` VALUES (7067);  -- 'Pedaço de Pedra'
REPLACE INTO `item_buyingstore` VALUES (7068);  -- 'Madeira Queimada'
REPLACE INTO `item_buyingstore` VALUES (7069);  -- 'Armadura Destruída'
REPLACE INTO `item_buyingstore` VALUES (7070);  -- 'Casca Quebrada'
REPLACE INTO `item_buyingstore` VALUES (7071);  -- 'Farrapos'
REPLACE INTO `item_buyingstore` VALUES (7072);  -- 'Shuriken Gasto'
REPLACE INTO `item_buyingstore` VALUES (7073);  -- 'Lágrimas de Freyja'
REPLACE INTO `item_buyingstore` VALUES (7074);  -- 'Manopla de Thor'
REPLACE INTO `item_buyingstore` VALUES (7075);  -- 'Dama de Ferro'
REPLACE INTO `item_buyingstore` VALUES (7076);  -- 'Roda desconhecida'
REPLACE INTO `item_buyingstore` VALUES (7077);  -- 'Ornamento de Prata'
REPLACE INTO `item_buyingstore` VALUES (7078);  -- 'Fúria das Valquírias'
REPLACE INTO `item_buyingstore` VALUES (7079);  -- 'Pena de Asas Angelicais'
REPLACE INTO `item_buyingstore` VALUES (7080);  -- 'Passos de Gato'
REPLACE INTO `item_buyingstore` VALUES (7081);  -- 'Barbas de Mulher'
REPLACE INTO `item_buyingstore` VALUES (7082);  -- 'Raiz de Montanha'
REPLACE INTO `item_buyingstore` VALUES (7083);  -- 'Hálito de Peixe'
REPLACE INTO `item_buyingstore` VALUES (7084);  -- 'Saliva de Ave'
REPLACE INTO `item_buyingstore` VALUES (7085);  -- 'Nervos de Urso'
REPLACE INTO `item_buyingstore` VALUES (7086);  -- 'Símbolo do Deus-Sol'
REPLACE INTO `item_buyingstore` VALUES (7087);  -- 'Essência de Espírito'
REPLACE INTO `item_buyingstore` VALUES (7088);  -- 'Floco de Neve'
REPLACE INTO `item_buyingstore` VALUES (7089);  -- 'Presságio de Tempestade'
REPLACE INTO `item_buyingstore` VALUES (7090);  -- 'Murmúrio'
REPLACE INTO `item_buyingstore` VALUES (7091);  -- 'Tsunami'
REPLACE INTO `item_buyingstore` VALUES (7092);  -- 'Ar Silencioso'
REPLACE INTO `item_buyingstore` VALUES (7093);  -- 'Engrenagem'
REPLACE INTO `item_buyingstore` VALUES (7094);  -- 'Fragmento Misterioso'
REPLACE INTO `item_buyingstore` VALUES (7095);  -- 'Pedaço de Metal'
REPLACE INTO `item_buyingstore` VALUES (7096);  -- 'Pedra Pome'
REPLACE INTO `item_buyingstore` VALUES (7097);  -- 'Coração Incandescente'
REPLACE INTO `item_buyingstore` VALUES (7098);  -- 'Lenha em Brasa'
REPLACE INTO `item_buyingstore` VALUES (7099);  -- 'Pergaminho Antigo'
REPLACE INTO `item_buyingstore` VALUES (7100);  -- 'Folha Afiada'
REPLACE INTO `item_buyingstore` VALUES (7101);  -- 'Pena de Grand Peco'
REPLACE INTO `item_buyingstore` VALUES (7102);  -- 'Pedra do Pesadelo'
REPLACE INTO `item_buyingstore` VALUES (7103);  -- 'Essência de AXe'
REPLACE INTO `item_buyingstore` VALUES (7104);  -- 'Asas de Anjo Fajutas'
REPLACE INTO `item_buyingstore` VALUES (7105);  -- 'Auréola Fajuta'
REPLACE INTO `item_buyingstore` VALUES (7106);  -- 'Chifre de Bode'
REPLACE INTO `item_buyingstore` VALUES (7107);  -- 'Pele de Bode'
REPLACE INTO `item_buyingstore` VALUES (7108);  -- 'Pedaço de Escudo Colossal'
REPLACE INTO `item_buyingstore` VALUES (7109);  -- 'Lâmina de Lança Colossal'
REPLACE INTO `item_buyingstore` VALUES (7110);  -- 'Espada Chanfrada'
REPLACE INTO `item_buyingstore` VALUES (7111);  -- 'Pedaço de Papel'
REPLACE INTO `item_buyingstore` VALUES (7112);  -- 'Lâmina de Papel'
REPLACE INTO `item_buyingstore` VALUES (7113);  -- 'Cetro do Faraó'
REPLACE INTO `item_buyingstore` VALUES (7114);  -- 'Máscara do Faraó'
REPLACE INTO `item_buyingstore` VALUES (7115);  -- 'Pena de Harpia'
REPLACE INTO `item_buyingstore` VALUES (7116);  -- 'Garra de Harpia'
REPLACE INTO `item_buyingstore` VALUES (7117);  -- 'Velho Grimório'
REPLACE INTO `item_buyingstore` VALUES (7118);  -- 'Pergaminho Gasto'
REPLACE INTO `item_buyingstore` VALUES (7119);  -- 'Bactérias'
REPLACE INTO `item_buyingstore` VALUES (7120);  -- 'Ferradura em Chamas'
REPLACE INTO `item_buyingstore` VALUES (7121);  -- 'Pote de Mel'
REPLACE INTO `item_buyingstore` VALUES (7122);  -- 'Pelugem Incandescente'
REPLACE INTO `item_buyingstore` VALUES (7123);  -- 'Pele de Dragão'
REPLACE INTO `item_buyingstore` VALUES (7124);  -- 'Areia Molhada'
REPLACE INTO `item_buyingstore` VALUES (7125);  -- 'Pinças de Escorpião'
REPLACE INTO `item_buyingstore` VALUES (7126);  -- 'Jellopy Tamanho Família'
REPLACE INTO `item_buyingstore` VALUES (7127);  -- 'Manual de Criação Vol.2: Álcool'
REPLACE INTO `item_buyingstore` VALUES (7128);  -- 'Manual de Criação: Vol.3: Fogo Grego'
REPLACE INTO `item_buyingstore` VALUES (7129);  -- 'Manual de Criação: Vol.4: Ácidos'
REPLACE INTO `item_buyingstore` VALUES (7130);  -- 'Manual de Criação: Vol.5: Plantas'
REPLACE INTO `item_buyingstore` VALUES (7131);  -- 'Manual de Criação: Vol.6: Explosivos'
REPLACE INTO `item_buyingstore` VALUES (7132);  -- 'Manual de Criação: Vol.7: Revestimentos'
REPLACE INTO `item_buyingstore` VALUES (7133);  -- 'Manual de Criação: Vol.8: Poções Compactas'
REPLACE INTO `item_buyingstore` VALUES (7134);  -- 'Vasilha de Mistura'
REPLACE INTO `item_buyingstore` VALUES (7140);  -- 'Semente da Vida'
REPLACE INTO `item_buyingstore` VALUES (7141);  -- 'Orvalho da Yggdrasil'
REPLACE INTO `item_buyingstore` VALUES (7143);  -- 'Cápsula da Criação'
REPLACE INTO `item_buyingstore` VALUES (7144);  -- 'Manual de Criação: Vol.1: Poções Comuns'
REPLACE INTO `item_buyingstore` VALUES (7147);  -- 'Jasmim'
REPLACE INTO `item_buyingstore` VALUES (7149);  -- 'Prato Amarelado'
REPLACE INTO `item_buyingstore` VALUES (7150);  -- 'Pedaço de Bambu'
REPLACE INTO `item_buyingstore` VALUES (7151);  -- 'Papel Amarelado'
REPLACE INTO `item_buyingstore` VALUES (7152);  -- 'Cabelos Perfumados'
REPLACE INTO `item_buyingstore` VALUES (7153);  -- 'Velho Obi'
REPLACE INTO `item_buyingstore` VALUES (7154);  -- 'Poeira Venenosa'
REPLACE INTO `item_buyingstore` VALUES (7155);  -- 'Pele de Sapo'
REPLACE INTO `item_buyingstore` VALUES (7156);  -- 'Shuriken Despedaçado'
REPLACE INTO `item_buyingstore` VALUES (7157);  -- 'Máscara Ninja'
REPLACE INTO `item_buyingstore` VALUES (7158);  -- 'Jarro de Saquê'
REPLACE INTO `item_buyingstore` VALUES (7159);  -- 'Nariz de Tengu'
REPLACE INTO `item_buyingstore` VALUES (7160);  -- 'Passe Imperial'
REPLACE INTO `item_buyingstore` VALUES (7161);  -- 'Pele Negra de Urso'
REPLACE INTO `item_buyingstore` VALUES (7162);  -- 'Jarro de Nuvem'
REPLACE INTO `item_buyingstore` VALUES (7163);  -- 'Antenas Afiadas'
REPLACE INTO `item_buyingstore` VALUES (7164);  -- 'Pêssego Petrificado'
REPLACE INTO `item_buyingstore` VALUES (7165);  -- 'Manto Cerimonial Celestial'
REPLACE INTO `item_buyingstore` VALUES (7166);  -- 'Seda Macia'
REPLACE INTO `item_buyingstore` VALUES (7167);  -- 'Misterioso Metal em Pano'
REPLACE INTO `item_buyingstore` VALUES (7168);  -- 'Grandes Asas de Borboleta'
REPLACE INTO `item_buyingstore` VALUES (7169);  -- 'Ba Gua'
REPLACE INTO `item_buyingstore` VALUES (7170);  -- 'Smoking'
REPLACE INTO `item_buyingstore` VALUES (7171);  -- 'Pele de Leopardo'
REPLACE INTO `item_buyingstore` VALUES (7172);  -- 'Garras de Leopardo'
REPLACE INTO `item_buyingstore` VALUES (7174);  -- 'Laço para presente'
REPLACE INTO `item_buyingstore` VALUES (7175);  -- 'Papel de presente'
REPLACE INTO `item_buyingstore` VALUES (7182);  -- 'Cacau'
REPLACE INTO `item_buyingstore` VALUES (7186);  -- 'Cipó'
REPLACE INTO `item_buyingstore` VALUES (7187);  -- 'Máscara do Festival'
REPLACE INTO `item_buyingstore` VALUES (7188);  -- 'Raiz Marrom'
REPLACE INTO `item_buyingstore` VALUES (7189);  -- 'Coração de Madeira'
REPLACE INTO `item_buyingstore` VALUES (7190);  -- 'Casco de Inseto'
REPLACE INTO `item_buyingstore` VALUES (7191);  -- 'Lanterna'
REPLACE INTO `item_buyingstore` VALUES (7192);  -- 'Catavento'
REPLACE INTO `item_buyingstore` VALUES (7193);  -- 'Semente'
REPLACE INTO `item_buyingstore` VALUES (7194);  -- 'Grama'
REPLACE INTO `item_buyingstore` VALUES (7195);  -- 'Estilingue'
REPLACE INTO `item_buyingstore` VALUES (7196);  -- 'Ombreira'
REPLACE INTO `item_buyingstore` VALUES (7197);  -- 'Palha'
REPLACE INTO `item_buyingstore` VALUES (7198);  -- 'Folha Gigante'
REPLACE INTO `item_buyingstore` VALUES (7199);  -- 'Cupom Misterioso'
REPLACE INTO `item_buyingstore` VALUES (7200);  -- 'Elástico'
REPLACE INTO `item_buyingstore` VALUES (7201);  -- 'Tora'
REPLACE INTO `item_buyingstore` VALUES (7202);  -- 'Pata de Besouro'
REPLACE INTO `item_buyingstore` VALUES (7203);  -- 'Galho Resistente'
REPLACE INTO `item_buyingstore` VALUES (7204);  -- 'Pólvora'
REPLACE INTO `item_buyingstore` VALUES (7205);  -- 'Retalho Negro'
REPLACE INTO `item_buyingstore` VALUES (7206);  -- 'Boneco de Gato Preto'
REPLACE INTO `item_buyingstore` VALUES (7207);  -- 'Manteau Velho'
REPLACE INTO `item_buyingstore` VALUES (7208);  -- 'Faca Enferrujada'
REPLACE INTO `item_buyingstore` VALUES (7209);  -- 'Elmo de Dullahan'
REPLACE INTO `item_buyingstore` VALUES (7210);  -- 'Armadura de Dullahan'
REPLACE INTO `item_buyingstore` VALUES (7211);  -- 'Lasca de Pedra'
REPLACE INTO `item_buyingstore` VALUES (7212);  -- 'Boneca Enforcada'
REPLACE INTO `item_buyingstore` VALUES (7213);  -- 'Almofada de Alfinetes'
REPLACE INTO `item_buyingstore` VALUES (7214);  -- 'Gaiola de Morcegos'
REPLACE INTO `item_buyingstore` VALUES (7215);  -- 'Espeto Quebrado'
REPLACE INTO `item_buyingstore` VALUES (7216);  -- 'Cachecol Vermelho'
REPLACE INTO `item_buyingstore` VALUES (7217);  -- 'Carretel'
REPLACE INTO `item_buyingstore` VALUES (7218);  -- 'Corda Decomposta'
REPLACE INTO `item_buyingstore` VALUES (7219);  -- 'Meia Listrada'
REPLACE INTO `item_buyingstore` VALUES (7220);  -- 'Ectoplasma'
REPLACE INTO `item_buyingstore` VALUES (7221);  -- 'Corrente'
REPLACE INTO `item_buyingstore` VALUES (7222);  -- 'Coluna de Madeira'
REPLACE INTO `item_buyingstore` VALUES (7223);  -- 'Auto Retrato'
REPLACE INTO `item_buyingstore` VALUES (7225);  -- 'Lanterna de Abóbora'
REPLACE INTO `item_buyingstore` VALUES (7226);  -- 'Pílula'
REPLACE INTO `item_buyingstore` VALUES (7262);  -- 'Leque Fantasma'
REPLACE INTO `item_buyingstore` VALUES (7263);  -- 'Olho de Gato'
REPLACE INTO `item_buyingstore` VALUES (7264);  -- 'Areia Seca'
REPLACE INTO `item_buyingstore` VALUES (7265);  -- 'Chifre de Dragão'
REPLACE INTO `item_buyingstore` VALUES (7266);  -- 'Dentadura da Máscara do Dragão'
REPLACE INTO `item_buyingstore` VALUES (7267);  -- 'Tanga de Tigre'
REPLACE INTO `item_buyingstore` VALUES (7268);  -- 'Pequena Boneca Fantasma'
REPLACE INTO `item_buyingstore` VALUES (7269);  -- 'Babador'
REPLACE INTO `item_buyingstore` VALUES (7270);  -- 'Mamadeira'
REPLACE INTO `item_buyingstore` VALUES (7277);  -- 'Boneco de Munak'
REPLACE INTO `item_buyingstore` VALUES (7286);  -- 'Pimenta Vermelha'
REPLACE INTO `item_buyingstore` VALUES (7289);  -- 'Cristal de Peridoto'
REPLACE INTO `item_buyingstore` VALUES (7290);  -- 'Flogopita'
REPLACE INTO `item_buyingstore` VALUES (7291);  -- 'Ágata'
REPLACE INTO `item_buyingstore` VALUES (7292);  -- 'Moscovita'
REPLACE INTO `item_buyingstore` VALUES (7293);  -- 'Quartzo Rosa'
REPLACE INTO `item_buyingstore` VALUES (7294);  -- 'Turquesa'
REPLACE INTO `item_buyingstore` VALUES (7295);  -- 'Citrina'
REPLACE INTO `item_buyingstore` VALUES (7296);  -- 'Piroxênio'
REPLACE INTO `item_buyingstore` VALUES (7297);  -- 'Biotita'
REPLACE INTO `item_buyingstore` VALUES (7298);  -- 'Folha de Figo'
REPLACE INTO `item_buyingstore` VALUES (7299);  -- 'Cesto de Palha'
REPLACE INTO `item_buyingstore` VALUES (7300);  -- 'Pedras Preciosas'
REPLACE INTO `item_buyingstore` VALUES (7301);  -- 'Fitilhos'
REPLACE INTO `item_buyingstore` VALUES (7303);  -- 'Saco de Arroz'
REPLACE INTO `item_buyingstore` VALUES (7312);  -- 'Jubileu'
REPLACE INTO `item_buyingstore` VALUES (7315);  -- 'Fragmento de Cristal Negro'
REPLACE INTO `item_buyingstore` VALUES (7316);  -- 'Perna de Inseto'
REPLACE INTO `item_buyingstore` VALUES (7317);  -- 'Parafuso Enferrujado'
REPLACE INTO `item_buyingstore` VALUES (7318);  -- 'Picareta Velha'
REPLACE INTO `item_buyingstore` VALUES (7319);  -- 'Placa de Ferro Usada'
REPLACE INTO `item_buyingstore` VALUES (7320);  -- 'Poeira Poluente'
REPLACE INTO `item_buyingstore` VALUES (7321);  -- 'Fragmento de Cristal'
REPLACE INTO `item_buyingstore` VALUES (7322);  -- 'Gás Tóxico'
REPLACE INTO `item_buyingstore` VALUES (7323);  -- 'Chaleira Surrada'
REPLACE INTO `item_buyingstore` VALUES (7325);  -- 'Tubo Flexível'
REPLACE INTO `item_buyingstore` VALUES (7326);  -- 'Líquido Fluorescente'
REPLACE INTO `item_buyingstore` VALUES (7327);  -- 'Lanterna de Capacete'
REPLACE INTO `item_buyingstore` VALUES (7340);  -- 'Desejo das Trevas'
REPLACE INTO `item_buyingstore` VALUES (7345);  -- 'Algemas'
REPLACE INTO `item_buyingstore` VALUES (7352);  -- 'Prato Transparente'
REPLACE INTO `item_buyingstore` VALUES (7353);  -- 'Prato Transparente'
REPLACE INTO `item_buyingstore` VALUES (7354);  -- 'Prato Transparente'
REPLACE INTO `item_buyingstore` VALUES (7355);  -- 'Prato Transparente'
REPLACE INTO `item_buyingstore` VALUES (7356);  -- 'Pedaço de Crista'
REPLACE INTO `item_buyingstore` VALUES (7357);  -- 'Pedaço de Crista'
REPLACE INTO `item_buyingstore` VALUES (7358);  -- 'Pedaço de Crista'
REPLACE INTO `item_buyingstore` VALUES (7359);  -- 'Pedaço de Crista'
REPLACE INTO `item_buyingstore` VALUES (7419);  -- 'Guia de Criação de Embriões'
REPLACE INTO `item_buyingstore` VALUES (7433);  -- 'Pergaminho em Branco'
REPLACE INTO `item_buyingstore` VALUES (7434);  -- 'Guia de Criação de Poções Elementais'
REPLACE INTO `item_buyingstore` VALUES (7435);  -- 'Ornamento Dourado'
REPLACE INTO `item_buyingstore` VALUES (7436);  -- 'Fragmento de Agonia'
REPLACE INTO `item_buyingstore` VALUES (7437);  -- 'Fragmento de Desgraça'
REPLACE INTO `item_buyingstore` VALUES (7438);  -- 'Fragmento de Ódio'
REPLACE INTO `item_buyingstore` VALUES (7439);  -- 'Fragmento de Desespero'
REPLACE INTO `item_buyingstore` VALUES (7440);  -- 'Pena Vermelha'
REPLACE INTO `item_buyingstore` VALUES (7441);  -- 'Pena Azul'
REPLACE INTO `item_buyingstore` VALUES (7442);  -- 'Selo Maldito'
REPLACE INTO `item_buyingstore` VALUES (7443);  -- 'Cabeça de Dragão de Três Cabeças'
REPLACE INTO `item_buyingstore` VALUES (7444);  -- 'Arca de Tesouro'
REPLACE INTO `item_buyingstore` VALUES (7445);  -- 'Bijuteria Verde'
REPLACE INTO `item_buyingstore` VALUES (7446);  -- 'Bijuteria Azul'
REPLACE INTO `item_buyingstore` VALUES (7447);  -- 'Bijuteria Vermelha'
REPLACE INTO `item_buyingstore` VALUES (7448);  -- 'Bijuteria Amarela'
REPLACE INTO `item_buyingstore` VALUES (7449);  -- 'Página Sangrenta'
REPLACE INTO `item_buyingstore` VALUES (7450);  -- 'Peça de Armadura de Esqueleto'
REPLACE INTO `item_buyingstore` VALUES (7451);  -- 'Escama de Dragão de Fogo'
REPLACE INTO `item_buyingstore` VALUES (7452);  -- 'Condimento Amarelo'
REPLACE INTO `item_buyingstore` VALUES (7453);  -- 'Molho Doce'
REPLACE INTO `item_buyingstore` VALUES (7454);  -- 'Molho Saboroso'
REPLACE INTO `item_buyingstore` VALUES (7455);  -- 'Molho Picante'
REPLACE INTO `item_buyingstore` VALUES (7456);  -- 'Condimento Vermelho'
REPLACE INTO `item_buyingstore` VALUES (7457);  -- 'Óleo de Cozinha'
REPLACE INTO `item_buyingstore` VALUES (7472);  -- 'Livro de Culinária Nível 1'
REPLACE INTO `item_buyingstore` VALUES (7473);  -- 'Livro de Culinária Nível 2'
REPLACE INTO `item_buyingstore` VALUES (7474);  -- 'Livro de Culinária Nível 3'
REPLACE INTO `item_buyingstore` VALUES (7475);  -- 'Livro de Culinária Nível 4'
REPLACE INTO `item_buyingstore` VALUES (7476);  -- 'Livro de Culinária Nível 5'
REPLACE INTO `item_buyingstore` VALUES (7477);  -- 'Livro de Culinária Nível 6'
REPLACE INTO `item_buyingstore` VALUES (7478);  -- 'Livro de Culinária Nível 7'
REPLACE INTO `item_buyingstore` VALUES (7479);  -- 'Livro de Culinária Nível 8'
REPLACE INTO `item_buyingstore` VALUES (7480);  -- 'Livro de Culinária Nível 9'
REPLACE INTO `item_buyingstore` VALUES (7481);  -- 'Livro de Culinária Nível 10'
REPLACE INTO `item_buyingstore` VALUES (7482);  -- 'Panela'
REPLACE INTO `item_buyingstore` VALUES (7507);  -- 'Pedaço de Ferro Sólido'
REPLACE INTO `item_buyingstore` VALUES (7510);  -- 'Flor de Valhalla'
REPLACE INTO `item_buyingstore` VALUES (7511);  -- 'Runa da Escuridão'
REPLACE INTO `item_buyingstore` VALUES (7512);  -- 'Peça Queimada'
REPLACE INTO `item_buyingstore` VALUES (7513);  -- 'Relógio de Bolso'
REPLACE INTO `item_buyingstore` VALUES (7521);  -- 'Pedra do Fogo'
REPLACE INTO `item_buyingstore` VALUES (7522);  -- 'Pedra do Gelo'
REPLACE INTO `item_buyingstore` VALUES (7523);  -- 'Pedra do Vento'
REPLACE INTO `item_buyingstore` VALUES (7524);  -- 'Esfera das Sombras'
REPLACE INTO `item_buyingstore` VALUES (7561);  -- 'Coração Glacial'
REPLACE INTO `item_buyingstore` VALUES (7562);  -- 'Escama de Gelo'
REPLACE INTO `item_buyingstore` VALUES (7563);  -- 'Runa Sangrenta'
REPLACE INTO `item_buyingstore` VALUES (7564);  -- 'Carne Estragada'
REPLACE INTO `item_buyingstore` VALUES (7565);  -- 'Veneno Pegajoso'
REPLACE INTO `item_buyingstore` VALUES (7566);  -- 'Desejo das Trevas Escarlate'
REPLACE INTO `item_buyingstore` VALUES (7567);  -- 'Chapéu Suspeito'
REPLACE INTO `item_buyingstore` VALUES (7568);  -- 'Máscara Branca'
REPLACE INTO `item_buyingstore` VALUES (7574);  -- 'Pó Glacial'
REPLACE INTO `item_buyingstore` VALUES (7751);  -- 'Velha Vestimenta Branca'
REPLACE INTO `item_buyingstore` VALUES (7752);  -- 'Crânio Atordoante'
REPLACE INTO `item_buyingstore` VALUES (7753);  -- 'Utensílio Rural Quebrado'
REPLACE INTO `item_buyingstore` VALUES (7754);  -- 'Coroa Quebrada'
REPLACE INTO `item_buyingstore` VALUES (7830);  -- 'Lágrima da Deusa'
REPLACE INTO `item_buyingstore` VALUES (7831);  -- 'Símbolo da Valquíria'
REPLACE INTO `item_buyingstore` VALUES (7832);  -- 'Pedaço de Vestimenta'
REPLACE INTO `item_buyingstore` VALUES (7833);  -- 'Cinzas de Herói'
REPLACE INTO `item_buyingstore` VALUES (7834);  -- 'Anel de Andvari'
REPLACE INTO `item_buyingstore` VALUES (7835);  -- 'Crepúsculo Vermelho'
REPLACE INTO `item_buyingstore` VALUES (7836);  -- 'Essência do Alvorecer'
REPLACE INTO `item_buyingstore` VALUES (7837);  -- 'Luar Gélido'
REPLACE INTO `item_buyingstore` VALUES (7838);  -- 'Constelação Obscura'
REPLACE INTO `item_buyingstore` VALUES (7931);  -- 'Kit de Veneno'
REPLACE INTO `item_buyingstore` VALUES (7932);  -- 'Nerium'
REPLACE INTO `item_buyingstore` VALUES (7933);  -- 'Lantana'
REPLACE INTO `item_buyingstore` VALUES (7934);  -- 'Makulrata'
REPLACE INTO `item_buyingstore` VALUES (7935);  -- 'Celatom'
REPLACE INTO `item_buyingstore` VALUES (7936);  -- 'Scoforia'
REPLACE INTO `item_buyingstore` VALUES (7937);  -- 'Amoena'
REPLACE INTO `item_buyingstore` VALUES (7938);  -- 'Partículas de Luz'
REPLACE INTO `item_buyingstore` VALUES (7939);  -- 'Galho Antigo'
REPLACE INTO `item_buyingstore` VALUES (7940);  -- 'Armadilha Especial'
REPLACE INTO `item_buyingstore` VALUES (11000);  -- 'História de Prontera'
REPLACE INTO `item_buyingstore` VALUES (11001);  -- 'Histórias de Aventura Vol.1'
REPLACE INTO `item_buyingstore` VALUES (11002);  -- 'Mestre-Cuca Orleans Vol.1'
REPLACE INTO `item_buyingstore` VALUES (11003);  -- 'Lendas das Kafras Vol.1'
REPLACE INTO `item_buyingstore` VALUES (11004);  -- 'Livro Antigo'
REPLACE INTO `item_buyingstore` VALUES (11005);  -- 'A Família Real de Rune-Midgard'
REPLACE INTO `item_buyingstore` VALUES (11006);  -- 'Flores de Sangue Vol.1'
REPLACE INTO `item_buyingstore` VALUES (11007);  -- 'Flores de Sangue Vol.2'
REPLACE INTO `item_buyingstore` VALUES (11008);  -- 'Dicionário Biográfico'
REPLACE INTO `item_buyingstore` VALUES (11009);  -- 'Histórias de Aventura Vol.2'
REPLACE INTO `item_buyingstore` VALUES (11020);  -- 'Japanese Book 1'
REPLACE INTO `item_buyingstore` VALUES (11021);  -- 'Japanese Book 2'
REPLACE INTO `item_buyingstore` VALUES (11022);  -- 'Livro de Culinária Avançada'
REPLACE INTO `item_buyingstore` VALUES (11023);  -- 'Como Aumentar sua Força'
REPLACE INTO `item_buyingstore` VALUES (11024);  -- 'Como Aumentar sua Energia



--
-- Estrutura para a tabela `item_noequip`
--  

CREATE TABLE IF NOT EXISTS `item_noequip` (
  `ItemID` smallint(2) unsigned NOT NULL default '0',
  `Mode` smallint(2) unsigned NOT NULL default '0',
   PRIMARY KEY (`ItemID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*
 Itens não-equipáveis.
 Descrição: Responsável pela restrição para equipar itens.
 Cabeçalho: REPLACE INTO `item_noequip` VALUES ('ID do Item, Área de Restrição');
*/

REPLACE INTO `item_noequip` VALUES (14529,2); 		-- 'Greed Scroll'
REPLACE INTO `item_noequip` VALUES (12218,4); 		-- 'LV5 Assumptio Scroll'
REPLACE INTO `item_noequip` VALUES (14529,4); 		-- 'Greed Scroll'
REPLACE INTO `item_noequip` VALUES (14590,4); 		-- 'Party Assumptio 5 Scroll'
REPLACE INTO `item_noequip` VALUES (12218,8); 		-- 'LV5 Assumptio Scroll'
REPLACE INTO `item_noequip` VALUES (14590,8); 		-- 'Party Assumptio 5 Scroll'
REPLACE INTO `item_noequip` VALUES (601,32);		-- 'Asa de Mosca'
REPLACE INTO `item_noequip` VALUES (605,32);	    -- 'Anodyne'
REPLACE INTO `item_noequip` VALUES (506,32);		-- 'Poção Verde'
REPLACE INTO `item_noequip` VALUES (525,32);		-- 'Panacéia'
REPLACE INTO `item_noequip` VALUES (601,64);		-- 'Asa de Mosca - \"Sem necessidade de usar\"'
REPLACE INTO `item_noequip` VALUES (602,64);		-- 'Asa de Borboleta - \"Também não é necessário\"'
REPLACE INTO `item_noequip` VALUES (12212,64); 		-- 'Asa de Borboleta Gigante'
REPLACE INTO `item_noequip` VALUES (14582,64);		-- 'Yellow Butterfly Wing'
REPLACE INTO `item_noequip` VALUES (14583,64);		-- 'Green Butterfly Wing'
REPLACE INTO `item_noequip` VALUES (14584,64);		-- 'Red Butterfly Wing'
REPLACE INTO `item_noequip` VALUES (14585,64);		-- 'Blue Butterfly Wing'
REPLACE INTO `item_noequip` VALUES (601,128); 		-- 'Asa de Mosca'
REPLACE INTO `item_noequip` VALUES (14529,2048);	-- 'Greed Scroll'



--
-- Estrutura para a tabela `item_trade`
--  

CREATE TABLE IF NOT EXISTS `item_trade` (
  `ItemID` smallint(2) unsigned NOT NULL default '0',
  `TradeMask` tinyint(1) unsigned NOT NULL default '0',
  `GMLvl` tinyint(1) unsigned NOT NULL default '0',
   PRIMARY KEY (`ItemID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*
 Troca de Itens.
 Descrição: Responsável pelos itens restritos à negociações.
 Cabeçalho: REPLACE INTO `item_trade` VALUES ('ID do Item, Restrição, Nível de GM para ignorar restrição');
*/

REPLACE INTO `item_trade` VALUES (2634,123,100);	-- 'Bridegroom_Ring'
REPLACE INTO `item_trade` VALUES (2635,123,100);	-- 'Bride_Ring'
REPLACE INTO `item_trade` VALUES (7177,123,100);	-- 'Part_Of_StarNULLs_Sob'
REPLACE INTO `item_trade` VALUES (7178,123,100);	-- 'StarNULLs_Sob'
REPLACE INTO `item_trade` VALUES (7304,123,100);	-- 'WitchNULLs_Spell_Book'
REPLACE INTO `item_trade` VALUES (7305,123,100);	-- 'Authority_Of_Nine_World'
REPLACE INTO `item_trade` VALUES (7306,123,100);	-- 'Fragment_Of_Soul'
REPLACE INTO `item_trade` VALUES (7307,123,100);	-- 'Whisper_Of_Soul'
REPLACE INTO `item_trade` VALUES (7308,123,100);	-- 'WitchNULLs_Potion'
REPLACE INTO `item_trade` VALUES (7309,123,100);	-- 'Wing_Of_Crow'
REPLACE INTO `item_trade` VALUES (2642,91,100);	-- 'SerinNULLs_Gold_Ring'
REPLACE INTO `item_trade` VALUES (2643,91,100);	-- 'SerinNULLs_Gold_Ring_'
REPLACE INTO `item_trade` VALUES (2644,123,100);	-- 'The_Sign_'
REPLACE INTO `item_trade` VALUES (7314,123,100);	-- 'The_Sign'
REPLACE INTO `item_trade` VALUES (7025,91,100);	-- 'LuciferNULLs_Lament'
REPLACE INTO `item_trade` VALUES (2647,123,100);	-- 'Nile_Rose'
REPLACE INTO `item_trade` VALUES (7332,123,100);	-- 'Slate'
REPLACE INTO `item_trade` VALUES (7333,123,100);	-- 'Piece_Of_Slate_1'
REPLACE INTO `item_trade` VALUES (7334,123,100);	-- 'Piece_Of_Slate_2'
REPLACE INTO `item_trade` VALUES (7335,123,100);	-- 'Piece_Of_Slate_3'
REPLACE INTO `item_trade` VALUES (7336,123,100);	-- 'Piece_Of_Slate_4'
REPLACE INTO `item_trade` VALUES (7339,123,100);	-- 'RO_Transportation_Card_'
REPLACE INTO `item_trade` VALUES (5132,91,100);	-- 'Angeling_Hat'
REPLACE INTO `item_trade` VALUES (7416,91,100);	-- 'Letter_Of_Recommend'
REPLACE INTO `item_trade` VALUES (7417,91,100);	-- 'Mission_Scrolla'
REPLACE INTO `item_trade` VALUES (7418,91,100);	-- 'Mission_Scrollb'
REPLACE INTO `item_trade` VALUES (7431,115,100);	-- 'Several_Books'
REPLACE INTO `item_trade` VALUES (7432,123,100);	-- 'Leather_Pouch'
REPLACE INTO `item_trade` VALUES (7421,115,100);	-- 'Key_Red'
REPLACE INTO `item_trade` VALUES (7422,115,100);	-- 'Key_Yellow'
REPLACE INTO `item_trade` VALUES (7423,115,100);	-- 'Key_Blue'
REPLACE INTO `item_trade` VALUES (7424,115,100);	-- 'Key_Green'
REPLACE INTO `item_trade` VALUES (7425,115,100);	-- 'Key_Black'
REPLACE INTO `item_trade` VALUES (7426,115,100);	-- 'Magic_Gem_Red'
REPLACE INTO `item_trade` VALUES (7427,115,100);	-- 'Magic_Gem_Yellow'
REPLACE INTO `item_trade` VALUES (7428,115,100);	-- 'Magic_Gem_Blue'
REPLACE INTO `item_trade` VALUES (7429,115,100);	-- 'Magic_Gem_Green'
REPLACE INTO `item_trade` VALUES (7430,115,100);	-- 'Magic_Gem_Black'
REPLACE INTO `item_trade` VALUES (7484,123,100);	-- 'Warrior_Symbol'
REPLACE INTO `item_trade` VALUES (7485,123,100);	-- '2nd_Floor_Pass'
REPLACE INTO `item_trade` VALUES (7486,123,100);	-- '3rd_Floor_Pass'
REPLACE INTO `item_trade` VALUES (7487,123,100);	-- 'Tavern_Wine'
REPLACE INTO `item_trade` VALUES (7488,123,100);	-- 'Delivery_Box'
REPLACE INTO `item_trade` VALUES (7489,123,100);	-- 'Villa_Spare_Key'
REPLACE INTO `item_trade` VALUES (7490,123,100);	-- 'Kyll_Hire_Letter'
REPLACE INTO `item_trade` VALUES (7491,123,100);	-- 'Iron_Box'
REPLACE INTO `item_trade` VALUES (7492,123,100);	-- 'Yellow_Key_Card'
REPLACE INTO `item_trade` VALUES (7493,123,100);	-- 'Golden_Key'
REPLACE INTO `item_trade` VALUES (7494,123,100);	-- 'Kiel_Button'
REPLACE INTO `item_trade` VALUES (7495,123,100);	-- 'Blue_Key_Card'
REPLACE INTO `item_trade` VALUES (7496,123,100);	-- 'Red_Key_Card'
REPLACE INTO `item_trade` VALUES (7497,123,100);	-- 'Steel_Piece'
REPLACE INTO `item_trade` VALUES (7498,123,100);	-- 'Rosimier_Key'
REPLACE INTO `item_trade` VALUES (7499,123,100);	-- 'Family_Portrait'
REPLACE INTO `item_trade` VALUES (7500,123,100);	-- 'Elysia_Portrait'
REPLACE INTO `item_trade` VALUES (7501,123,100);	-- 'Kyll_Hire_Letter2'
REPLACE INTO `item_trade` VALUES (7502,123,100);	-- 'Piece_Memo_Of_James'
REPLACE INTO `item_trade` VALUES (7503,123,100);	-- 'Man_Portrait'
REPLACE INTO `item_trade` VALUES (7504,123,100);	-- 'Toy_Motor'
REPLACE INTO `item_trade` VALUES (7505,123,100);	-- 'Toy_Key'
REPLACE INTO `item_trade` VALUES (7506,115,100);	-- 'Black_Key_Card'
REPLACE INTO `item_trade` VALUES (7508,123,100);	-- 'Elysia_Ring'
REPLACE INTO `item_trade` VALUES (7509,83,100);	-- 'Fancy_Key_Card'
REPLACE INTO `item_trade` VALUES (7516,115,100);	-- 'Green_Key_Card'
REPLACE INTO `item_trade` VALUES (7515,115,100);	-- 'Marvelous_Medal'
REPLACE INTO `item_trade` VALUES (7518,115,100);	-- 'WomenNULLs_Medal'
REPLACE INTO `item_trade` VALUES (2668,115,100);	-- 'WomenNULLs_Glory'
REPLACE INTO `item_trade` VALUES (7525,115,100);	-- 'Summer_Feast_Ticket'
REPLACE INTO `item_trade` VALUES (7341,123,100);	-- 'Worn_Out_Pendant'
REPLACE INTO `item_trade` VALUES (7342,123,100);	-- 'File01'
REPLACE INTO `item_trade` VALUES (7343,123,100);	-- 'File02'
REPLACE INTO `item_trade` VALUES (7344,123,100);	-- 'File03'
REPLACE INTO `item_trade` VALUES (7346,123,100);	-- 'Pile_Of_Ymir_Heart'
REPLACE INTO `item_trade` VALUES (7349,123,100);	-- 'Indication_Of_Member02'
REPLACE INTO `item_trade` VALUES (7351,123,100);	-- 'FriendNULLs_Diary'
REPLACE INTO `item_trade` VALUES (7527,122,100);	-- 'Life_Book'
REPLACE INTO `item_trade` VALUES (12142,122,100);	-- 'Magic_Book'
REPLACE INTO `item_trade` VALUES (7530,123,100);	-- 'Travel_Brochure_01'
REPLACE INTO `item_trade` VALUES (7531,123,100);	-- 'Travel_Brochure_02'
REPLACE INTO `item_trade` VALUES (7532,123,100);	-- 'Travel_Brochure_03'
REPLACE INTO `item_trade` VALUES (7533,123,100);	-- 'Travel_Brochure_04'
REPLACE INTO `item_trade` VALUES (7534,123,100);	-- 'Photo_Album_01'
REPLACE INTO `item_trade` VALUES (7535,123,100);	-- 'Photo_Album_02'
REPLACE INTO `item_trade` VALUES (7536,123,100);	-- 'Photo_Album_03'
REPLACE INTO `item_trade` VALUES (7537,123,100);	-- 'Photo_Album_04'
REPLACE INTO `item_trade` VALUES (5147,123,100);	-- 'Baseball_Cap'
REPLACE INTO `item_trade` VALUES (7538,115,100);	-- 'Sifted_Sand'
REPLACE INTO `item_trade` VALUES (7539,115,100);	-- 'Poring_Coin'
REPLACE INTO `item_trade` VALUES (5149,83,100);	-- 'Silver_Tiara'
REPLACE INTO `item_trade` VALUES (5179,65,100);	-- 'Gold_Tiara'
REPLACE INTO `item_trade` VALUES (5262,83,100);	-- 'Gold_Tiara_'
REPLACE INTO `item_trade` VALUES (5261,83,100);	-- 'Silver_Tiara_'
REPLACE INTO `item_trade` VALUES (7547,115,100);	-- 'Soccer_Ball'
REPLACE INTO `item_trade` VALUES (7548,115,100);	-- 'Soccer_Shoes'
REPLACE INTO `item_trade` VALUES (7549,115,100);	-- 'Brazilian_Flag'
REPLACE INTO `item_trade` VALUES (7550,115,100);	-- 'Ticket01'
REPLACE INTO `item_trade` VALUES (7551,115,100);	-- 'Ticket02'
REPLACE INTO `item_trade` VALUES (7552,115,100);	-- 'Ticket03'
REPLACE INTO `item_trade` VALUES (7553,115,100);	-- 'Lotus_Flower'
REPLACE INTO `item_trade` VALUES (7554,115,100);	-- 'Striped_Candle'
REPLACE INTO `item_trade` VALUES (7555,115,100);	-- 'Green_Incense'
REPLACE INTO `item_trade` VALUES (7556,91,100);	-- 'Longing_Heart'
REPLACE INTO `item_trade` VALUES (7557,91,100);	-- 'Invitation_Letter'
REPLACE INTO `item_trade` VALUES (7558,91,100);	-- 'Invitation_Ticket'
REPLACE INTO `item_trade` VALUES (7559,91,100);	-- 'Key_Of_Flower_Garden'
REPLACE INTO `item_trade` VALUES (2670,91,100);	-- 'Ring_Of_Longing'
REPLACE INTO `item_trade` VALUES (2358,91,100);	-- 'Dress_Of_Angel'
REPLACE INTO `item_trade` VALUES (5154,91,100);	-- 'Sunglasses_f'
REPLACE INTO `item_trade` VALUES (5155,91,100);	-- 'Granpa_Beard_f'
REPLACE INTO `item_trade` VALUES (5156,91,100);	-- 'Flu_Mask_f'
REPLACE INTO `item_trade` VALUES (7575,115,100);	-- 'Red_Jewel_'
REPLACE INTO `item_trade` VALUES (7576,115,100);	-- 'Blue_Jewel_'
REPLACE INTO `item_trade` VALUES (7577,115,100);	-- 'Golden_Jewel_'
REPLACE INTO `item_trade` VALUES (7572,91,100);	-- 'Magic_Necklace'
REPLACE INTO `item_trade` VALUES (7573,91,100);	-- 'Magic_Necklace_'
REPLACE INTO `item_trade` VALUES (7569,91,100);	-- 'Hammer_Of_Wind'
REPLACE INTO `item_trade` VALUES (7275,123,100);	-- 'Ancient_Document'
REPLACE INTO `item_trade` VALUES (7276,123,100);	-- 'Picture_Letter'
REPLACE INTO `item_trade` VALUES (7579,115,100);	-- 'Silk_Handkerchief'
REPLACE INTO `item_trade` VALUES (7583,115,100);	-- 'Evil_Mind'
REPLACE INTO `item_trade` VALUES (7584,115,100);	-- 'Proof_Of_Guard1'
REPLACE INTO `item_trade` VALUES (7585,115,100);	-- 'Proof_Of_Guard2'
REPLACE INTO `item_trade` VALUES (7586,115,100);	-- 'Proof_Of_Guard3'
REPLACE INTO `item_trade` VALUES (7587,115,100);	-- 'Proof_Of_Guard4'
REPLACE INTO `item_trade` VALUES (2673,123,100);	-- 'Shining_Ring'
REPLACE INTO `item_trade` VALUES (1533,123,100);	-- 'Warrior_Balmung'
REPLACE INTO `item_trade` VALUES (13020,123,100);	-- 'Warrior_Balmung_'
REPLACE INTO `item_trade` VALUES (7588,115,100);	-- 'IPOD_Ticker'
REPLACE INTO `item_trade` VALUES (7603,115,100);	-- 'RO_Party_Ticket'
REPLACE INTO `item_trade` VALUES (5201,115,100);	-- 'Party_Hat_b'
REPLACE INTO `item_trade` VALUES (2674,123,100);	-- 'Honor_Ring'
REPLACE INTO `item_trade` VALUES (12199,123,100);	-- 'Rice_Scroll'
REPLACE INTO `item_trade` VALUES (7614,115,100);	-- 'Special_Packing_Paper'
REPLACE INTO `item_trade` VALUES (7618,115,100);	-- 'Monster_Crystal'
REPLACE INTO `item_trade` VALUES (2676,123,100);	-- 'Hunter_Earring'
REPLACE INTO `item_trade` VALUES (7701,115,100);	-- 'Dragon_Spirit'
REPLACE INTO `item_trade` VALUES (2681,123,100);	-- 'Republic_Ring'
REPLACE INTO `item_trade` VALUES (7715,115,100);	-- 'Handmade_Choco_Recipe'
REPLACE INTO `item_trade` VALUES (7716,115,100);	-- 'Strawberry_Choco_Recipe'
REPLACE INTO `item_trade` VALUES (7717,115,100);	-- 'Choco_Tart_Recipe'
REPLACE INTO `item_trade` VALUES (12238,83,100);	-- 'New_Year_Rice_Cake_1'
REPLACE INTO `item_trade` VALUES (12239,83,100);	-- 'New_Year_Rice_Cake_2'
REPLACE INTO `item_trade` VALUES (12900,73,100);	-- 'Battle_Manual_Box'
REPLACE INTO `item_trade` VALUES (12901,73,100);	-- 'Insurance_Package'
REPLACE INTO `item_trade` VALUES (12902,73,100);	-- 'Bubble_Gum_Box'
REPLACE INTO `item_trade` VALUES (12903,73,100);	-- 'Str_Dish_Box'
REPLACE INTO `item_trade` VALUES (12904,73,100);	-- 'Agi_Dish_Box'
REPLACE INTO `item_trade` VALUES (12905,73,100);	-- 'Int_Dish_Box'
REPLACE INTO `item_trade` VALUES (12906,73,100);	-- 'Dex_Dish_Box'
REPLACE INTO `item_trade` VALUES (12907,73,100);	-- 'Luk_Dish_Box'
REPLACE INTO `item_trade` VALUES (12908,73,100);	-- 'Vit_Dish_Box'
REPLACE INTO `item_trade` VALUES (12909,73,100);	-- 'Kafra_Card_Box'
REPLACE INTO `item_trade` VALUES (12910,73,100);	-- 'Giant_Fly_Wing_Box'
REPLACE INTO `item_trade` VALUES (12911,73,100);	-- 'Neuralizer_Box'
REPLACE INTO `item_trade` VALUES (12912,73,100);	-- 'Convex_Mirror_Box'
REPLACE INTO `item_trade` VALUES (12913,73,100);	-- 'Blessing_10_Scroll_Box'
REPLACE INTO `item_trade` VALUES (12914,73,100);	-- 'Inc_Agi_10_Scroll_Box'
REPLACE INTO `item_trade` VALUES (12915,73,100);	-- 'Aspersio_5_Scroll_Box'
REPLACE INTO `item_trade` VALUES (12916,73,100);	-- 'Assumptio_5_Scroll_Box'
REPLACE INTO `item_trade` VALUES (12917,73,100);	-- 'Wind_Walk_10_Scroll_Box'
REPLACE INTO `item_trade` VALUES (12918,73,100);	-- 'Adrenaline_Scroll_Box'
REPLACE INTO `item_trade` VALUES (12919,73,100);	-- 'Megaphone_Box'
REPLACE INTO `item_trade` VALUES (12920,73,100);	-- 'Enriched_Elunium_Box'
REPLACE INTO `item_trade` VALUES (12921,73,100);	-- 'Enriched_Oridecon_Box'
REPLACE INTO `item_trade` VALUES (12922,73,100);	-- 'Token_Of_Siegfried_Box'
REPLACE INTO `item_trade` VALUES (12927,73,100);	-- 'J_Aspersio_5_Scroll_Box'
REPLACE INTO `item_trade` VALUES (12928,91,100);	-- 'J_Aspersio_5_Scroll'
REPLACE INTO `item_trade` VALUES (12202,91,100);	-- 'Str_Dish10_'
REPLACE INTO `item_trade` VALUES (12203,91,100);	-- 'Agi_Dish10_'
REPLACE INTO `item_trade` VALUES (12204,91,100);	-- 'Int_Dish10_'
REPLACE INTO `item_trade` VALUES (12205,91,100);	-- 'Dex_Dish10_'
REPLACE INTO `item_trade` VALUES (12206,91,100);	-- 'Luk_Dish10_'
REPLACE INTO `item_trade` VALUES (12207,91,100);	-- 'Vit_Dish10_'
REPLACE INTO `item_trade` VALUES (12208,91,100);	-- 'Battle_Manual'
REPLACE INTO `item_trade` VALUES (12209,91,100);	-- 'Insurance'
REPLACE INTO `item_trade` VALUES (12210,91,100);	-- 'Bubble_Gum'
REPLACE INTO `item_trade` VALUES (12211,91,100);	-- 'Kafra_Card'
REPLACE INTO `item_trade` VALUES (12212,91,100);	-- 'Giant_Fly_Wing'
REPLACE INTO `item_trade` VALUES (12213,91,100);	-- 'Neuralizer'
REPLACE INTO `item_trade` VALUES (12214,91,100);	-- 'Convex_Mirror'
REPLACE INTO `item_trade` VALUES (12215,91,100);	-- 'Blessing_10_Scroll'
REPLACE INTO `item_trade` VALUES (12216,91,100);	-- 'Inc_Agi_10_Scroll'
REPLACE INTO `item_trade` VALUES (12217,91,100);	-- 'Aspersio_5_Scroll'
REPLACE INTO `item_trade` VALUES (12218,91,100);	-- 'Assumptio_5_Scroll'
REPLACE INTO `item_trade` VALUES (12219,91,100);	-- 'Wind_Walk_10_Scroll'
REPLACE INTO `item_trade` VALUES (12220,91,100);	-- 'Adrenaline_Scroll'
REPLACE INTO `item_trade` VALUES (12221,91,100);	-- 'Megaphone_'
REPLACE INTO `item_trade` VALUES (7619,91,100);	-- 'Enriched_Elunium'
REPLACE INTO `item_trade` VALUES (7620,91,100);	-- 'Enriched_Oridecon'
REPLACE INTO `item_trade` VALUES (7621,91,100);	-- 'Token_Of_Siegfried'
REPLACE INTO `item_trade` VALUES (5269,123,100);	-- 'Flying_Angel_'
REPLACE INTO `item_trade` VALUES (12965,73,100);	-- 'Emergency_Box1'
REPLACE INTO `item_trade` VALUES (12966,73,100);	-- 'Emergency_Box2'
REPLACE INTO `item_trade` VALUES (12967,73,100);	-- 'Emergency_Box3'
REPLACE INTO `item_trade` VALUES (12968,91,100);	-- 'Emergency_Scroll1'
REPLACE INTO `item_trade` VALUES (12969,91,100);	-- 'Emergency_Scroll2'
REPLACE INTO `item_trade` VALUES (12970,91,100);	-- 'Emergency_Scroll3'
REPLACE INTO `item_trade` VALUES (12153,115,100);	-- 'Bow_Mercenary_Scroll1'
REPLACE INTO `item_trade` VALUES (12154,115,100);	-- 'Bow_Mercenary_Scroll2'
REPLACE INTO `item_trade` VALUES (12155,115,100);	-- 'Bow_Mercenary_Scroll3'
REPLACE INTO `item_trade` VALUES (12156,115,100);	-- 'Bow_Mercenary_Scroll4'
REPLACE INTO `item_trade` VALUES (12157,115,100);	-- 'Bow_Mercenary_Scroll5'
REPLACE INTO `item_trade` VALUES (12158,115,100);	-- 'Bow_Mercenary_Scroll6'
REPLACE INTO `item_trade` VALUES (12159,115,100);	-- 'Bow_Mercenary_Scroll7'
REPLACE INTO `item_trade` VALUES (12160,115,100);	-- 'Bow_Mercenary_Scroll8'
REPLACE INTO `item_trade` VALUES (12161,115,100);	-- 'Bow_Mercenary_Scroll9'
REPLACE INTO `item_trade` VALUES (12162,115,100);	-- 'Bow_Mercenary_Scroll10'
REPLACE INTO `item_trade` VALUES (12163,115,100);	-- 'SwordMercenary_Scroll1'
REPLACE INTO `item_trade` VALUES (12164,115,100);	-- 'SwordMercenary_Scroll2'
REPLACE INTO `item_trade` VALUES (12165,115,100);	-- 'SwordMercenary_Scroll3'
REPLACE INTO `item_trade` VALUES (12166,115,100);	-- 'SwordMercenary_Scroll4'
REPLACE INTO `item_trade` VALUES (12167,115,100);	-- 'SwordMercenary_Scroll5'
REPLACE INTO `item_trade` VALUES (12168,115,100);	-- 'SwordMercenary_Scroll6'
REPLACE INTO `item_trade` VALUES (12169,115,100);	-- 'SwordMercenary_Scroll7'
REPLACE INTO `item_trade` VALUES (12170,115,100);	-- 'SwordMercenary_Scroll8'
REPLACE INTO `item_trade` VALUES (12171,115,100);	-- 'SwordMercenary_Scroll9'
REPLACE INTO `item_trade` VALUES (12172,115,100);	-- 'SwordMercenary_Scroll10'
REPLACE INTO `item_trade` VALUES (12173,115,100);	-- 'SpearMercenary_Scroll1'
REPLACE INTO `item_trade` VALUES (12174,115,100);	-- 'SpearMercenary_Scroll2'
REPLACE INTO `item_trade` VALUES (12175,115,100);	-- 'SpearMercenary_Scroll3'
REPLACE INTO `item_trade` VALUES (12176,115,100);	-- 'SpearMercenary_Scroll4'
REPLACE INTO `item_trade` VALUES (12177,115,100);	-- 'SpearMercenary_Scroll5'
REPLACE INTO `item_trade` VALUES (12178,115,100);	-- 'SpearMercenary_Scroll6'
REPLACE INTO `item_trade` VALUES (12179,115,100);	-- 'SpearMercenary_Scroll7'
REPLACE INTO `item_trade` VALUES (12180,115,100);	-- 'SpearMercenary_Scroll8'
REPLACE INTO `item_trade` VALUES (12181,115,100);	-- 'SpearMercenary_Scroll9'
REPLACE INTO `item_trade` VALUES (12182,115,100);	-- 'SpearMercenary_Scroll10'
REPLACE INTO `item_trade` VALUES (7713,115,100);	-- 'BlueCard_A_'
REPLACE INTO `item_trade` VALUES (7714,115,100);	-- 'BlueCard_R_'
REPLACE INTO `item_trade` VALUES (7719,115,100);	-- 'BlueCard_g'
REPLACE INTO `item_trade` VALUES (7598,115,100);	-- 'BlueCard_i'
REPLACE INTO `item_trade` VALUES (7599,115,100);	-- 'BlueCard_d'
REPLACE INTO `item_trade` VALUES (7600,115,100);	-- 'BlueCard_k'
REPLACE INTO `item_trade` VALUES (7601,115,100);	-- 'BlueCard_s'
REPLACE INTO `item_trade` VALUES (7602,83,100);	-- 'BlueCard_r'
REPLACE INTO `item_trade` VALUES (7461,115,100);	-- 'BlueCard_a'
REPLACE INTO `item_trade` VALUES (7466,115,100);	-- 'BlueCard_n'
REPLACE INTO `item_trade` VALUES (7467,115,100);	-- 'BlueCard_o'
REPLACE INTO `item_trade` VALUES (7854,64,100);	-- 'Pass_Cf'
REPLACE INTO `item_trade` VALUES (5189,72,100);	-- 'Fallen_Leaves'
REPLACE INTO `item_trade` VALUES (5188,72,100);	-- 'Minstrel_Hat'
REPLACE INTO `item_trade` VALUES (5150,72,100);	-- 'Joker_Jester_'
REPLACE INTO `item_trade` VALUES (5184,72,100);	-- 'Captain_Hat'
REPLACE INTO `item_trade` VALUES (5148,72,100);	-- 'Phrygian_Cap'
REPLACE INTO `item_trade` VALUES (5151,72,100);	-- 'Headset_OSt'
REPLACE INTO `item_trade` VALUES (2358,72,100);	-- 'Dress_Of_Angel'
REPLACE INTO `item_trade` VALUES (5243,72,100);	-- 'Chullos'
REPLACE INTO `item_trade` VALUES (13538,73,100);	-- 'Meteor_10_Scroll_Box'
REPLACE INTO `item_trade` VALUES (13539,73,100);	-- 'Storm_10_Scroll_Box'
REPLACE INTO `item_trade` VALUES (13540,73,100);	-- 'Vermilion_10_Scroll_Box'
REPLACE INTO `item_trade` VALUES (13541,73,100);	-- 'Lex_Aeterna_Scroll_Box'
REPLACE INTO `item_trade` VALUES (13542,73,100);	-- 'Magnificat_5_Scroll_Box'
REPLACE INTO `item_trade` VALUES (13543,73,100);	-- 'CP_Helm_Scroll_Box'
REPLACE INTO `item_trade` VALUES (13544,73,100);	-- 'CP_Shield_Scroll_Box'
REPLACE INTO `item_trade` VALUES (13545,73,100);	-- 'CP_Armor_Scroll_Box'
REPLACE INTO `item_trade` VALUES (13546,73,100);	-- 'CP_Weapon_Scroll_Box'
REPLACE INTO `item_trade` VALUES (13547,73,100);	-- 'Repair_Scroll_Box'
REPLACE INTO `item_trade` VALUES (13548,73,100);	-- 'Big_Bun_Box'
REPLACE INTO `item_trade` VALUES (13549,73,100);	-- 'Pill__Box'
REPLACE INTO `item_trade` VALUES (13550,73,100);	-- 'Superb_Fish_Slice_Box'
REPLACE INTO `item_trade` VALUES (13551,73,100);	-- 'Chewy_Ricecake_Box'
REPLACE INTO `item_trade` VALUES (13552,73,100);	-- 'Oriental_Pastry_Box'
REPLACE INTO `item_trade` VALUES (13553,73,100);	-- 'Dun_Tele_Scroll1_Box'
REPLACE INTO `item_trade` VALUES (14512,91,100);	-- 'Meteor_10_Scroll'
REPLACE INTO `item_trade` VALUES (14513,91,100);	-- 'Storm_10_Scroll'
REPLACE INTO `item_trade` VALUES (14514,91,100);	-- 'Vermilion_10_Scroll'
REPLACE INTO `item_trade` VALUES (14515,91,100);	-- 'Lex_Aeterna_Scroll'
REPLACE INTO `item_trade` VALUES (14516,91,100);	-- 'Magnificat_5_Scroll'
REPLACE INTO `item_trade` VALUES (14517,91,100);	-- 'CP_Helm_Scroll'
REPLACE INTO `item_trade` VALUES (14518,91,100);	-- 'CP_Shield_Scroll'
REPLACE INTO `item_trade` VALUES (14519,91,100);	-- 'CP_Armor_Scroll'
REPLACE INTO `item_trade` VALUES (14520,91,100);	-- 'CP_Weapon_Scroll'
REPLACE INTO `item_trade` VALUES (14521,91,100);	-- 'Repair_Scroll'
REPLACE INTO `item_trade` VALUES (14522,91,100);	-- 'Big_Bun'
REPLACE INTO `item_trade` VALUES (14523,91,100);	-- 'Pill_'
REPLACE INTO `item_trade` VALUES (14524,91,100);	-- 'Superb_Fish_Slice'
REPLACE INTO `item_trade` VALUES (14525,91,100);	-- 'Chewy_Ricecake'
REPLACE INTO `item_trade` VALUES (14526,91,100);	-- 'Oriental_Pastry'
REPLACE INTO `item_trade` VALUES (14527,91,100);	-- 'Dun_Tele_Scroll1'
REPLACE INTO `item_trade` VALUES (7895,115,100);	-- 'TRO_Memory_Book01'
REPLACE INTO `item_trade` VALUES (7896,115,100);	-- 'TRO_Memory_Book02'
REPLACE INTO `item_trade` VALUES (7897,115,100);	-- 'TRO_Memory_Book03'
REPLACE INTO `item_trade` VALUES (7898,115,100);	-- 'VVS_Balmung'
REPLACE INTO `item_trade` VALUES (7899,115,100);	-- 'Spiritualist_Dagger'
REPLACE INTO `item_trade` VALUES (5356,64,100);	-- 'Pumpkin_Hat_h'
REPLACE INTO `item_trade` VALUES (13902,91,100);	-- 'Fish_Head_Hat_Box'
REPLACE INTO `item_trade` VALUES (13903,91,100);	-- 'Santa_Poring_Hat_Box'
REPLACE INTO `item_trade` VALUES (13904,91,100);	-- 'Bell_Ribbon_Box'
REPLACE INTO `item_trade` VALUES (13634,73,100);	-- 'Vigorgra_Package1'
REPLACE INTO `item_trade` VALUES (13635,73,100);	-- 'Vigorgra_Package2'
REPLACE INTO `item_trade` VALUES (13636,73,100);	-- 'Vigorgra_Package3'
REPLACE INTO `item_trade` VALUES (13637,73,100);	-- 'Vigorgra_Package4'
REPLACE INTO `item_trade` VALUES (13638,73,100);	-- 'Vigorgra_Package5'
REPLACE INTO `item_trade` VALUES (13639,73,100);	-- 'Vigorgra_Package6'
REPLACE INTO `item_trade` VALUES (13640,73,100);	-- 'Vigorgra_Package7'
REPLACE INTO `item_trade` VALUES (13641,73,100);	-- 'Vigorgra_Package8'
REPLACE INTO `item_trade` VALUES (13642,73,100);	-- 'Vigorgra_Package9'
REPLACE INTO `item_trade` VALUES (13643,73,100);	-- 'Vigorgra_Package10'
REPLACE INTO `item_trade` VALUES (13644,73,100);	-- 'Vigorgra_Package11'
REPLACE INTO `item_trade` VALUES (13645,73,100);	-- 'Vigorgra_Package12'
REPLACE INTO `item_trade` VALUES (2368,83,100);	-- 'Golden_Armor'
REPLACE INTO `item_trade` VALUES (2427,83,100);	-- 'Golden_Shoes'
REPLACE INTO `item_trade` VALUES (2704,83,100);	-- 'Golden_Accessory'
REPLACE INTO `item_trade` VALUES (2705,83,100);	-- 'Golden_Accessory2'
REPLACE INTO `item_trade` VALUES (5295,83,100);	-- 'Golden_Bandana'
REPLACE INTO `item_trade` VALUES (7863,83,100);	-- 'GOLD_ID4'
REPLACE INTO `item_trade` VALUES (7865,115,100);	-- 'Gold_Pouch'
REPLACE INTO `item_trade` VALUES (7866,115,100);	-- 'Certificate'
REPLACE INTO `item_trade` VALUES (7704,123,100);	-- 'Broken_Thermometer'
REPLACE INTO `item_trade` VALUES (7705,123,100);	-- 'Note_Of_Geologist'
REPLACE INTO `item_trade` VALUES (7759,123,100);	-- 'Geology_Report'
REPLACE INTO `item_trade` VALUES (7875,83,100);	-- 'Pirate_Box'
REPLACE INTO `item_trade` VALUES (5305,73,100);	-- 'Pirate_Dagger'
REPLACE INTO `item_trade` VALUES (5373,73,100);	-- 'Darkness_Helm'
REPLACE INTO `item_trade` VALUES (7773,115,100);	-- 'War_Badge'
REPLACE INTO `item_trade` VALUES (7876,115,100);	-- 'Gold_Key'
REPLACE INTO `item_trade` VALUES (7877,115,100);	-- 'Red_Ring'
REPLACE INTO `item_trade` VALUES (7878,115,100);	-- 'Lusalka_Hair'
REPLACE INTO `item_trade` VALUES (7879,115,100);	-- 'Golden_Thread'
REPLACE INTO `item_trade` VALUES (7880,115,100);	-- 'Babayaga_Silver_Spoon'
REPLACE INTO `item_trade` VALUES (7881,115,100);	-- 'Book_Of_Magic'
REPLACE INTO `item_trade` VALUES (7882,115,100);	-- 'Pointed_Branch'
REPLACE INTO `item_trade` VALUES (7883,115,100);	-- 'Pointed_Wooden_Flute'
REPLACE INTO `item_trade` VALUES (2429,115,100);	-- 'Iron_Boots01'
REPLACE INTO `item_trade` VALUES (2430,115,100);	-- 'Iron_Boots02'
REPLACE INTO `item_trade` VALUES (5320,91,100);	-- 'Champion_Wreath'
REPLACE INTO `item_trade` VALUES (7884,91,100);	-- 'Jade_Plate'
REPLACE INTO `item_trade` VALUES (7885,91,100);	-- 'Sacred_Arrow'
REPLACE INTO `item_trade` VALUES (5805,91,100);	-- 'Victorious_Coronet'
REPLACE INTO `item_trade` VALUES (2708,91,100);	-- 'Chinese_Handicraft'
REPLACE INTO `item_trade` VALUES (12704,91,100);	-- 'Elixir_Of_Life'
REPLACE INTO `item_trade` VALUES (12705,91,100);	-- 'Noble_Nameplate'
REPLACE INTO `item_trade` VALUES (7784,91,100);	-- 'Fawner_Coupon1'
REPLACE INTO `item_trade` VALUES (7785,91,100);	-- 'Fawner_Coupon2'
REPLACE INTO `item_trade` VALUES (7786,91,100);	-- 'Fawner_Coupon3'
REPLACE INTO `item_trade` VALUES (7787,91,100);	-- 'Fawner_Coupon4'
REPLACE INTO `item_trade` VALUES (7788,91,100);	-- 'Fawner_Coupon5'
REPLACE INTO `item_trade` VALUES (7789,91,100);	-- 'Fawner_Coupon6'
REPLACE INTO `item_trade` VALUES (7790,91,100);	-- 'Fawner_Coupon7'
REPLACE INTO `item_trade` VALUES (7791,91,100);	-- 'Fawner_Coupon8'
REPLACE INTO `item_trade` VALUES (7794,91,100);	-- 'Fate_Of_Crow'
REPLACE INTO `item_trade` VALUES (7793,91,100);	-- 'Golden_Apple'
REPLACE INTO `item_trade` VALUES (7800,91,100);	-- 'Golden_Apple_'
REPLACE INTO `item_trade` VALUES (5322,91,100);	-- 'Scarf'
REPLACE INTO `item_trade` VALUES (12259,123,100);	-- 'Miracle_Medicine'
REPLACE INTO `item_trade` VALUES (12261,123,100);	-- 'Secret_Medicine'
REPLACE INTO `item_trade` VALUES (7801,115,100);	-- 'Girl_Fan_Letter'
REPLACE INTO `item_trade` VALUES (7802,115,100);	-- 'Autograph_Book'
REPLACE INTO `item_trade` VALUES (5323,91,100);	-- 'Misstrance_Crown'
REPLACE INTO `item_trade` VALUES (2370,91,100);	-- 'Used_Mage_Coat'
REPLACE INTO `item_trade` VALUES (2127,91,100);	-- 'Secular_Mission'
REPLACE INTO `item_trade` VALUES (2534,91,100);	-- 'Ruffler'
REPLACE INTO `item_trade` VALUES (2431,91,100);	-- 'Valley_Shoes'
REPLACE INTO `item_trade` VALUES (13029,91,100);	-- 'Prinsence_Knife'
REPLACE INTO `item_trade` VALUES (13406,91,100);	-- 'Edger'
REPLACE INTO `item_trade` VALUES (1536,91,100);	-- 'Good_Morning_Star'
REPLACE INTO `item_trade` VALUES (1423,91,100);	-- 'Pole_Xo'
REPLACE INTO `item_trade` VALUES (1921,91,100);	-- 'Guh_Moon_Gom'
REPLACE INTO `item_trade` VALUES (1975,91,100);	-- 'Queen_Is_Whip'
REPLACE INTO `item_trade` VALUES (1566,91,100);	-- 'Diary_Of_Great_Basil'
REPLACE INTO `item_trade` VALUES (1627,91,100);	-- 'Staffy'
REPLACE INTO `item_trade` VALUES (1177,91,100);	-- 'Muramash'
REPLACE INTO `item_trade` VALUES (1272,91,100);	-- 'Scratcher'
REPLACE INTO `item_trade` VALUES (1735,91,100);	-- 'Kkakkung'
REPLACE INTO `item_trade` VALUES (13765,123,100);	-- 'Certificate_TW_Box'
REPLACE INTO `item_trade` VALUES (2713,123,100);	-- 'Certificate_Tw'
REPLACE INTO `item_trade` VALUES (7820,123,100);	-- 'Morroc_Skin'
REPLACE INTO `item_trade` VALUES (5806,91,100);	-- 'Poem_Natalia_Hat'
REPLACE INTO `item_trade` VALUES (12262,123,100);	-- 'Inspector_Certificate_'
REPLACE INTO `item_trade` VALUES (12263,91,100);	-- 'Comp_Battle_Manual'
REPLACE INTO `item_trade` VALUES (12264,91,100);	-- 'Comp_Bubble_Gum'
REPLACE INTO `item_trade` VALUES (12265,91,100);	-- 'Comp_Insurance'
REPLACE INTO `item_trade` VALUES (7826,123,100);	-- 'Continental_Guard_Paper'
REPLACE INTO `item_trade` VALUES (12266,123,100);	-- 'Sesame_Pastry_'
REPLACE INTO `item_trade` VALUES (12267,123,100);	-- 'Honey_Pastry_'
REPLACE INTO `item_trade` VALUES (12268,123,100);	-- 'Rainbow_Cake_'
REPLACE INTO `item_trade` VALUES (2730,83,100);	-- 'Morroc_Seal'
REPLACE INTO `item_trade` VALUES (2731,83,100);	-- 'Morroc_Charm_Stone'
REPLACE INTO `item_trade` VALUES (2732,83,100);	-- 'Morroc_Ring'
REPLACE INTO `item_trade` VALUES (13870,80,100);	-- 'New_Style_Box'
REPLACE INTO `item_trade` VALUES (7622,91,100);	-- 'New_Style_Coupon'
REPLACE INTO `item_trade` VALUES (5412,65,100);	-- 'Sweet_Candy'
REPLACE INTO `item_trade` VALUES (6024,72,100);	-- '17Carat_Dia'
REPLACE INTO `item_trade` VALUES (12935,73,100);	-- 'Infiltrator_Box'
REPLACE INTO `item_trade` VALUES (12936,73,100);	-- 'Muramasa_Box'
REPLACE INTO `item_trade` VALUES (12937,73,100);	-- 'Excalibur_Box'
REPLACE INTO `item_trade` VALUES (12938,73,100);	-- 'Combat_Knife_Box'
REPLACE INTO `item_trade` VALUES (12939,73,100);	-- 'Counter_Dagger_Box'
REPLACE INTO `item_trade` VALUES (12940,73,100);	-- 'Kaiser_Knuckle_Box'
REPLACE INTO `item_trade` VALUES (12942,73,100);	-- 'Mighty_Staff_Box'
REPLACE INTO `item_trade` VALUES (12943,73,100);	-- 'Right_Epsilon_Box'
REPLACE INTO `item_trade` VALUES (12944,73,100);	-- 'Balistar_Box'
REPLACE INTO `item_trade` VALUES (12945,73,100);	-- 'Diary_Of_Great_Sage_Box'
REPLACE INTO `item_trade` VALUES (12946,73,100);	-- 'Asura_Box'
REPLACE INTO `item_trade` VALUES (13951,73,100);	-- 'Wasteland_Outlaw_Box'
REPLACE INTO `item_trade` VALUES (13952,73,100);	-- 'Lever_Action_Rifle_Box'
REPLACE INTO `item_trade` VALUES (13766,73,100);	-- 'Nagan_Box'
REPLACE INTO `item_trade` VALUES (13767,73,100);	-- 'Skewer_Box'
REPLACE INTO `item_trade` VALUES (13768,73,100);	-- 'Survival_Rod_Box'
REPLACE INTO `item_trade` VALUES (13769,73,100);	-- 'Quadrille_Box'
REPLACE INTO `item_trade` VALUES (13770,73,100);	-- 'Great_Axe_Box'
REPLACE INTO `item_trade` VALUES (13771,73,100);	-- 'Bloody_Roar_Box'
REPLACE INTO `item_trade` VALUES (13772,73,100);	-- 'Hardback_Box'
REPLACE INTO `item_trade` VALUES (13773,73,100);	-- 'Fire_Brand_Box'
REPLACE INTO `item_trade` VALUES (13774,73,100);	-- 'Immaterial_Sword_Box'
REPLACE INTO `item_trade` VALUES (13775,73,100);	-- 'Unholy_Touch_Box'
REPLACE INTO `item_trade` VALUES (1267,91,100);	-- 'Infiltrator_c'
REPLACE INTO `item_trade` VALUES (1173,91,100);	-- 'Muramasa_c'
REPLACE INTO `item_trade` VALUES (1372,91,100);	-- 'Right_Epsilon_c'
REPLACE INTO `item_trade` VALUES (13021,91,100);	-- 'Combat_Knife_c'
REPLACE INTO `item_trade` VALUES (13022,91,100);	-- 'Counter_Dagger_c'
REPLACE INTO `item_trade` VALUES (13023,91,100);	-- 'Asura_c'
REPLACE INTO `item_trade` VALUES (13401,91,100);	-- 'Excalibur_c'
REPLACE INTO `item_trade` VALUES (1563,91,100);	-- 'Diary_Of_Great_Sage_c'
REPLACE INTO `item_trade` VALUES (1623,91,100);	-- 'Mighty_Staff_c'
REPLACE INTO `item_trade` VALUES (1728,91,100);	-- 'Balistar_c'
REPLACE INTO `item_trade` VALUES (1817,91,100);	-- 'Kaiser_Knuckle_c'
REPLACE INTO `item_trade` VALUES (13109,91,100);	-- 'Wasteland_Outlaw_c'
REPLACE INTO `item_trade` VALUES (13175,91,100);	-- 'Lever_Action_Rifle_c'
REPLACE INTO `item_trade` VALUES (13407,91,100);	-- 'Nagan_c'
REPLACE INTO `item_trade` VALUES (1424,91,100);	-- 'Skewer_c'
REPLACE INTO `item_trade` VALUES (1628,91,100);	-- 'Survival_Rod_c'
REPLACE INTO `item_trade` VALUES (1537,91,100);	-- 'Quadrille_c'
REPLACE INTO `item_trade` VALUES (1567,91,100);	-- 'Hardback_c'
REPLACE INTO `item_trade` VALUES (13408,91,100);	-- 'Fire_Brand_c'
REPLACE INTO `item_trade` VALUES (13409,91,100);	-- 'Immaterial_Sword_c'
REPLACE INTO `item_trade` VALUES (1378,91,100);	-- 'Great_Axe_c'
REPLACE INTO `item_trade` VALUES (1273,91,100);	-- 'Bloody_Roar_c'
REPLACE INTO `item_trade` VALUES (1274,91,100);	-- 'Unholy_Touch_c'
REPLACE INTO `item_trade` VALUES (12947,73,100);	-- 'Apple_Of_Archer_Box'
REPLACE INTO `item_trade` VALUES (12948,73,100);	-- 'Bunny_Band_Box'
REPLACE INTO `item_trade` VALUES (12949,73,100);	-- 'Sahkkat_Box'
REPLACE INTO `item_trade` VALUES (12950,73,100);	-- 'Lord_Circlet_Box'
REPLACE INTO `item_trade` VALUES (12951,73,100);	-- 'Elven_Ears_Box'
REPLACE INTO `item_trade` VALUES (12952,73,100);	-- 'Steel_Flower_Box'
REPLACE INTO `item_trade` VALUES (13502,73,100);	-- 'Drooping_Kitty_Box'
REPLACE INTO `item_trade` VALUES (13955,73,100);	-- 'Recuperative_Armor_Box'
REPLACE INTO `item_trade` VALUES (13956,73,100);	-- 'Shelter_Resistance_Box'
REPLACE INTO `item_trade` VALUES (13957,73,100);	-- 'Sylphid_Manteau_Box'
REPLACE INTO `item_trade` VALUES (13958,73,100);	-- 'Refresh_Shoes_Box'
REPLACE INTO `item_trade` VALUES (13959,73,100);	-- 'Toast_Box'
REPLACE INTO `item_trade` VALUES (13776,73,100);	-- 'Cloak_Of_Survival_Box'
REPLACE INTO `item_trade` VALUES (13777,73,100);	-- 'Masquerade_Box'
REPLACE INTO `item_trade` VALUES (13778,73,100);	-- 'Orc_Hero_Helm_Box'
REPLACE INTO `item_trade` VALUES (13779,73,100);	-- 'Evil_Wing_Ears_Box'
REPLACE INTO `item_trade` VALUES (13780,73,100);	-- 'Dark_Blindfold_Box'
REPLACE INTO `item_trade` VALUES (13782,73,100);	-- 'Corsair_Box'
REPLACE INTO `item_trade` VALUES (13954,73,100);	-- 'Spiritual_Tunic_Box'
REPLACE INTO `item_trade` VALUES (5265,91,100);	-- 'Apple_Of_Archer_c'
REPLACE INTO `item_trade` VALUES (5266,91,100);	-- 'Bunny_Band_c'
REPLACE INTO `item_trade` VALUES (5267,91,100);	-- 'Sahkkat_c'
REPLACE INTO `item_trade` VALUES (5268,91,100);	-- 'Lord_Circlet_c'
REPLACE INTO `item_trade` VALUES (2686,91,100);	-- 'Elven_Ears_c'
REPLACE INTO `item_trade` VALUES (2687,91,100);	-- 'Steel_Flower_c'
REPLACE INTO `item_trade` VALUES (5279,91,100);	-- 'Drooping_Kitty_c'
REPLACE INTO `item_trade` VALUES (2385,91,100);	-- 'Recuperative_Armor'
REPLACE INTO `item_trade` VALUES (2132,91,100);	-- 'Shelter_Resistance'
REPLACE INTO `item_trade` VALUES (2543,91,100);	-- 'Sylphid_Manteau'
REPLACE INTO `item_trade` VALUES (2439,91,100);	-- 'Refresh_Shoes'
REPLACE INTO `item_trade` VALUES (5391,91,100);	-- 'Toast_c'
REPLACE INTO `item_trade` VALUES (2535,91,100);	-- 'Cloak_Of_Survival_c'
REPLACE INTO `item_trade` VALUES (5326,91,100);	-- 'Masquerade_c'
REPLACE INTO `item_trade` VALUES (5328,91,100);	-- 'Evil_Wing_Ears_c'
REPLACE INTO `item_trade` VALUES (5329,91,100);	-- 'Dark_Blindfold_c'
REPLACE INTO `item_trade` VALUES (5331,91,100);	-- 'Corsair_c'
REPLACE INTO `item_trade` VALUES (2384,91,100);	-- 'Spritual_Tunic'
REPLACE INTO `item_trade` VALUES (5327,91,100);	-- 'Orc_Hero_Helm_c'
REPLACE INTO `item_trade` VALUES (6046,123,100);	-- 'Clothing_Dye_Coupon'
REPLACE INTO `item_trade` VALUES (14289,91,100);	-- 'Cloth_Dye_Coupon_Box'
REPLACE INTO `item_trade` VALUES (6047,123,100);	-- 'Clothing_Dye_Coupon2'
REPLACE INTO `item_trade` VALUES (14290,91,100);	-- 'Cloth_Dye_Coupon2_Box'
REPLACE INTO `item_trade` VALUES (12953,73,100);	-- 'Critical_Ring_Box'
REPLACE INTO `item_trade` VALUES (12954,73,100);	-- 'Earring_Box'
REPLACE INTO `item_trade` VALUES (12955,73,100);	-- 'Ring_Box'
REPLACE INTO `item_trade` VALUES (12956,73,100);	-- 'Necklace_Box'
REPLACE INTO `item_trade` VALUES (12957,73,100);	-- 'Glove_Box'
REPLACE INTO `item_trade` VALUES (12958,73,100);	-- 'Brooch_Box'
REPLACE INTO `item_trade` VALUES (12959,73,100);	-- 'Rosary_Box'
REPLACE INTO `item_trade` VALUES (12960,73,100);	-- 'Safety_Ring_Box'
REPLACE INTO `item_trade` VALUES (12961,73,100);	-- 'Vesper_Core01_Box'
REPLACE INTO `item_trade` VALUES (12962,73,100);	-- 'Vesper_Core02_Box'
REPLACE INTO `item_trade` VALUES (12963,73,100);	-- 'Vesper_Core03_Box'
REPLACE INTO `item_trade` VALUES (12964,73,100);	-- 'Vesper_Core04_Box'
REPLACE INTO `item_trade` VALUES (13783,73,100);	-- 'Bloody_Iron_Ball_Box'
REPLACE INTO `item_trade` VALUES (13784,73,100);	-- 'Spiritual_Ring_Box'
REPLACE INTO `item_trade` VALUES (13953,73,100);	-- 'All_In_One_Ring_Box'
REPLACE INTO `item_trade` VALUES (2688,91,100);	-- 'Critical_Ring_c'
REPLACE INTO `item_trade` VALUES (2689,91,100);	-- 'Earring_c'
REPLACE INTO `item_trade` VALUES (2690,91,100);	-- 'Ring_c'
REPLACE INTO `item_trade` VALUES (2691,91,100);	-- 'Necklace_c'
REPLACE INTO `item_trade` VALUES (2692,91,100);	-- 'Glove_c'
REPLACE INTO `item_trade` VALUES (2693,91,100);	-- 'Brooch_c'
REPLACE INTO `item_trade` VALUES (2694,91,100);	-- 'Rosary_c'
REPLACE INTO `item_trade` VALUES (2695,91,100);	-- 'Safety_Ring_c'
REPLACE INTO `item_trade` VALUES (2696,91,100);	-- 'Vesper_Core01_c'
REPLACE INTO `item_trade` VALUES (2697,91,100);	-- 'Vesper_Core02_c'
REPLACE INTO `item_trade` VALUES (2698,91,100);	-- 'Vesper_Core03_c'
REPLACE INTO `item_trade` VALUES (2699,91,100);	-- 'Vesper_Core04_c'
REPLACE INTO `item_trade` VALUES (2710,91,100);	-- 'Bloody_Iron_Ball_c'
REPLACE INTO `item_trade` VALUES (2711,91,100);	-- 'Spiritual_Ring_c'
REPLACE INTO `item_trade` VALUES (2741,91,100);	-- 'All_In_One_Ring'
REPLACE INTO `item_trade` VALUES (2753,91,100);	-- 'Beholder_Ring'
REPLACE INTO `item_trade` VALUES (2754,91,100);	-- 'Hallow_Ring'
REPLACE INTO `item_trade` VALUES (2755,91,100);	-- 'Clamorous_Ring'
REPLACE INTO `item_trade` VALUES (2756,91,100);	-- 'Chemical_Ring'
REPLACE INTO `item_trade` VALUES (2757,91,100);	-- 'Insecticide_Ring'
REPLACE INTO `item_trade` VALUES (2758,91,100);	-- 'Fisher_Ring'
REPLACE INTO `item_trade` VALUES (2759,91,100);	-- 'Decussate_Ring'
REPLACE INTO `item_trade` VALUES (2760,91,100);	-- 'Bloody_Ring'
REPLACE INTO `item_trade` VALUES (2761,91,100);	-- 'Satanic_Ring'
REPLACE INTO `item_trade` VALUES (2762,91,100);	-- 'Dragoon_Ring'
REPLACE INTO `item_trade` VALUES (14242,73,100);	-- 'Beholder_Ring_Box'
REPLACE INTO `item_trade` VALUES (14243,73,100);	-- 'Hallow_Ring_Box'
REPLACE INTO `item_trade` VALUES (14244,73,100);	-- 'Clamorous_Ring_Box'
REPLACE INTO `item_trade` VALUES (14245,73,100);	-- 'Chemical_Ring_Box'
REPLACE INTO `item_trade` VALUES (14246,73,100);	-- 'Insecticide_Ring_Box'
REPLACE INTO `item_trade` VALUES (14247,73,100);	-- 'Fisher_Ring_Box'
REPLACE INTO `item_trade` VALUES (14248,73,100);	-- 'Decussate_Ring_Box'
REPLACE INTO `item_trade` VALUES (14249,73,100);	-- 'Bloody_Ring_Box'
REPLACE INTO `item_trade` VALUES (14250,73,100);	-- 'Satanic_Ring_Box'
REPLACE INTO `item_trade` VALUES (14251,73,100);	-- 'Dragoon_Ring_Box'
REPLACE INTO `item_trade` VALUES (14252,73,100);	-- 'Beholder_Ring_Box2'
REPLACE INTO `item_trade` VALUES (14253,73,100);	-- 'Hallow_Ring_Box2'
REPLACE INTO `item_trade` VALUES (14254,73,100);	-- 'Clamorous_Ring_Box2'
REPLACE INTO `item_trade` VALUES (14255,73,100);	-- 'Chemical_Ring_Box2'
REPLACE INTO `item_trade` VALUES (14256,73,100);	-- 'Insecticide_Ring_Box2'
REPLACE INTO `item_trade` VALUES (14257,73,100);	-- 'Fisher_Ring_Box2'
REPLACE INTO `item_trade` VALUES (14258,73,100);	-- 'Decussate_Ring_Box2'
REPLACE INTO `item_trade` VALUES (14259,73,100);	-- 'Bloody_Ring_Box2'
REPLACE INTO `item_trade` VALUES (14260,73,100);	-- 'Satanic_Ring_Box2'
REPLACE INTO `item_trade` VALUES (14261,73,100);	-- 'Dragoon_Ring_Box2'
REPLACE INTO `item_trade` VALUES (13864,73,100);	-- 'Hockey_Mask_Box'
REPLACE INTO `item_trade` VALUES (13865,73,100);	-- 'Observer_Box'
REPLACE INTO `item_trade` VALUES (5315,73,100);	-- 'Observer'
REPLACE INTO `item_trade` VALUES (5314,73,100);	-- 'Hockey_Mask'
REPLACE INTO `item_trade` VALUES (1638,123,100);	-- 'Healing_Staff_c'
REPLACE INTO `item_trade` VALUES (2438,83,100);	-- 'Paw_Of_Cat'
REPLACE INTO `item_trade` VALUES (2720,115,100);	-- 'Medal_Swordman'
REPLACE INTO `item_trade` VALUES (2721,115,100);	-- 'Medal_Thief'
REPLACE INTO `item_trade` VALUES (2722,115,100);	-- 'Medal_Acolyte'
REPLACE INTO `item_trade` VALUES (2723,115,100);	-- 'Medal_Mage'
REPLACE INTO `item_trade` VALUES (2724,115,100);	-- 'Medal_Archer'
REPLACE INTO `item_trade` VALUES (2725,115,100);	-- 'Medal_Merchant'
REPLACE INTO `item_trade` VALUES (2738,123,100);	-- 'Shiny_Coin'
REPLACE INTO `item_trade` VALUES (2739,123,100);	-- 'Ordinary_Coin'
REPLACE INTO `item_trade` VALUES (2740,123,100);	-- 'Rusty_Coin'
REPLACE INTO `item_trade` VALUES (2742,123,100);	-- 'Lucky_Clip'
REPLACE INTO `item_trade` VALUES (2750,123,100);	-- 'Summer_Night_Dream'
REPLACE INTO `item_trade` VALUES (2751,83,100);	-- 'Academy_Badge'
REPLACE INTO `item_trade` VALUES (2752,123,100);	-- 'Praxinus_c'
REPLACE INTO `item_trade` VALUES (5357,91,100);	-- 'Wings_Of_Victory'
REPLACE INTO `item_trade` VALUES (5368,91,100);	-- 'White_Wing'
REPLACE INTO `item_trade` VALUES (5369,91,100);	-- 'Dark_Wing'
REPLACE INTO `item_trade` VALUES (5386,64,100);	-- 'Ayam_'
REPLACE INTO `item_trade` VALUES (5394,123,100);	-- 'Bubblegum_Lower'
REPLACE INTO `item_trade` VALUES (5406,83,100);	-- 'Academy_Freshman_Hat'
REPLACE INTO `item_trade` VALUES (5407,83,100);	-- 'Academy_Graduating_Cap'
REPLACE INTO `item_trade` VALUES (5812,123,100);	-- 'Hat_Of_Expert'
REPLACE INTO `item_trade` VALUES (6000,91,100);	-- 'Dark_Ashes'
REPLACE INTO `item_trade` VALUES (6005,83,100);	-- 'New_Year_Rice_Cake'
REPLACE INTO `item_trade` VALUES (6006,115,100);	-- 'Rice_Cake_Delivery_Box'
REPLACE INTO `item_trade` VALUES (6007,115,100);	-- 'New_Year_Rice_Cake_Soup'
REPLACE INTO `item_trade` VALUES (6009,115,100);	-- 'Large_Magical_Fan'
REPLACE INTO `item_trade` VALUES (7623,123,100);	-- 'Name_Change_Coupon'
REPLACE INTO `item_trade` VALUES (6001,123,100);	-- 'Essence_Of_Fire'
REPLACE INTO `item_trade` VALUES (6002,121,100);	-- 'Token_Of_Apostle'
REPLACE INTO `item_trade` VALUES (7839,115,100);	-- 'Crystal_Key'
REPLACE INTO `item_trade` VALUES (7840,123,100);	-- 'Valkyrie_Gift'
REPLACE INTO `item_trade` VALUES (7841,115,100);	-- 'Spotted_Paper'
REPLACE INTO `item_trade` VALUES (7842,115,100);	-- 'Torn_Paper'
REPLACE INTO `item_trade` VALUES (7843,115,100);	-- 'Old_Paper'
REPLACE INTO `item_trade` VALUES (7844,115,100);	-- 'Burnt_Paper'
REPLACE INTO `item_trade` VALUES (7900,123,100);	-- 'Jenoss_Ring1'
REPLACE INTO `item_trade` VALUES (7901,123,100);	-- 'Jenoss_Ring2'
REPLACE INTO `item_trade` VALUES (7902,123,100);	-- 'Jenoss_Ring3'
REPLACE INTO `item_trade` VALUES (7903,123,100);	-- 'Jenoss_Ring4'
REPLACE INTO `item_trade` VALUES (7904,123,100);	-- 'Piano_Key'
REPLACE INTO `item_trade` VALUES (7906,123,100);	-- 'Poppy_Wreath'
REPLACE INTO `item_trade` VALUES (7907,115,100);	-- 'Bobbin_Of_Goddess'
REPLACE INTO `item_trade` VALUES (7912,123,100);	-- 'Portable_Snowman'
REPLACE INTO `item_trade` VALUES (7913,123,100);	-- 'Test_Certificate'
REPLACE INTO `item_trade` VALUES (7914,123,100);	-- 'Ancient_Document_Tw'
REPLACE INTO `item_trade` VALUES (11503,91,100);	-- 'Siege_White_Potion'
REPLACE INTO `item_trade` VALUES (11504,91,100);	-- 'Siege_Blue_Potion'
REPLACE INTO `item_trade` VALUES (12274,123,100);	-- 'Gold_Pill_1'
REPLACE INTO `item_trade` VALUES (12275,123,100);	-- 'Gold_Pill_2'
REPLACE INTO `item_trade` VALUES (12287,123,100);	-- 'Love_Angel'
REPLACE INTO `item_trade` VALUES (12288,123,100);	-- 'Squirrel'
REPLACE INTO `item_trade` VALUES (12289,123,100);	-- 'Gogo'
REPLACE INTO `item_trade` VALUES (12294,123,100);	-- 'PC_Bang_Coin_Box1'
REPLACE INTO `item_trade` VALUES (12295,123,100);	-- 'PC_Bang_Coin_Box2'
REPLACE INTO `item_trade` VALUES (12296,123,100);	-- 'PC_Bang_Coin_Box3'
REPLACE INTO `item_trade` VALUES (12297,123,100);	-- 'PC_Bang_Coin_Box4'
REPLACE INTO `item_trade` VALUES (12298,123,100);	-- 'SP_Potion'
REPLACE INTO `item_trade` VALUES (12299,123,100);	-- 'Mega_Resist_Potion'
REPLACE INTO `item_trade` VALUES (12300,115,100);	-- 'Wild_Rose_Scroll'
REPLACE INTO `item_trade` VALUES (12301,115,100);	-- 'Doppelganger_Scroll'
REPLACE INTO `item_trade` VALUES (12302,115,100);	-- 'Ygnizem_Scroll'
REPLACE INTO `item_trade` VALUES (12303,91,100);	-- 'Water_Of_Blessing'
REPLACE INTO `item_trade` VALUES (12304,123,100);	-- 'Picture_Diary'
REPLACE INTO `item_trade` VALUES (12305,123,100);	-- 'Mini_Heart'
REPLACE INTO `item_trade` VALUES (12306,123,100);	-- 'Newcomer'
REPLACE INTO `item_trade` VALUES (12307,123,100);	-- 'Kid'
REPLACE INTO `item_trade` VALUES (12308,123,100);	-- 'Magic_Castle'
REPLACE INTO `item_trade` VALUES (12309,123,100);	-- 'Bulging_Head'
REPLACE INTO `item_trade` VALUES (12310,83,100);	-- 'Spray_Of_Flowers'
REPLACE INTO `item_trade` VALUES (12311,83,100);	-- 'Large_Spray_Of_Flowers'
REPLACE INTO `item_trade` VALUES (12313,115,100);	-- 'Protection_Of_Angel'
REPLACE INTO `item_trade` VALUES (12714,83,100);	-- 'Easter_Scroll'
REPLACE INTO `item_trade` VALUES (12715,123,100);	-- 'Black_Treasure_Chest'
REPLACE INTO `item_trade` VALUES (13863,91,100);	-- 'Repair_Scroll_Box10'
REPLACE INTO `item_trade` VALUES (13866,91,100);	-- 'Flying_Angel_Box'
REPLACE INTO `item_trade` VALUES (13867,91,100);	-- 'Neko_Mimi_Box'
REPLACE INTO `item_trade` VALUES (13868,91,100);	-- 'MFH_Box'
REPLACE INTO `item_trade` VALUES (13869,91,100);	-- 'Chick_Hat_Box'
REPLACE INTO `item_trade` VALUES (13871,91,100);	-- 'Magician_Card_Box'
REPLACE INTO `item_trade` VALUES (13872,91,100);	-- 'Acolyte_Card_Box'
REPLACE INTO `item_trade` VALUES (13873,91,100);	-- 'Archer_Card_Box'
REPLACE INTO `item_trade` VALUES (13874,91,100);	-- 'Swordman_Card_Box'
REPLACE INTO `item_trade` VALUES (13875,91,100);	-- 'Thief_Card_Box'
REPLACE INTO `item_trade` VALUES (13876,91,100);	-- 'Merchant_Card_Box'
REPLACE INTO `item_trade` VALUES (13877,91,100);	-- 'Clock_Tower_Card_Box'
REPLACE INTO `item_trade` VALUES (13878,91,100);	-- 'Geffenia_Card_Box'
REPLACE INTO `item_trade` VALUES (13879,91,100);	-- 'Owl_Card_Box'
REPLACE INTO `item_trade` VALUES (13880,91,100);	-- 'Ghost_Card_Box'
REPLACE INTO `item_trade` VALUES (13881,91,100);	-- 'Nightmare_Card_Box'
REPLACE INTO `item_trade` VALUES (13882,91,100);	-- 'Curse_Card_Box'
REPLACE INTO `item_trade` VALUES (13883,91,100);	-- 'Sleep_Card_Box'
REPLACE INTO `item_trade` VALUES (13884,91,100);	-- 'Freeze_Card_Box'
REPLACE INTO `item_trade` VALUES (13885,91,100);	-- 'Stun_Card_Box'
REPLACE INTO `item_trade` VALUES (13886,91,100);	-- 'Silence_Card_Box'
REPLACE INTO `item_trade` VALUES (13887,91,100);	-- 'Blind_Card_Box'
REPLACE INTO `item_trade` VALUES (13888,91,100);	-- 'Chaos_Card_Box'
REPLACE INTO `item_trade` VALUES (13895,91,100);	-- 'Starter_Pack'
REPLACE INTO `item_trade` VALUES (13911,91,100);	-- 'Christmas_Pet_Scroll'
REPLACE INTO `item_trade` VALUES (13912,91,100);	-- 'Pty_Blessing_Box'
REPLACE INTO `item_trade` VALUES (13913,91,100);	-- 'Pty_Inc_Agi_Box'
REPLACE INTO `item_trade` VALUES (13914,91,100);	-- 'Pty_Assumptio_Box'
REPLACE INTO `item_trade` VALUES (13915,91,100);	-- 'Love_Angel_Box'
REPLACE INTO `item_trade` VALUES (13916,91,100);	-- 'Squirrel_Box'
REPLACE INTO `item_trade` VALUES (13917,91,100);	-- 'Gogo_Box'
REPLACE INTO `item_trade` VALUES (13918,91,100);	-- 'Drooping_W_Kitty_Box'
REPLACE INTO `item_trade` VALUES (13919,91,100);	-- 'L_Magestic_Goat_Box'
REPLACE INTO `item_trade` VALUES (13920,91,100);	-- 'Satanic_Chain_P_Box'
REPLACE INTO `item_trade` VALUES (13921,91,100);	-- 'Antique_Pipe_Box'
REPLACE INTO `item_trade` VALUES (13922,91,100);	-- 'Rabbit_Ear_Hat_Box'
REPLACE INTO `item_trade` VALUES (13923,91,100);	-- 'Darkness_Helm_Box'
REPLACE INTO `item_trade` VALUES (13924,91,100);	-- 'L_Orc_Hero_Helm_Box'
REPLACE INTO `item_trade` VALUES (13925,91,100);	-- 'Year_Of_Mouse_Scroll'
REPLACE INTO `item_trade` VALUES (13926,91,100);	-- 'Crusader_Card_Box'
REPLACE INTO `item_trade` VALUES (13927,91,100);	-- 'Alchemist_Card_Box'
REPLACE INTO `item_trade` VALUES (13928,91,100);	-- 'Rogue_Card_Box'
REPLACE INTO `item_trade` VALUES (13929,91,100);	-- 'Bard_Dancer_Card_Box'
REPLACE INTO `item_trade` VALUES (13930,91,100);	-- 'Sage_Card_Box'
REPLACE INTO `item_trade` VALUES (13931,91,100);	-- 'Monk_Card_Box'
REPLACE INTO `item_trade` VALUES (13932,91,100);	-- 'Sylph_Box'
REPLACE INTO `item_trade` VALUES (13933,91,100);	-- 'Undine_Box'
REPLACE INTO `item_trade` VALUES (13934,91,100);	-- 'Salamander_Box'
REPLACE INTO `item_trade` VALUES (13935,91,100);	-- 'Soul_Box'
REPLACE INTO `item_trade` VALUES (13936,91,100);	-- 'Noum_Bpx'
REPLACE INTO `item_trade` VALUES (13937,91,100);	-- 'Robo_Eye_Box'
REPLACE INTO `item_trade` VALUES (13938,91,100);	-- 'Twin_Ribbon_Box'
REPLACE INTO `item_trade` VALUES (13939,91,100);	-- 'Diadem_Box'
REPLACE INTO `item_trade` VALUES (13940,91,100);	-- 'Siege_Tele_Scroll_Box'
REPLACE INTO `item_trade` VALUES (13941,91,100);	-- 'TW_Valentine_Scroll'
REPLACE INTO `item_trade` VALUES (13942,91,100);	-- 'Love_Angel_Box_1m'
REPLACE INTO `item_trade` VALUES (13943,91,100);	-- 'Squirrel_Box_1m'
REPLACE INTO `item_trade` VALUES (13944,91,100);	-- 'Gogo_Box_1m'
REPLACE INTO `item_trade` VALUES (13945,91,100);	-- 'BRO_SM_Package'
REPLACE INTO `item_trade` VALUES (13946,91,100);	-- 'BRO_MG_Package'
REPLACE INTO `item_trade` VALUES (13947,91,100);	-- 'BRO_AC_Package'
REPLACE INTO `item_trade` VALUES (13948,91,100);	-- 'BRO_AR_Package'
REPLACE INTO `item_trade` VALUES (13949,91,100);	-- 'BRO_MC_Package'
REPLACE INTO `item_trade` VALUES (13950,91,100);	-- 'BRO_TF_Package'
REPLACE INTO `item_trade` VALUES (13960,91,100);	-- 'Name_Change_Coupon_Box'
REPLACE INTO `item_trade` VALUES (13961,91,100);	-- 'Mojji_Box'
REPLACE INTO `item_trade` VALUES (13962,91,100);	-- 'Deprotai_Doll_Hat_Box'
REPLACE INTO `item_trade` VALUES (13963,91,100);	-- 'Claris_Doll_Hat_Box'
REPLACE INTO `item_trade` VALUES (13964,91,100);	-- 'Sorin_Doll_Hat_Box'
REPLACE INTO `item_trade` VALUES (13965,91,100);	-- 'Tayelin_Doll_Hat_Box'
REPLACE INTO `item_trade` VALUES (13966,91,100);	-- 'Binit_Doll_Hat_Box'
REPLACE INTO `item_trade` VALUES (13967,91,100);	-- 'Debril_Doll_Hat_Box'
REPLACE INTO `item_trade` VALUES (13968,91,100);	-- 'Bubblegum_Lower_Box'
REPLACE INTO `item_trade` VALUES (13969,91,100);	-- 'Lucky_Clip_Box'
REPLACE INTO `item_trade` VALUES (13970,91,100);	-- 'Iron_10_Box'
REPLACE INTO `item_trade` VALUES (13971,91,100);	-- 'Steel_10_Box'
REPLACE INTO `item_trade` VALUES (13972,91,100);	-- 'Coal_10_Box'
REPLACE INTO `item_trade` VALUES (13973,91,100);	-- 'Poison_Bottle_30_Box'
REPLACE INTO `item_trade` VALUES (13974,91,100);	-- 'TW_Scroll01'
REPLACE INTO `item_trade` VALUES (13975,91,100);	-- 'Picture_Diary_Box'
REPLACE INTO `item_trade` VALUES (13976,91,100);	-- 'Mini_Heart_Box'
REPLACE INTO `item_trade` VALUES (13977,91,100);	-- 'Newcomer_Box'
REPLACE INTO `item_trade` VALUES (13978,91,100);	-- 'Kid_Box'
REPLACE INTO `item_trade` VALUES (13979,91,100);	-- 'Magic_Castle_Box'
REPLACE INTO `item_trade` VALUES (13980,91,100);	-- 'Bulging_Head_Box'
REPLACE INTO `item_trade` VALUES (13981,91,100);	-- 'Picture_Diary_Box_1m'
REPLACE INTO `item_trade` VALUES (13982,91,100);	-- 'Mini_Heart_Box_1m'
REPLACE INTO `item_trade` VALUES (13983,91,100);	-- 'Newcomer_Box_1m'
REPLACE INTO `item_trade` VALUES (13984,91,100);	-- 'Kid_Box_1m'
REPLACE INTO `item_trade` VALUES (13985,91,100);	-- 'Magic_Castle_Box_1m'
REPLACE INTO `item_trade` VALUES (13986,91,100);	-- 'Bulging_Head_Box_1m'
REPLACE INTO `item_trade` VALUES (13987,91,100);	-- 'Ori_Stone_5_Box'
REPLACE INTO `item_trade` VALUES (13988,91,100);	-- 'Ori_Stone_50_Box'
REPLACE INTO `item_trade` VALUES (13989,91,100);	-- 'Acidbomb_10_Box'
REPLACE INTO `item_trade` VALUES (13990,91,100);	-- 'Job_Manual50_Box'
REPLACE INTO `item_trade` VALUES (13991,91,100);	-- 'Tiger_Mask_Box'
REPLACE INTO `item_trade` VALUES (13992,91,100);	-- 'Cat_Hat_Box'
REPLACE INTO `item_trade` VALUES (13993,91,100);	-- 'Alice_Doll_Box'
REPLACE INTO `item_trade` VALUES (13994,91,100);	-- 'Speed_Up_Potion_Box5'
REPLACE INTO `item_trade` VALUES (13995,91,100);	-- 'Speed_Up_Potion_Box10'
REPLACE INTO `item_trade` VALUES (13998,91,100);	-- 'Giant_Fly_Wing_Box500'
REPLACE INTO `item_trade` VALUES (14004,91,100);	-- 'Poison_Bottle_10_Box'
REPLACE INTO `item_trade` VALUES (14005,91,100);	-- 'Poison_Bottle_5_Box'
REPLACE INTO `item_trade` VALUES (14006,91,100);	-- 'F_Drooping_W_Kitty_Box'
REPLACE INTO `item_trade` VALUES (14007,91,100);	-- 'F_Rabbit_Ear_Hat_Box'
REPLACE INTO `item_trade` VALUES (14008,91,100);	-- 'F_L_Orc_Hero_Helm_Box'
REPLACE INTO `item_trade` VALUES (14009,91,100);	-- 'F_Love_Angel_Box'
REPLACE INTO `item_trade` VALUES (14010,91,100);	-- 'F_Squirrel_Box'
REPLACE INTO `item_trade` VALUES (14011,91,100);	-- 'F_Gogo_Box'
REPLACE INTO `item_trade` VALUES (14012,91,100);	-- 'F_Love_Angel_Box_1m'
REPLACE INTO `item_trade` VALUES (14013,91,100);	-- 'F_Squirrel_Box_1m'
REPLACE INTO `item_trade` VALUES (14014,91,100);	-- 'F_Gogo_Box_1m'
REPLACE INTO `item_trade` VALUES (14015,91,100);	-- 'F_Wasteland_Outlaw_Box'
REPLACE INTO `item_trade` VALUES (14016,91,100);	-- 'F_Lever_Action_Rifle_Bo'
REPLACE INTO `item_trade` VALUES (14017,91,100);	-- 'F_All_In_One_Ring_Box'
REPLACE INTO `item_trade` VALUES (14018,91,100);	-- 'F_Spritual_Tunic_Box'
REPLACE INTO `item_trade` VALUES (14019,91,100);	-- 'F_Recuperative_Box'
REPLACE INTO `item_trade` VALUES (14020,91,100);	-- 'F_Shelter_Resist_Box'
REPLACE INTO `item_trade` VALUES (14021,91,100);	-- 'F_Sylphid_Manteau_Box'
REPLACE INTO `item_trade` VALUES (14022,91,100);	-- 'F_Refresh_Shoes_Box'
REPLACE INTO `item_trade` VALUES (14023,91,100);	-- 'F_Toast_Box'
REPLACE INTO `item_trade` VALUES (14024,91,100);	-- 'F_Robo_Eye_Box'
REPLACE INTO `item_trade` VALUES (14025,91,100);	-- 'F_Twin_Ribbon_Box'
REPLACE INTO `item_trade` VALUES (14026,91,100);	-- 'F_Diadem_Box'
REPLACE INTO `item_trade` VALUES (14027,91,100);	-- 'F_Fish_Head_Hat_Box'
REPLACE INTO `item_trade` VALUES (14028,91,100);	-- 'F_Santa_Poring_Hat_Box'
REPLACE INTO `item_trade` VALUES (14029,91,100);	-- 'F_Bell_Ribbon_Box'
REPLACE INTO `item_trade` VALUES (14030,91,100);	-- 'F_Mimic_Scroll_Box5'
REPLACE INTO `item_trade` VALUES (14031,91,100);	-- 'F_Disguise_Scroll_Box5'
REPLACE INTO `item_trade` VALUES (14032,91,100);	-- 'F_Alice_Scroll_Box5'
REPLACE INTO `item_trade` VALUES (14033,91,100);	-- 'F_Mimic_Scroll_Box10'
REPLACE INTO `item_trade` VALUES (14034,91,100);	-- 'F_Disguise_Scroll_Box10'
REPLACE INTO `item_trade` VALUES (14035,91,100);	-- 'F_Alice_Scroll_Box10'
REPLACE INTO `item_trade` VALUES (14036,91,100);	-- 'F_New_Style_Coupon_Box'
REPLACE INTO `item_trade` VALUES (14037,91,100);	-- 'F_Repair_Scroll_Box'
REPLACE INTO `item_trade` VALUES (14038,91,100);	-- 'F_Repair_Scroll_Box10'
REPLACE INTO `item_trade` VALUES (14039,91,100);	-- 'F_Hockey_Mask_Box'
REPLACE INTO `item_trade` VALUES (14040,91,100);	-- 'F_Observer_Box'
REPLACE INTO `item_trade` VALUES (14041,91,100);	-- 'F_WOB_Rune_Box5'
REPLACE INTO `item_trade` VALUES (14042,91,100);	-- 'F_WOB_Rune_Box10'
REPLACE INTO `item_trade` VALUES (14043,91,100);	-- 'F_WOB_Schwaltz_Box5'
REPLACE INTO `item_trade` VALUES (14044,91,100);	-- 'F_WOB_Schwaltz_Box10'
REPLACE INTO `item_trade` VALUES (14045,91,100);	-- 'F_WOB_Rachel_Box5'
REPLACE INTO `item_trade` VALUES (14046,91,100);	-- 'F_WOB_Rachel_Box10'
REPLACE INTO `item_trade` VALUES (14047,91,100);	-- 'F_WOB_Local_Box5'
REPLACE INTO `item_trade` VALUES (14048,91,100);	-- 'F_WOB_Local_Box10'
REPLACE INTO `item_trade` VALUES (14049,91,100);	-- 'F_Spark_Candy_Box5'
REPLACE INTO `item_trade` VALUES (14050,91,100);	-- 'F_Spark_Candy_Box10'
REPLACE INTO `item_trade` VALUES (14051,91,100);	-- 'F_Dun_Tel_Scroll2_Box5'
REPLACE INTO `item_trade` VALUES (14052,91,100);	-- 'F_Dun_Tel_Scroll2_Box10'
REPLACE INTO `item_trade` VALUES (14053,91,100);	-- 'F_Little_Angel_Doll_Box'
REPLACE INTO `item_trade` VALUES (14054,91,100);	-- 'F_Triple_Poring_Hat_Box'
REPLACE INTO `item_trade` VALUES (14055,91,100);	-- 'F_Nagan_Box'
REPLACE INTO `item_trade` VALUES (14056,91,100);	-- 'F_Skewer_Box'
REPLACE INTO `item_trade` VALUES (14057,91,100);	-- 'F_Survival_Rod_Box'
REPLACE INTO `item_trade` VALUES (14058,91,100);	-- 'F_Quadrille_Box'
REPLACE INTO `item_trade` VALUES (14059,91,100);	-- 'F_Great_Axe_Box'
REPLACE INTO `item_trade` VALUES (14060,91,100);	-- 'F_Bloody_Roar_Box'
REPLACE INTO `item_trade` VALUES (14061,91,100);	-- 'F_Hardback_Box'
REPLACE INTO `item_trade` VALUES (14062,91,100);	-- 'F_Fire_Brand_Box'
REPLACE INTO `item_trade` VALUES (14063,91,100);	-- 'F_Immaterial_Sword_Box'
REPLACE INTO `item_trade` VALUES (14064,91,100);	-- 'F_Unholy_Touch_Box'
REPLACE INTO `item_trade` VALUES (14065,91,100);	-- 'F_Clack_Of_Servival_Box'
REPLACE INTO `item_trade` VALUES (14066,91,100);	-- 'F_Masquerade_Box'
REPLACE INTO `item_trade` VALUES (14067,91,100);	-- 'F_Orc_Hero_Helm_Box'
REPLACE INTO `item_trade` VALUES (14068,91,100);	-- 'F_Ear_Of_Devil_Wing_Box'
REPLACE INTO `item_trade` VALUES (14069,91,100);	-- 'F_Dark_Blindfold_Box'
REPLACE INTO `item_trade` VALUES (14070,91,100);	-- 'F_K_Drooping_Kitty_Box'
REPLACE INTO `item_trade` VALUES (14071,91,100);	-- 'F_Corsair_Box'
REPLACE INTO `item_trade` VALUES (14072,91,100);	-- 'F_Bloody_Iron_Ball_Box'
REPLACE INTO `item_trade` VALUES (14073,91,100);	-- 'F_Spiritual_Ring_Box'
REPLACE INTO `item_trade` VALUES (14074,91,100);	-- 'F_G_O_I_Box5'
REPLACE INTO `item_trade` VALUES (14075,91,100);	-- 'F_G_O_I_Box10'
REPLACE INTO `item_trade` VALUES (14076,91,100);	-- 'F_Shadow_Armor_S_Box5'
REPLACE INTO `item_trade` VALUES (14077,91,100);	-- 'F_Shadow_Armor_S_Box10'
REPLACE INTO `item_trade` VALUES (14078,91,100);	-- 'F_Shadow_Armor_S_Box30'
REPLACE INTO `item_trade` VALUES (14079,91,100);	-- 'F_Holy_Armor_S_Box5'
REPLACE INTO `item_trade` VALUES (14080,91,100);	-- 'F_Holy_Armor_S_Box10'
REPLACE INTO `item_trade` VALUES (14081,91,100);	-- 'F_Holy_Armor_S_Box30'
REPLACE INTO `item_trade` VALUES (14082,91,100);	-- 'FS_Def_Potion_Box10'
REPLACE INTO `item_trade` VALUES (14083,91,100);	-- 'FS_Def_Potion_Box30'
REPLACE INTO `item_trade` VALUES (14084,91,100);	-- 'FS_Def_Potion_Box50'
REPLACE INTO `item_trade` VALUES (14085,91,100);	-- 'FB_Def_Potion_Box10'
REPLACE INTO `item_trade` VALUES (14086,91,100);	-- 'FB_Def_Potion_Box30'
REPLACE INTO `item_trade` VALUES (14087,91,100);	-- 'FB_Def_Potion_Box50'
REPLACE INTO `item_trade` VALUES (14088,91,100);	-- 'FS_Mdef_Potion_Box10'
REPLACE INTO `item_trade` VALUES (14089,91,100);	-- 'FS_Mdef_Potion_Box30'
REPLACE INTO `item_trade` VALUES (14090,91,100);	-- 'FS_Mdef_Potion_Box50'
REPLACE INTO `item_trade` VALUES (14091,91,100);	-- 'FB_Mdef_Potion_Box10'
REPLACE INTO `item_trade` VALUES (14092,91,100);	-- 'FB_Mdef_Potion_Box30'
REPLACE INTO `item_trade` VALUES (14093,91,100);	-- 'FB_Mdef_Potion_Box50'
REPLACE INTO `item_trade` VALUES (14094,91,100);	-- 'F_Flying_Angel_Box'
REPLACE INTO `item_trade` VALUES (14095,91,100);	-- 'F_Cat_Hat_Box'
REPLACE INTO `item_trade` VALUES (14096,91,100);	-- 'F_M_F_H_Box'
REPLACE INTO `item_trade` VALUES (14097,91,100);	-- 'F_Chick_Hat_Box'
REPLACE INTO `item_trade` VALUES (14098,91,100);	-- 'F_Pecopeco_Hairband_Box'
REPLACE INTO `item_trade` VALUES (14099,91,100);	-- 'F_Red_Glasses_Box'
REPLACE INTO `item_trade` VALUES (14100,91,100);	-- 'F_Whisper_Mask_Box'
REPLACE INTO `item_trade` VALUES (14101,91,100);	-- 'F_Ramen_Hat_Box'
REPLACE INTO `item_trade` VALUES (14102,91,100);	-- 'F_Dun_Tele_Scroll1_Box'
REPLACE INTO `item_trade` VALUES (14103,91,100);	-- 'F_Max_Weight_Up_Box'
REPLACE INTO `item_trade` VALUES (14104,91,100);	-- 'F_S_Life_Potion_Box'
REPLACE INTO `item_trade` VALUES (14105,91,100);	-- 'F_S_Life_Potion_Box30'
REPLACE INTO `item_trade` VALUES (14106,91,100);	-- 'F_S_Life_Potion_Box50'
REPLACE INTO `item_trade` VALUES (14107,91,100);	-- 'F_M_Life_Potion_Box'
REPLACE INTO `item_trade` VALUES (14108,91,100);	-- 'F_M_Life_Potion_Box30'
REPLACE INTO `item_trade` VALUES (14109,91,100);	-- 'F_M_Life_Potion_Box50'
REPLACE INTO `item_trade` VALUES (14110,91,100);	-- 'F_Abrasive_Box5'
REPLACE INTO `item_trade` VALUES (14111,91,100);	-- 'F_Abrasive_Box10'
REPLACE INTO `item_trade` VALUES (14112,91,100);	-- 'F_Regeneration_Box5'
REPLACE INTO `item_trade` VALUES (14113,91,100);	-- 'F_Regeneration_Box10'
REPLACE INTO `item_trade` VALUES (14114,91,100);	-- 'F_Dun_Tele_Scroll_Box10'
REPLACE INTO `item_trade` VALUES (14115,91,100);	-- 'F_Infiltrator_Box'
REPLACE INTO `item_trade` VALUES (14116,91,100);	-- 'F_Muramasa_Box'
REPLACE INTO `item_trade` VALUES (14117,91,100);	-- 'F_Excalibur_Box'
REPLACE INTO `item_trade` VALUES (14118,91,100);	-- 'F_Combat_Knife_Box'
REPLACE INTO `item_trade` VALUES (14119,91,100);	-- 'F_Counter_Dagger_Box'
REPLACE INTO `item_trade` VALUES (14120,91,100);	-- 'F_Kaiser_Knuckle_Box'
REPLACE INTO `item_trade` VALUES (14121,91,100);	-- 'F_Mighty_Staff_Box'
REPLACE INTO `item_trade` VALUES (14122,91,100);	-- 'F_Right_Epsilon_Box'
REPLACE INTO `item_trade` VALUES (14123,91,100);	-- 'F_Balistar_Box'
REPLACE INTO `item_trade` VALUES (14124,91,100);	-- 'F_Diary_Of_Great_Sage'
REPLACE INTO `item_trade` VALUES (14125,91,100);	-- 'F_Asura_Box'
REPLACE INTO `item_trade` VALUES (14126,91,100);	-- 'F_Apple_Of_Archer_Box'
REPLACE INTO `item_trade` VALUES (14127,91,100);	-- 'F_Bunny_Band_Box'
REPLACE INTO `item_trade` VALUES (14128,91,100);	-- 'F_Sahkkat_Box'
REPLACE INTO `item_trade` VALUES (14129,91,100);	-- 'F_Lord_Circlet_Box'
REPLACE INTO `item_trade` VALUES (14130,91,100);	-- 'F_Elven_Ears_Box'
REPLACE INTO `item_trade` VALUES (14131,91,100);	-- 'F_Steel_Flower_Box'
REPLACE INTO `item_trade` VALUES (14132,91,100);	-- 'F_Critical_Ring_Box'
REPLACE INTO `item_trade` VALUES (14133,91,100);	-- 'F_Earring_Box'
REPLACE INTO `item_trade` VALUES (14134,91,100);	-- 'F_Ring_Box'
REPLACE INTO `item_trade` VALUES (14135,91,100);	-- 'F_Necklace_Box'
REPLACE INTO `item_trade` VALUES (14136,91,100);	-- 'F_Glove_Box'
REPLACE INTO `item_trade` VALUES (14137,91,100);	-- 'F_Brooch_Box'
REPLACE INTO `item_trade` VALUES (14138,91,100);	-- 'F_Rosary_Box'
REPLACE INTO `item_trade` VALUES (14139,91,100);	-- 'F_Safety_Ring_Box'
REPLACE INTO `item_trade` VALUES (14140,91,100);	-- 'F_Vesper_Core_Box01'
REPLACE INTO `item_trade` VALUES (14141,91,100);	-- 'F_Vesper_Core_Box02'
REPLACE INTO `item_trade` VALUES (14142,91,100);	-- 'F_Vesper_Core_Box03'
REPLACE INTO `item_trade` VALUES (14143,91,100);	-- 'F_Vesper_Core_Box04'
REPLACE INTO `item_trade` VALUES (14144,91,100);	-- 'F_Vigorgra_Package1'
REPLACE INTO `item_trade` VALUES (14145,91,100);	-- 'F_Vigorgra_Package2'
REPLACE INTO `item_trade` VALUES (14146,91,100);	-- 'F_Vigorgra_Package3'
REPLACE INTO `item_trade` VALUES (14147,91,100);	-- 'F_Vigorgra_Package4'
REPLACE INTO `item_trade` VALUES (14148,91,100);	-- 'F_Vigorgra_Package5'
REPLACE INTO `item_trade` VALUES (14149,91,100);	-- 'F_Vigorgra_Package6'
REPLACE INTO `item_trade` VALUES (14150,91,100);	-- 'F_Vigorgra_Package7'
REPLACE INTO `item_trade` VALUES (14151,91,100);	-- 'F_Vigorgra_Package8'
REPLACE INTO `item_trade` VALUES (14152,91,100);	-- 'F_Vigorgra_Package9'
REPLACE INTO `item_trade` VALUES (14153,91,100);	-- 'F_Vigorgra_Package10'
REPLACE INTO `item_trade` VALUES (14154,91,100);	-- 'F_Vigorgra_Package11'
REPLACE INTO `item_trade` VALUES (14155,91,100);	-- 'F_Vigorgra_Package12'
REPLACE INTO `item_trade` VALUES (14156,91,100);	-- 'F_Battle_Manual_Box'
REPLACE INTO `item_trade` VALUES (14157,91,100);	-- 'F_Insurance_Package'
REPLACE INTO `item_trade` VALUES (14158,91,100);	-- 'F_Bubble_Gum_Box'
REPLACE INTO `item_trade` VALUES (14159,91,100);	-- 'F_Str_Dish_Box'
REPLACE INTO `item_trade` VALUES (14160,91,100);	-- 'F_Agi_Dish_Box'
REPLACE INTO `item_trade` VALUES (14161,91,100);	-- 'F_Int_Dish_Box'
REPLACE INTO `item_trade` VALUES (14162,91,100);	-- 'F_Dex_Dish_Box'
REPLACE INTO `item_trade` VALUES (14163,91,100);	-- 'F_Luk_Dish_Box'
REPLACE INTO `item_trade` VALUES (14164,91,100);	-- 'F_Vit_Dish_Box'
REPLACE INTO `item_trade` VALUES (14165,91,100);	-- 'F_Kafra_Card_Box'
REPLACE INTO `item_trade` VALUES (14166,91,100);	-- 'F_Giant_Fly_Wing_Box'
REPLACE INTO `item_trade` VALUES (14167,91,100);	-- 'F_Neuralizer_Box'
REPLACE INTO `item_trade` VALUES (14168,91,100);	-- 'F_Convex_Mirror_Box'
REPLACE INTO `item_trade` VALUES (14169,91,100);	-- 'F_Blessing_10_Scroll_Bo'
REPLACE INTO `item_trade` VALUES (14170,91,100);	-- 'F_Inc_Agi_10_Scroll_Box'
REPLACE INTO `item_trade` VALUES (14171,91,100);	-- 'F_Aspersio_5_Scroll_Box'
REPLACE INTO `item_trade` VALUES (14172,91,100);	-- 'F_Assumptio_5_Scroll_Bo'
REPLACE INTO `item_trade` VALUES (14173,91,100);	-- 'F_Wind_Walk_10_Scroll_b'
REPLACE INTO `item_trade` VALUES (14174,91,100);	-- 'F_Adrenaline_Scroll_Box'
REPLACE INTO `item_trade` VALUES (14175,91,100);	-- 'F_Megaphone_Box'
REPLACE INTO `item_trade` VALUES (14176,91,100);	-- 'F_Enriched_Elunium_Box'
REPLACE INTO `item_trade` VALUES (14177,91,100);	-- 'F_Enriched_Oridecon_Box'
REPLACE INTO `item_trade` VALUES (14178,91,100);	-- 'F_Token_Of_Siegfried_Bo'
REPLACE INTO `item_trade` VALUES (14179,91,100);	-- 'F_Giant_Fly_Wing_Box50'
REPLACE INTO `item_trade` VALUES (14180,91,100);	-- 'F_Giant_Fly_Wing_Box100'
REPLACE INTO `item_trade` VALUES (14181,91,100);	-- 'F_Dex_Dish_Box30'
REPLACE INTO `item_trade` VALUES (14182,91,100);	-- 'F_Dex_Dish_Box50'
REPLACE INTO `item_trade` VALUES (14183,91,100);	-- 'F_Luk_Dish_Box30'
REPLACE INTO `item_trade` VALUES (14184,91,100);	-- 'F_Luk_Dish_Box50'
REPLACE INTO `item_trade` VALUES (14185,91,100);	-- 'F_Inc_Agi_10_Box30'
REPLACE INTO `item_trade` VALUES (14186,91,100);	-- 'F_Inc_Agi_10_Box50'
REPLACE INTO `item_trade` VALUES (14187,91,100);	-- 'F_Vit_Dish_Box30'
REPLACE INTO `item_trade` VALUES (14188,91,100);	-- 'F_Vit_Dish_Box50'
REPLACE INTO `item_trade` VALUES (14189,91,100);	-- 'F_Insurance_Package30'
REPLACE INTO `item_trade` VALUES (14190,91,100);	-- 'F_Insurance_Package50'
REPLACE INTO `item_trade` VALUES (14191,91,100);	-- 'F_Convex_Mirror_Box5'
REPLACE INTO `item_trade` VALUES (14192,91,100);	-- 'F_Convex_Mirror_Box30'
REPLACE INTO `item_trade` VALUES (14193,91,100);	-- 'F_Blessing10_Box30'
REPLACE INTO `item_trade` VALUES (14194,91,100);	-- 'F_Blessing10_Box50'
REPLACE INTO `item_trade` VALUES (14195,91,100);	-- 'F_Adrenaline10_Box30'
REPLACE INTO `item_trade` VALUES (14196,91,100);	-- 'F_Adrenaline10_Box50'
REPLACE INTO `item_trade` VALUES (14197,91,100);	-- 'F_Assumptio_5_Box30'
REPLACE INTO `item_trade` VALUES (14198,91,100);	-- 'F_Assumptio_5_Box50'
REPLACE INTO `item_trade` VALUES (14199,91,100);	-- 'F_Aspersio_5_Box30'
REPLACE INTO `item_trade` VALUES (14200,91,100);	-- 'F_Aspersio_5_Box50'
REPLACE INTO `item_trade` VALUES (14201,91,100);	-- 'F_Agi_Dish_Box30'
REPLACE INTO `item_trade` VALUES (14202,91,100);	-- 'F_Agi_Dish_Box50'
REPLACE INTO `item_trade` VALUES (14203,91,100);	-- 'F_Wind_Walk10_Box30'
REPLACE INTO `item_trade` VALUES (14204,91,100);	-- 'F_Wind_Walk10_Box50'
REPLACE INTO `item_trade` VALUES (14205,91,100);	-- 'F_Int_Dish_Box30'
REPLACE INTO `item_trade` VALUES (14206,91,100);	-- 'F_Int_Dish_Box50'
REPLACE INTO `item_trade` VALUES (14207,91,100);	-- 'F_Battle_Manual_Box1'
REPLACE INTO `item_trade` VALUES (14208,91,100);	-- 'F_Battle_Manual_Box5'
REPLACE INTO `item_trade` VALUES (14209,91,100);	-- 'F_Siegfried_Box5'
REPLACE INTO `item_trade` VALUES (14210,91,100);	-- 'F_Siegfried_Box20'
REPLACE INTO `item_trade` VALUES (14211,91,100);	-- 'F_Kafra_Card_Box30'
REPLACE INTO `item_trade` VALUES (14212,91,100);	-- 'F_Kafra_Card_Box50'
REPLACE INTO `item_trade` VALUES (14213,91,100);	-- 'F_Str_Dish_Box30'
REPLACE INTO `item_trade` VALUES (14214,91,100);	-- 'F_Str_Dish_Box50'
REPLACE INTO `item_trade` VALUES (14215,91,100);	-- 'F_Bubble_Gum_Box1'
REPLACE INTO `item_trade` VALUES (14216,91,100);	-- 'F_Bubble_Gum_Box5'
REPLACE INTO `item_trade` VALUES (14217,91,100);	-- 'F_Megaphone_Box1'
REPLACE INTO `item_trade` VALUES (14218,91,100);	-- 'F_Megaphone_Box5'
REPLACE INTO `item_trade` VALUES (14219,91,100);	-- 'F_Enriched_Elunium_Box5'
REPLACE INTO `item_trade` VALUES (14220,91,100);	-- 'FEnriched_Oridecon_Box5'
REPLACE INTO `item_trade` VALUES (14221,91,100);	-- 'MP_Scroll_Box'
REPLACE INTO `item_trade` VALUES (14222,91,100);	-- 'MP_Scroll_Box30'
REPLACE INTO `item_trade` VALUES (14223,91,100);	-- 'MP_Scroll_Box50'
REPLACE INTO `item_trade` VALUES (14224,91,100);	-- 'Quagmire_Scroll_Box'
REPLACE INTO `item_trade` VALUES (14225,91,100);	-- 'Quagmire_Scroll_Box30'
REPLACE INTO `item_trade` VALUES (14226,91,100);	-- 'Quagmire_Scroll_Box50'
REPLACE INTO `item_trade` VALUES (14227,91,100);	-- 'Healing_Staff_Box'
REPLACE INTO `item_trade` VALUES (14228,91,100);	-- 'Praxinus_Box'
REPLACE INTO `item_trade` VALUES (14587,91,100);	-- 'Repair_Scroll_'
REPLACE INTO `item_trade` VALUES (14588,91,100);	-- 'Pty_Blessing_Scroll'
REPLACE INTO `item_trade` VALUES (14589,91,100);	-- 'Pty_Inc_Agi_Scroll'
REPLACE INTO `item_trade` VALUES (14590,91,100);	-- 'Pty_Assumptio_Scroll'
REPLACE INTO `item_trade` VALUES (14591,91,100);	-- 'Siege_Teleport_Scroll'
REPLACE INTO `item_trade` VALUES (14592,91,100);	-- 'Job_Manual50'
REPLACE INTO `item_trade` VALUES (14593,91,100);	-- 'Magic_Power_Scroll'
REPLACE INTO `item_trade` VALUES (14594,91,100);	-- 'Quagmire_Scroll'
REPLACE INTO `item_trade` VALUES (13036,83,100);	-- 'BF_Dagger1'
REPLACE INTO `item_trade` VALUES (13037,83,100);	-- 'BF_Dagger2'
REPLACE INTO `item_trade` VALUES (13410,83,100);	-- 'BF_Sword1'
REPLACE INTO `item_trade` VALUES (13411,83,100);	-- 'BF_Sword2'
REPLACE INTO `item_trade` VALUES (1425,83,100);	-- 'BF_Spear1'
REPLACE INTO `item_trade` VALUES (1632,83,100);	-- 'BF_Staff1'
REPLACE INTO `item_trade` VALUES (1633,83,100);	-- 'BF_Staff2'
REPLACE INTO `item_trade` VALUES (1634,83,100);	-- 'BF_Staff3'
REPLACE INTO `item_trade` VALUES (1635,83,100);	-- 'BF_Staff4'
REPLACE INTO `item_trade` VALUES (1542,83,100);	-- 'BF_Morning_Star1'
REPLACE INTO `item_trade` VALUES (1543,83,100);	-- 'BF_Morning_Star2'
REPLACE INTO `item_trade` VALUES (1923,83,100);	-- 'BF_Instrument1'
REPLACE INTO `item_trade` VALUES (1924,83,100);	-- 'BF_Instrument2'
REPLACE INTO `item_trade` VALUES (1977,83,100);	-- 'BF_Whip1'
REPLACE INTO `item_trade` VALUES (1978,83,100);	-- 'BF_Whip2'
REPLACE INTO `item_trade` VALUES (1574,83,100);	-- 'BF_Book1'
REPLACE INTO `item_trade` VALUES (1575,83,100);	-- 'BF_Book2'
REPLACE INTO `item_trade` VALUES (1823,83,100);	-- 'BF_Knuckle1'
REPLACE INTO `item_trade` VALUES (1824,83,100);	-- 'BF_Knuckle2'
REPLACE INTO `item_trade` VALUES (1183,83,100);	-- 'BF_Two_Handed_Sword1'
REPLACE INTO `item_trade` VALUES (1184,83,100);	-- 'BF_Two_Handed_Sword2'
REPLACE INTO `item_trade` VALUES (1482,83,100);	-- 'BF_Lance1'
REPLACE INTO `item_trade` VALUES (1379,83,100);	-- 'BF_Two_Handed_Axe1'
REPLACE INTO `item_trade` VALUES (1380,83,100);	-- 'BF_Two_Handed_Axe2'
REPLACE INTO `item_trade` VALUES (13305,83,100);	-- 'BF_Huuma_Shuriken1'
REPLACE INTO `item_trade` VALUES (13306,83,100);	-- 'BF_Huuma_Shuriken2'
REPLACE INTO `item_trade` VALUES (1279,83,100);	-- 'BF_Katar1'
REPLACE INTO `item_trade` VALUES (1280,83,100);	-- 'BF_Katar2'
REPLACE INTO `item_trade` VALUES (1738,83,100);	-- 'BF_Bow1'
REPLACE INTO `item_trade` VALUES (1739,83,100);	-- 'BF_Bow2'
REPLACE INTO `item_trade` VALUES (13108,83,100);	-- 'BF_Pistol1'
REPLACE INTO `item_trade` VALUES (13171,83,100);	-- 'BF_Rifle1'
REPLACE INTO `item_trade` VALUES (13172,83,100);	-- 'BF_Gatling_Gun1'
REPLACE INTO `item_trade` VALUES (13173,83,100);	-- 'BF_Shotgun1'
REPLACE INTO `item_trade` VALUES (13174,83,100);	-- 'BF_Launcher1'
REPLACE INTO `item_trade` VALUES (2538,83,100);	-- 'Commander_Manteau'
REPLACE INTO `item_trade` VALUES (2539,83,100);	-- 'Commander_Manteau_'
REPLACE INTO `item_trade` VALUES (2540,83,100);	-- 'Sheriff_Manteau'
REPLACE INTO `item_trade` VALUES (2435,83,100);	-- 'Battle_Greave'
REPLACE INTO `item_trade` VALUES (2436,83,100);	-- 'Combat_Boots'
REPLACE INTO `item_trade` VALUES (2437,83,100);	-- 'Battle_Boots'
REPLACE INTO `item_trade` VALUES (2376,83,100);	-- 'Assaulter_Plate'
REPLACE INTO `item_trade` VALUES (2377,83,100);	-- 'Elite_Engineer_Armor'
REPLACE INTO `item_trade` VALUES (2378,83,100);	-- 'Assassin_Robe'
REPLACE INTO `item_trade` VALUES (2379,83,100);	-- 'Warlock_Battle_Robe'
REPLACE INTO `item_trade` VALUES (2380,83,100);	-- 'Medic_Robe'
REPLACE INTO `item_trade` VALUES (2381,83,100);	-- 'Elite_Archer_Suit'
REPLACE INTO `item_trade` VALUES (2382,83,100);	-- 'Elite_Shooter_Suit'
REPLACE INTO `item_trade` VALUES (2733,83,100);	-- 'Medal_Gunner'
REPLACE INTO `item_trade` VALUES (7828,83,100);	-- 'BF_Badge1'
REPLACE INTO `item_trade` VALUES (7829,83,100);	-- 'BF_Badge2'
REPLACE INTO `item_trade` VALUES (7801,123,100);	-- 'Girl_Fan_Letter'
REPLACE INTO `item_trade` VALUES (7802,123,100);	-- 'Autograph_Book'
REPLACE INTO `item_trade` VALUES (2765,115,100);	-- 'Novice_Figure'
REPLACE INTO `item_trade` VALUES (2766,115,100);	-- 'Swordman_Figure'
REPLACE INTO `item_trade` VALUES (2767,115,100);	-- 'Acolyte_Figure'
REPLACE INTO `item_trade` VALUES (2768,115,100);	-- 'Mage_Figure'
REPLACE INTO `item_trade` VALUES (2769,115,100);	-- 'Archer_Figure'
REPLACE INTO `item_trade` VALUES (2770,115,100);	-- 'Thief_Figure'
REPLACE INTO `item_trade` VALUES (2771,115,100);	-- 'Merchant_Figure'
REPLACE INTO `item_trade` VALUES (13764,91,100);	-- 'Battle_Manual_Box_Tw'
REPLACE INTO `item_trade` VALUES (7803,91,100);	-- 'Battle_Manual_Tw'
REPLACE INTO `item_trade` VALUES (13871,73,100);	-- 'Magician_Card_Box'
REPLACE INTO `item_trade` VALUES (13872,73,100);	-- 'Acolyte_Card_Box'
REPLACE INTO `item_trade` VALUES (13873,73,100);	-- 'Archer_Card_Box'
REPLACE INTO `item_trade` VALUES (13874,73,100);	-- 'Swordman_Card_Box'
REPLACE INTO `item_trade` VALUES (13875,73,100);	-- 'Thief_Card_Box'
REPLACE INTO `item_trade` VALUES (13876,73,100);	-- 'Merchant_Card_Box'
REPLACE INTO `item_trade` VALUES (5227,73,100);	-- 'Red_Deviruchi_Cap'
REPLACE INTO `item_trade` VALUES (5228,73,100);	-- 'White_Deviruchi_Cap'
REPLACE INTO `item_trade` VALUES (5229,73,100);	-- 'Gray_Deviruchi_Cap'
REPLACE INTO `item_trade` VALUES (5489,73,100);	-- 'Love_Daddy'
REPLACE INTO `item_trade` VALUES (5340,73,100);	-- 'Deprotai_Doll_Hat'
REPLACE INTO `item_trade` VALUES (5341,73,100);	-- 'Claris_Doll_Hat'
REPLACE INTO `item_trade` VALUES (5342,73,100);	-- 'Sorin_Doll_Hat'
REPLACE INTO `item_trade` VALUES (5343,73,100);	-- 'Tayelin_Doll_Hat'
REPLACE INTO `item_trade` VALUES (5344,73,100);	-- 'Binit_Doll_Hat'
REPLACE INTO `item_trade` VALUES (5345,73,100);	-- 'Debril_Doll_Hat'
REPLACE INTO `item_trade` VALUES (13804,91,100);	-- 'Fire_Cracker_Love_Box'
REPLACE INTO `item_trade` VALUES (13805,91,100);	-- 'Fire_Cracker_Wday_Box'
REPLACE INTO `item_trade` VALUES (13806,91,100);	-- 'Fire_Cracker_Vday_Box'
REPLACE INTO `item_trade` VALUES (13807,91,100);	-- 'Fire_Cracker_Bday_Box'
REPLACE INTO `item_trade` VALUES (13808,91,100);	-- 'Fire_Cracker_Xmas_Box'
REPLACE INTO `item_trade` VALUES (14546,91,100);	-- 'Fire_Cracker_Love'
REPLACE INTO `item_trade` VALUES (14547,91,100);	-- 'Fire_Cracker_Wday'
REPLACE INTO `item_trade` VALUES (14548,91,100);	-- 'Fire_Cracker_Valentine'
REPLACE INTO `item_trade` VALUES (14549,91,100);	-- 'Fire_Cracker_Bday'
REPLACE INTO `item_trade` VALUES (14550,91,100);	-- 'Fire_Cracker_Xmas'
REPLACE INTO `item_trade` VALUES (7821,73,100);	-- 'Green_Apple'
REPLACE INTO `item_trade` VALUES (7822,73,100);	-- 'Whole_Barbecue'
REPLACE INTO `item_trade` VALUES (7823,73,100);	-- 'Meat_Veg_Skewer'
REPLACE INTO `item_trade` VALUES (7824,73,100);	-- 'Spirit_Liquor'
REPLACE INTO `item_trade` VALUES (13815,73,100);	-- 'Knife_Goblin_Box'
REPLACE INTO `item_trade` VALUES (13816,73,100);	-- 'Flail_Goblin_Box'
REPLACE INTO `item_trade` VALUES (13817,73,100);	-- 'Hammer_Goblin_Box'
REPLACE INTO `item_trade` VALUES (13818,73,100);	-- 'Red_Deleter_Box'
REPLACE INTO `item_trade` VALUES (13819,73,100);	-- 'Diabolic_Box'
REPLACE INTO `item_trade` VALUES (13820,73,100);	-- 'Wanderer_Box'
REPLACE INTO `item_trade` VALUES (13821,73,100);	-- 'Green_Apple_Box'
REPLACE INTO `item_trade` VALUES (13822,73,100);	-- 'Whole_Barbecue_Box'
REPLACE INTO `item_trade` VALUES (13823,73,100);	-- 'Meat_Veg_Skewer_Box'
REPLACE INTO `item_trade` VALUES (13824,73,100);	-- 'Spirit_Liquor_Box'
REPLACE INTO `item_trade` VALUES (13996,73,100);	-- 'Big_Bun_Box100'
REPLACE INTO `item_trade` VALUES (13997,73,100);	-- 'Big_Bun_Box500'
REPLACE INTO `item_trade` VALUES (13999,73,100);	-- 'Pill__Box100'
REPLACE INTO `item_trade` VALUES (14000,73,100);	-- 'Pill__Box500'
REPLACE INTO `item_trade` VALUES (14001,73,100);	-- 'Basic_Siege_Supply_Box'
REPLACE INTO `item_trade` VALUES (14002,73,100);	-- 'Adv_Siege_Supply_Box'
REPLACE INTO `item_trade` VALUES (14003,73,100);	-- 'Elite_Siege_Supply_Box'
REPLACE INTO `item_trade` VALUES (14569,73,100);	-- 'Knife_Goblin_Ring'
REPLACE INTO `item_trade` VALUES (14570,73,100);	-- 'Flail_Goblin_Ring'
REPLACE INTO `item_trade` VALUES (14571,73,100);	-- 'Hammer_Goblin_Ring'
REPLACE INTO `item_trade` VALUES (14572,73,100);	-- 'Holy_Marble'
REPLACE INTO `item_trade` VALUES (14573,73,100);	-- 'Red_Burning_Stone'
REPLACE INTO `item_trade` VALUES (14574,73,100);	-- 'Skull_Of_Vagabond'
REPLACE INTO `item_trade` VALUES (5230,73,100);	-- 'White_Drooping_Kitty'
REPLACE INTO `item_trade` VALUES (5231,73,100);	-- 'Gray_Drooping_Kitty'
REPLACE INTO `item_trade` VALUES (5232,73,100);	-- 'Pink_Drooping_Kitty'
REPLACE INTO `item_trade` VALUES (5233,73,100);	-- 'Blue_Drooping_Kitty'
REPLACE INTO `item_trade` VALUES (5234,73,100);	-- 'Yellow_Drooping_Kitty'
REPLACE INTO `item_trade` VALUES (5273,73,100);	-- 'Happy_Wig'
REPLACE INTO `item_trade` VALUES (5274,73,100);	-- 'Shiny_Wig'
REPLACE INTO `item_trade` VALUES (5275,73,100);	-- 'Marvelous_Wig'
REPLACE INTO `item_trade` VALUES (5276,73,100);	-- 'Fantastic_Wig'
REPLACE INTO `item_trade` VALUES (9032,73,100);	-- 'Knife_Goblin_Egg'
REPLACE INTO `item_trade` VALUES (9033,73,100);	-- 'Flail_Goblin_Egg'
REPLACE INTO `item_trade` VALUES (9034,73,100);	-- 'Hammer_Goblin_Egg'
REPLACE INTO `item_trade` VALUES (9035,73,100);	-- 'Red_Deleter_Egg'
REPLACE INTO `item_trade` VALUES (9036,73,100);	-- 'Diabolic_Egg'
REPLACE INTO `item_trade` VALUES (9037,73,100);	-- 'Wanderer_Egg'
REPLACE INTO `item_trade` VALUES (5152,73,100);	-- 'Chinese_Crown'
REPLACE INTO `item_trade` VALUES (5235,73,100);	-- 'Gray_Fur_Hat'
REPLACE INTO `item_trade` VALUES (5236,73,100);	-- 'Blue_Fur_Hat'
REPLACE INTO `item_trade` VALUES (5237,73,100);	-- 'Pink_Fur_Hat'
REPLACE INTO `item_trade` VALUES (5263,73,100);	-- 'Ati_Atihan_Hat'
REPLACE INTO `item_trade` VALUES (5277,73,100);	-- 'Yellow_Bandana'
REPLACE INTO `item_trade` VALUES (14466,123,100);	-- 'Valentine_Pledge_Box'
REPLACE INTO `item_trade` VALUES (5817,123,100);	-- 'Valentine_Pledge'
REPLACE INTO `item_trade` VALUES (5226,73,100);	-- 'Mini_Propeller_'
REPLACE INTO `item_trade` VALUES (5238,73,100);	-- 'Red_Wizardry_Hat'
REPLACE INTO `item_trade` VALUES (5239,73,100);	-- 'White_Wizardry_Hat'
REPLACE INTO `item_trade` VALUES (5240,73,100);	-- 'Gray_Wizardry_Hat'
REPLACE INTO `item_trade` VALUES (5241,73,100);	-- 'Blue_Wizardry_Hat'
REPLACE INTO `item_trade` VALUES (5242,73,100);	-- 'Yellow_Wizardry_Hat'
REPLACE INTO `item_trade` VALUES (7950,115,100);	-- 'Ayothaya_Ticket'
REPLACE INTO `item_trade` VALUES (5820,83,100);	-- 'Black_Elven_Ears'
REPLACE INTO `item_trade` VALUES (5316,73,100);	-- 'Umbrella_Hat'
REPLACE INTO `item_trade` VALUES (5367,73,100);	-- 'Hyegun_Hat'
REPLACE INTO `item_trade` VALUES (13896,73,100);	-- 'Mimic_Summon_Box5'
REPLACE INTO `item_trade` VALUES (13897,73,100);	-- 'Disguise_Summon_Box5'
REPLACE INTO `item_trade` VALUES (13898,73,100);	-- 'Alice_Summon_Box5'
REPLACE INTO `item_trade` VALUES (13899,73,100);	-- 'Mimic_Summon_Box10'
REPLACE INTO `item_trade` VALUES (13900,73,100);	-- 'Disguise_Summon_Box10'
REPLACE INTO `item_trade` VALUES (13901,73,100);	-- 'Alice_Summon_Box10'
REPLACE INTO `item_trade` VALUES (12276,73,100);	-- 'Mimic_Summon_Book'
REPLACE INTO `item_trade` VALUES (12277,73,100);	-- 'Disguise_Summon_Book'
REPLACE INTO `item_trade` VALUES (12278,73,100);	-- 'Alice_Summon_Book'
REPLACE INTO `item_trade` VALUES (5506,73,100);	-- 'Blue_Pajamas_Hat'
REPLACE INTO `item_trade` VALUES (5507,73,100);	-- 'Pink_Pajamas_Hat'
REPLACE INTO `item_trade` VALUES (6027,123,100);	-- 'Crystal_Of_Feardoom'
REPLACE INTO `item_trade` VALUES (6028,123,100);	-- 'Seal_Scroll'
REPLACE INTO `item_trade` VALUES (6029,123,100);	-- 'Morocc_Tracing_Log'
REPLACE INTO `item_trade` VALUES (6035,123,100);	-- 'Decaying_Stem'
REPLACE INTO `item_trade` VALUES (6036,123,100);	-- 'Invite_To_Meeting'
REPLACE INTO `item_trade` VALUES (6037,123,100);	-- 'Rough_File'
REPLACE INTO `item_trade` VALUES (6038,123,100);	-- 'Neat_Report'
REPLACE INTO `item_trade` VALUES (6039,91,100);	-- 'Piece_Of_Fish'
REPLACE INTO `item_trade` VALUES (6040,123,100);	-- 'Some_Of_Report'
REPLACE INTO `item_trade` VALUES (6041,91,100);	-- 'Strong_Bine'
REPLACE INTO `item_trade` VALUES (6042,91,100);	-- 'Ordinary_Branch'
REPLACE INTO `item_trade` VALUES (6043,123,100);	-- 'Letter_From_Lugen'
REPLACE INTO `item_trade` VALUES (6044,123,100);	-- 'Letter_From_Otto'
REPLACE INTO `item_trade` VALUES (6045,123,100);	-- 'Supply_Box'
REPLACE INTO `item_trade` VALUES (6048,91,100);	-- 'Unidentified_Mineral'
REPLACE INTO `item_trade` VALUES (6051,115,100);	-- 'Gray_Hollow'
REPLACE INTO `item_trade` VALUES (13416,83,100);	-- 'Krieger_Onehand_Sword1'
REPLACE INTO `item_trade` VALUES (13417,83,100);	-- 'Krieger_Onehand_Sword2'
REPLACE INTO `item_trade` VALUES (13418,83,100);	-- 'Krieger_Onehand_Sword3'
REPLACE INTO `item_trade` VALUES (13042,83,100);	-- 'Krieger_Dagger1'
REPLACE INTO `item_trade` VALUES (1310,83,100);	-- 'Krieger_Onehand_Axe1'
REPLACE INTO `item_trade` VALUES (1426,83,100);	-- 'Krieger_Onehand_Spear1'
REPLACE INTO `item_trade` VALUES (1546,83,100);	-- 'Krieger_Onehand_Mace1'
REPLACE INTO `item_trade` VALUES (1576,83,100);	-- 'Krieger_Book1'
REPLACE INTO `item_trade` VALUES (1577,83,100);	-- 'Krieger_Book2'
REPLACE INTO `item_trade` VALUES (1640,83,100);	-- 'Krieger_Onehand_Staff1'
REPLACE INTO `item_trade` VALUES (1641,83,100);	-- 'Krieger_Onehand_Staff2'
REPLACE INTO `item_trade` VALUES (1826,83,100);	-- 'Krieger_Knuckle1'
REPLACE INTO `item_trade` VALUES (1827,83,100);	-- 'Krieger_Knuckle2'
REPLACE INTO `item_trade` VALUES (1927,83,100);	-- 'Krieger_Instrument1'
REPLACE INTO `item_trade` VALUES (1981,83,100);	-- 'Krieger_Whip1'
REPLACE INTO `item_trade` VALUES (1187,83,100);	-- 'Krieger_Twohand_Sword1'
REPLACE INTO `item_trade` VALUES (1281,83,100);	-- 'Krieger_Katar1'
REPLACE INTO `item_trade` VALUES (1282,83,100);	-- 'Krieger_Katar2'
REPLACE INTO `item_trade` VALUES (1382,83,100);	-- 'Krieger_Twohand_Axe1'
REPLACE INTO `item_trade` VALUES (1486,83,100);	-- 'Krieger_Twohand_Spear1'
REPLACE INTO `item_trade` VALUES (2002,83,100);	-- 'Krieger_Twohand_Staff1'
REPLACE INTO `item_trade` VALUES (13307,83,100);	-- 'Krieger_Huuma_Shuriken1'
REPLACE INTO `item_trade` VALUES (1743,83,100);	-- 'Krieger_Bow1'
REPLACE INTO `item_trade` VALUES (13110,83,100);	-- 'Krieger_Pistol1'
REPLACE INTO `item_trade` VALUES (13176,83,100);	-- 'Krieger_Rifle1'
REPLACE INTO `item_trade` VALUES (13177,83,100);	-- 'Krieger_Gatling1'
REPLACE INTO `item_trade` VALUES (13178,83,100);	-- 'Krieger_Shotgun1'
REPLACE INTO `item_trade` VALUES (13179,83,100);	-- 'Krieger_Launcher1'
REPLACE INTO `item_trade` VALUES (2394,83,100);	-- 'Krieger_Suit1'
REPLACE INTO `item_trade` VALUES (2444,83,100);	-- 'Krieger_Shoes1'
REPLACE INTO `item_trade` VALUES (2549,83,100);	-- 'Krieger_Muffler1'
REPLACE INTO `item_trade` VALUES (2772,83,100);	-- 'Krieger_Ring1'
REPLACE INTO `item_trade` VALUES (2445,83,100);	-- 'Krieger_Shoes2'
REPLACE INTO `item_trade` VALUES (2446,83,100);	-- 'Krieger_Shoes3'
REPLACE INTO `item_trade` VALUES (2395,83,100);	-- 'Krieger_Suit2'
REPLACE INTO `item_trade` VALUES (2396,83,100);	-- 'Krieger_Suit3'
REPLACE INTO `item_trade` VALUES (2773,83,100);	-- 'Krieger_Ring2'
REPLACE INTO `item_trade` VALUES (2774,83,100);	-- 'Krieger_Ring3'
REPLACE INTO `item_trade` VALUES (7923,115,100);	-- 'KRATHONG_'
REPLACE INTO `item_trade` VALUES (5428,91,100);	-- 'Bread_Bag1'
REPLACE INTO `item_trade` VALUES (6052,123,100);	-- 'Ornamental_Hairpin'
REPLACE INTO `item_trade` VALUES (5423,73,100);	-- 'Lovecap_China'
REPLACE INTO `item_trade` VALUES (5430,65,100);	-- 'Sacred_Torch_Coronet'
REPLACE INTO `item_trade` VALUES (5318,83,100);	-- 'Poring_Party_Hat'
REPLACE INTO `item_trade` VALUES (12331,123,100);	-- 'Ginseng'
REPLACE INTO `item_trade` VALUES (12332,123,100);	-- 'Fruit_Juice'
REPLACE INTO `item_trade` VALUES (7928,123,100);	-- 'Brazilian_Flag_'
REPLACE INTO `item_trade` VALUES (7929,123,100);	-- 'Golden_Coin_'
REPLACE INTO `item_trade` VALUES (5450,91,100);	-- 'Sun_Cap'
REPLACE INTO `item_trade` VALUES (5451,91,100);	-- 'Dragonhelm_Gold'
REPLACE INTO `item_trade` VALUES (5452,91,100);	-- 'Dragonhelm_Silver'
REPLACE INTO `item_trade` VALUES (5453,91,100);	-- 'Dragonhelm_Copper'
REPLACE INTO `item_trade` VALUES (6060,115,100);	-- 'Moon_Admin_Ticket'
REPLACE INTO `item_trade` VALUES (9028,83,100);	-- 'Rice_Cake_Egg'
REPLACE INTO `item_trade` VALUES (12340,115,100);	-- 'Mysterious_Rice_Powder'
REPLACE INTO `item_trade` VALUES (7930,123,100);	-- 'CowkingNULLs_Nose_Ring'
REPLACE INTO `item_trade` VALUES (5460,115,100);	-- 'Adv_Dragon_Skull'
REPLACE INTO `item_trade` VALUES (5461,115,100);	-- 'Adv_Whisper_Mask'
REPLACE INTO `item_trade` VALUES (5464,123,100);	-- 'Zaha_Doll_Hat'
REPLACE INTO `item_trade` VALUES (5254,73,100);	-- 'Deviling_Hat'
REPLACE INTO `item_trade` VALUES (14296,91,100);	-- 'Angel_Scroll'
REPLACE INTO `item_trade` VALUES (14297,91,100);	-- 'Devil_Scroll'
REPLACE INTO `item_trade` VALUES (14300,91,100);	-- 'Mask_Of_Ifrit_Box'
REPLACE INTO `item_trade` VALUES (14301,91,100);	-- 'IfritNULLs_Ear_Box'
REPLACE INTO `item_trade` VALUES (14304,91,100);	-- 'Scuba_Mask_Box'
REPLACE INTO `item_trade` VALUES (14597,91,100);	-- 'Phreeonis'
REPLACE INTO `item_trade` VALUES (14598,91,100);	-- 'Ghostrings'
REPLACE INTO `item_trade` VALUES (14314,91,100);	-- 'Phreeoni_Scroll_Box'
REPLACE INTO `item_trade` VALUES (14315,91,100);	-- 'Ghostring_Scroll_Box'
REPLACE INTO `item_trade` VALUES (14317,91,100);	-- 'Bacsojin_Scroll'
REPLACE INTO `item_trade` VALUES (13419,123,100);	-- 'Holy_Saber'
REPLACE INTO `item_trade` VALUES (1578,123,100);	-- 'Book_Of_Prayer'
REPLACE INTO `item_trade` VALUES (1982,123,100);	-- 'Phenomena_Whip'
REPLACE INTO `item_trade` VALUES (1642,123,100);	-- 'Staff_Of_Darkness'
REPLACE INTO `item_trade` VALUES (1828,123,100);	-- 'Monk_Knuckle'
REPLACE INTO `item_trade` VALUES (1547,123,100);	-- 'Mace_Of_Madness'
REPLACE INTO `item_trade` VALUES (1427,123,100);	-- 'Spear_Of_Excellent'
REPLACE INTO `item_trade` VALUES (1744,123,100);	-- 'Bow_Of_Evil'
REPLACE INTO `item_trade` VALUES (1283,123,100);	-- 'Katar_Of_Speed'
REPLACE INTO `item_trade` VALUES (13111,123,100);	-- 'Sharpshooter_Revolver'
REPLACE INTO `item_trade` VALUES (14343,91,100);	-- 'Spiked_Scarf_Box'
REPLACE INTO `item_trade` VALUES (14344,91,100);	-- 'Rainbow_Scarf_Box'
REPLACE INTO `item_trade` VALUES (14345,91,100);	-- 'Animal_Scroll'
REPLACE INTO `item_trade` VALUES (14599,91,100);	-- 'Greed_Scroll_c'
REPLACE INTO `item_trade` VALUES (14600,91,100);	-- 'Mental_Potion'
REPLACE INTO `item_trade` VALUES (14601,91,100);	-- 'TyrNULLs_Blessing'
REPLACE INTO `item_trade` VALUES (14349,91,100);	-- 'Mental_Potion20_Box'
REPLACE INTO `item_trade` VALUES (14350,91,100);	-- 'Mental_Potion50_Box'
REPLACE INTO `item_trade` VALUES (14351,91,100);	-- 'TyrNULLs_Blessing20_Box'
REPLACE INTO `item_trade` VALUES (14352,91,100);	-- 'TyrNULLs_Blessing50_Box'
REPLACE INTO `item_trade` VALUES (14602,91,100);	-- 'Taogunkas'
REPLACE INTO `item_trade` VALUES (14603,91,100);	-- 'Mistresss'
REPLACE INTO `item_trade` VALUES (14604,91,100);	-- 'Orc_Heros'
REPLACE INTO `item_trade` VALUES (14605,91,100);	-- 'Orc_Loads'
REPLACE INTO `item_trade` VALUES (5346,73,100);	-- 'Gf_Recruiter_Hat'
REPLACE INTO `item_trade` VALUES (5336,73,100);	-- 'Guildsman_Recruiter'
REPLACE INTO `item_trade` VALUES (5337,73,100);	-- 'Party_Recruiter_Hat'
REPLACE INTO `item_trade` VALUES (5338,73,100);	-- 'Bf_Recruiter_Hat'
REPLACE INTO `item_trade` VALUES (5339,73,100);	-- 'Friend_Recruiter_Hat'
REPLACE INTO `item_trade` VALUES (5372,73,100);	-- 'Drooping_White_Kitty'
REPLACE INTO `item_trade` VALUES (13905,73,100);	-- 'Hard_Core_Set_Box'
REPLACE INTO `item_trade` VALUES (13906,73,100);	-- 'Kitty_Set_Box'
REPLACE INTO `item_trade` VALUES (13907,73,100);	-- 'Soft_Core_Set_Box'
REPLACE INTO `item_trade` VALUES (13908,73,100);	-- 'Deviruchi_Set_Box'
REPLACE INTO `item_trade` VALUES (13909,73,100);	-- 'MVP_Hunt_Box'
REPLACE INTO `item_trade` VALUES (13910,73,100);	-- 'Brewing_Box'
REPLACE INTO `item_trade` VALUES (13889,73,100);	-- 'Elunium_Box_'
REPLACE INTO `item_trade` VALUES (13890,73,100);	-- 'Oridecon_Box_'
REPLACE INTO `item_trade` VALUES (13891,73,100);	-- 'Fire_Converter_Box'
REPLACE INTO `item_trade` VALUES (13892,73,100);	-- 'Water_Converter_Box'
REPLACE INTO `item_trade` VALUES (13893,73,100);	-- 'Wind_Converter_Box'
REPLACE INTO `item_trade` VALUES (13894,73,100);	-- 'Earth_Converter_Box'
REPLACE INTO `item_trade` VALUES (5800,73,100);	-- 'Blush_Of_Groom'
REPLACE INTO `item_trade` VALUES (5801,73,100);	-- 'Ribbon_Of_Bride'
REPLACE INTO `item_trade` VALUES (5491,73,100);	-- 'Hat_Of_Outlaw'
REPLACE INTO `item_trade` VALUES (5500,73,100);	-- 'Icecream_Hat'
REPLACE INTO `item_trade` VALUES (5378,73,100);	-- 'Rabbit_Ear_Hat'
REPLACE INTO `item_trade` VALUES (14004,73,100);	-- 'Poison_Bottle_10_Box'
REPLACE INTO `item_trade` VALUES (14005,73,100);	-- 'Poison_Bottle_5_Box'
REPLACE INTO `item_trade` VALUES (13571,73,100);	-- 'Giant_Fly_Wing_Box100'
REPLACE INTO `item_trade` VALUES (13710,73,100);	-- 'Max_Weight_Up_Box'
REPLACE INTO `item_trade` VALUES (7776,73,100);	-- 'Max_Weight_Up_Scroll'
REPLACE INTO `item_trade` VALUES (13973,73,100);	-- 'Poison_Bottle_30_Box'
REPLACE INTO `item_trade` VALUES (13989,73,100);	-- 'Acidbomb_10_Box'
REPLACE INTO `item_trade` VALUES (5208,73,100);	-- 'Rideword_Hat'
REPLACE INTO `item_trade` VALUES (5375,73,100);	-- 'L_Orc_Hero_Helm'
REPLACE INTO `item_trade` VALUES (5405,73,100);	-- 'Filir_Hat'
REPLACE INTO `item_trade` VALUES (5431,73,100);	-- 'Chicken_Hat'
REPLACE INTO `item_trade` VALUES (5410,73,100);	-- 'Bread_Bag2'
REPLACE INTO `item_trade` VALUES (5420,73,100);	-- 'Mask_Of_Ifrit'
REPLACE INTO `item_trade` VALUES (5421,73,100);	-- 'IfritNULLs_Ear'
REPLACE INTO `item_trade` VALUES (14469,73,100);	-- 'Ox_Tail_Scroll'
REPLACE INTO `item_trade` VALUES (6074,123,100);	-- 'BazettNULLs_Order'
REPLACE INTO `item_trade` VALUES (6075,91,100);	-- 'Crystalized_Teardrop'
REPLACE INTO `item_trade` VALUES (6076,123,100);	-- 'Portable_Toolbox'
REPLACE INTO `item_trade` VALUES (6077,123,100);	-- 'Rough_Mineral'
REPLACE INTO `item_trade` VALUES (6079,123,100);	-- 'Flower_Of_Alfheim'
REPLACE INTO `item_trade` VALUES (6080,91,100);	-- 'Manuk_Coin'
REPLACE INTO `item_trade` VALUES (6081,91,100);	-- 'Splendide_Coin'
REPLACE INTO `item_trade` VALUES (6082,123,100);	-- 'Spirit_Of_Alfheim'
REPLACE INTO `item_trade` VALUES (6084,123,100);	-- 'Bradium_Fragments'
REPLACE INTO `item_trade` VALUES (6085,123,100);	-- 'Shaggy_Muffler'
REPLACE INTO `item_trade` VALUES (12342,91,100);	-- 'ManukNULLs_Opportunity'
REPLACE INTO `item_trade` VALUES (12343,91,100);	-- 'ManukNULLs_Courage'
REPLACE INTO `item_trade` VALUES (12344,91,100);	-- 'PinguiculaNULLs_fruit_Jam'
REPLACE INTO `item_trade` VALUES (12345,91,100);	-- 'LuciolaNULLs_Honey_Jam'
REPLACE INTO `item_trade` VALUES (12348,91,100);	-- 'ManukNULLs_Faith'
REPLACE INTO `item_trade` VALUES (12349,91,100);	-- 'CornusNULL_Tears'
REPLACE INTO `item_trade` VALUES (1381,115,100);	-- 'N_Battle_Axe'
REPLACE INTO `item_trade` VALUES (1545,115,100);	-- 'N_Mace'
REPLACE INTO `item_trade` VALUES (1639,115,100);	-- 'N_Rod'
REPLACE INTO `item_trade` VALUES (1742,115,100);	-- 'N_Composite_Bow'
REPLACE INTO `item_trade` VALUES (2393,115,100);	-- 'N_AdventurerNULLs_Suit'
REPLACE INTO `item_trade` VALUES (12323,123,100);	-- 'N_Fly_Wing'
REPLACE INTO `item_trade` VALUES (12324,123,100);	-- 'N_Butterfly_Wing'
REPLACE INTO `item_trade` VALUES (12325,123,100);	-- 'N_Magnifier'
REPLACE INTO `item_trade` VALUES (13040,115,100);	-- 'N_Cutter'
REPLACE INTO `item_trade` VALUES (13041,115,100);	-- 'N_Main_Gauche'
REPLACE INTO `item_trade` VALUES (13415,115,100);	-- 'N_Falchion'
REPLACE INTO `item_trade` VALUES (1192,123,100);	-- 'P_Slayer1'
REPLACE INTO `item_trade` VALUES (1193,123,100);	-- 'P_Slayer2'
REPLACE INTO `item_trade` VALUES (1650,123,100);	-- 'P_Staff1'
REPLACE INTO `item_trade` VALUES (1651,123,100);	-- 'P_Staff2'
REPLACE INTO `item_trade` VALUES (1747,123,100);	-- 'P_Bow1'
REPLACE INTO `item_trade` VALUES (1748,123,100);	-- 'P_Bow2'
REPLACE INTO `item_trade` VALUES (2456,123,100);	-- 'Para_Team_Boots1'
REPLACE INTO `item_trade` VALUES (2457,123,100);	-- 'Para_Team_Boots2'
REPLACE INTO `item_trade` VALUES (2458,123,100);	-- 'Para_Team_Boots3'
REPLACE INTO `item_trade` VALUES (2560,123,100);	-- 'Para_Team_Manteau'
REPLACE INTO `item_trade` VALUES (5583,123,100);	-- 'Para_Team_Hat'
REPLACE INTO `item_trade` VALUES (6219,123,100);	-- 'Para_Team_Mark'
REPLACE INTO `item_trade` VALUES (13050,123,100);	-- 'P_Dagger1'
REPLACE INTO `item_trade` VALUES (13051,123,100);	-- 'P_Dagger2'
REPLACE INTO `item_trade` VALUES (13112,123,100);	-- 'P_Revolver1'
REPLACE INTO `item_trade` VALUES (13113,123,100);	-- 'P_Revolver2'
REPLACE INTO `item_trade` VALUES (13423,123,100);	-- 'P_Sabre1'
REPLACE INTO `item_trade` VALUES (13424,123,100);	-- 'P_Sabre2'
REPLACE INTO `item_trade` VALUES (15009,123,100);	-- 'Para_Team_Uniform1'
REPLACE INTO `item_trade` VALUES (15010,123,100);	-- 'Para_Team_Uniform2'
REPLACE INTO `item_trade` VALUES (15011,123,100);	-- 'Para_Team_Uniform3'
REPLACE INTO `item_trade` VALUES (16004,123,100);	-- 'P_Mace1'
REPLACE INTO `item_trade` VALUES (16005,123,100);	-- 'P_Mace2'
REPLACE INTO `item_trade` VALUES (1703,123,100);	-- 'Bow__'
REPLACE INTO `item_trade` VALUES (2794,123,100);	-- 'Magic_Stone_Ring'
REPLACE INTO `item_trade` VALUES (2795,115,100);	-- 'Green_Apple_Ring'
REPLACE INTO `item_trade` VALUES (2796,123,100);	-- 'Magical_Stone'
REPLACE INTO `item_trade` VALUES (2797,123,100);	-- 'Magical_Stone_'
REPLACE INTO `item_trade` VALUES (5746,91,100);	-- 'Rune_Circlet'
REPLACE INTO `item_trade` VALUES (5747,91,100);	-- 'Mitra'
REPLACE INTO `item_trade` VALUES (5748,91,100);	-- 'Sniper_Goggle'
REPLACE INTO `item_trade` VALUES (5749,91,100);	-- 'Driver_Band'
REPLACE INTO `item_trade` VALUES (5750,91,100);	-- 'Shadow_Handicraft'
REPLACE INTO `item_trade` VALUES (5751,91,100);	-- 'Minstrel_Song_Hat'
REPLACE INTO `item_trade` VALUES (5752,91,100);	-- 'Midas_Whisper'
REPLACE INTO `item_trade` VALUES (5753,91,100);	-- 'Magic_Stone_Hat'
REPLACE INTO `item_trade` VALUES (5754,91,100);	-- 'Blazing_Soul'
REPLACE INTO `item_trade` VALUES (5755,91,100);	-- 'Silent_Executer'
REPLACE INTO `item_trade` VALUES (5756,91,100);	-- 'Wind_Whisper'
REPLACE INTO `item_trade` VALUES (5757,91,100);	-- 'Schmidt_Helm'
REPLACE INTO `item_trade` VALUES (5758,91,100);	-- 'Dying_Swan'
REPLACE INTO `item_trade` VALUES (5760,91,100);	-- 'Driver_Band_'
REPLACE INTO `item_trade` VALUES (6151,115,100);	-- 'Peice_Of_Great_Bradium'
REPLACE INTO `item_trade` VALUES (6152,115,100);	-- 'Glittering_Crystal'
REPLACE INTO `item_trade` VALUES (6153,123,100);	-- 'Special_Exchange_Coupon'
REPLACE INTO `item_trade` VALUES (6154,115,100);	-- 'Broken_Horn_Pipe'
REPLACE INTO `item_trade` VALUES (6156,115,100);	-- 'Approval_Report'
REPLACE INTO `item_trade` VALUES (6266,123,100);	-- 'Cheat_Key'
REPLACE INTO `item_trade` VALUES (6267,123,100);	-- 'Virtual_Key'
REPLACE INTO `item_trade` VALUES (6268,123,100);	-- 'Mirth_Key'
REPLACE INTO `item_trade` VALUES (6269,123,100);	-- 'Master_Brush'
REPLACE INTO `item_trade` VALUES (6270,115,100);	-- 'Mins_Picture'
REPLACE INTO `item_trade` VALUES (6271,115,100);	-- 'Mins_Receipt'
REPLACE INTO `item_trade` VALUES (6274,123,100);	-- 'Saint_Cloth_Piece'
REPLACE INTO `item_trade` VALUES (6275,123,100);	-- 'King_Shield'
REPLACE INTO `item_trade` VALUES (6276,123,100);	-- 'Clear_Reagent'
REPLACE INTO `item_trade` VALUES (6277,123,100);	-- 'Red_Reagent'
REPLACE INTO `item_trade` VALUES (6278,123,100);	-- 'Black_Reagent'
REPLACE INTO `item_trade` VALUES (12384,115,100);	-- 'Rainbow_Ruby_Water'
REPLACE INTO `item_trade` VALUES (12385,115,100);	-- 'Rainbow_Ruby_Fire'
REPLACE INTO `item_trade` VALUES (12386,115,100);	-- 'Rainbow_Ruby_Wind'
REPLACE INTO `item_trade` VALUES (12387,115,100);	-- 'Rainbow_Ruby_Earth'
REPLACE INTO `item_trade` VALUES (12388,123,100);	-- 'Runstone_Crush'
REPLACE INTO `item_trade` VALUES (12389,123,100);	-- 'Runstone_Storm'
REPLACE INTO `item_trade` VALUES (12390,123,100);	-- 'Runstone_Millennium'
REPLACE INTO `item_trade` VALUES (2798,115,100);	-- 'Will_Of_Exhausted_Angel'
REPLACE INTO `item_trade` VALUES (12258,115,100);	-- 'Bombring_Box'
REPLACE INTO `item_trade` VALUES (12333,123,100);	-- 'Ansila'
REPLACE INTO `item_trade` VALUES (12725,91,100);	-- 'Runstone_Nosiege'
REPLACE INTO `item_trade` VALUES (12726,91,100);	-- 'Runstone_Rhydo'
REPLACE INTO `item_trade` VALUES (12727,91,100);	-- 'Runstone_Verkana'
REPLACE INTO `item_trade` VALUES (12728,91,100);	-- 'Runstone_Isia'
REPLACE INTO `item_trade` VALUES (12729,91,100);	-- 'Runstone_Asir'
REPLACE INTO `item_trade` VALUES (12730,91,100);	-- 'Runstone_Urj'
REPLACE INTO `item_trade` VALUES (12731,91,100);	-- 'Runstone_Turisus'
REPLACE INTO `item_trade` VALUES (12732,91,100);	-- 'Runstone_Pertz'
REPLACE INTO `item_trade` VALUES (12733,91,100);	-- 'Runstone_Hagalas'
REPLACE INTO `item_trade` VALUES (2819,115,100);	-- 'Swordman_Manual'
REPLACE INTO `item_trade` VALUES (2820,115,100);	-- 'Thief_Manual'
REPLACE INTO `item_trade` VALUES (2821,115,100);	-- 'Acolyte_Manual'
REPLACE INTO `item_trade` VALUES (2822,115,100);	-- 'Archer_Manual'
REPLACE INTO `item_trade` VALUES (2823,115,100);	-- 'Merchant_Manual'
REPLACE INTO `item_trade` VALUES (2824,115,100);	-- 'Mage_Manual



--
-- Estrutura para a tabela `item_delay`
--  

CREATE TABLE IF NOT EXISTS `item_delay` (
  `ItemID` mediumint(3) unsigned NOT NULL default '0',
  `Delay` mediumint(3) unsigned NOT NULL default '0',
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
