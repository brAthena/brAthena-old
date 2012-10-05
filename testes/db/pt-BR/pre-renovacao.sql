/*_________________________________________________________________________
 /                                                                         \
 |                  _           _   _   _                                  |
 |                 | |__  _ __ / \ | |_| |__   ___ _ __   __ _             |
 |                 | '_ \| '__/ _ \| __| '_ \ / _ \ '_ \ / _` |            |
 |                 | |_) | | / ___ \ |_| | | |  __/ | | | (_| |            |
 |                 |_.__/|_|/_/   \_\__|_| |_|\___|_| |_|\__,_|            |
 |                                                                         |
 |                       brAthena © 2012 - Banco de Dados                  |
 |             Contém as tabelas de habilidades, itens e monstros          |
 \_________________________________________________________________________/
*/

--
-- Estrutura da tabela `abra_db`
--

CREATE TABLE IF NOT EXISTS `abra_db` (
  `SkillID` smallint(2) unsigned NOT NULL DEFAULT '0',
  `DummyName` text NOT NULL,
  `ReqHocusPocusLevel` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Rate` smallint(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`SkillID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

REPLACE INTO `abra_db` VALUES(5, 'Golpe Fulminante', 1, 5000);
REPLACE INTO `abra_db` VALUES(6, 'Provocar', 1, 5000);
REPLACE INTO `abra_db` VALUES(7, 'Impacto Explosivo', 1, 5000);
REPLACE INTO `abra_db` VALUES(8, 'Vigor', 1, 5000);
REPLACE INTO `abra_db` VALUES(10, 'Chama Reveladora', 1, 5000);
REPLACE INTO `abra_db` VALUES(11, 'Ataque Espiritual', 1, 5000);
REPLACE INTO `abra_db` VALUES(12, 'Escudo Mágico', 4, 5000);
REPLACE INTO `abra_db` VALUES(13, 'Espíritos Anciões', 2, 5000);
REPLACE INTO `abra_db` VALUES(14, 'Lanças de Gelo', 1, 5000);
REPLACE INTO `abra_db` VALUES(15, 'Rajada Congelante', 2, 5000);
REPLACE INTO `abra_db` VALUES(16, 'Petrificar', 1, 5000);
REPLACE INTO `abra_db` VALUES(17, 'Bola de Fogo', 2, 5000);
REPLACE INTO `abra_db` VALUES(18, 'Barreira de Fogo', 4, 5000);
REPLACE INTO `abra_db` VALUES(19, 'Lanças de Fogo', 1, 5000);
REPLACE INTO `abra_db` VALUES(20, 'Relâmpago', 1, 5000);
REPLACE INTO `abra_db` VALUES(21, 'Tempestade de Raios', 2, 5000);
REPLACE INTO `abra_db` VALUES(24, 'Revelação', 1, 5000);
REPLACE INTO `abra_db` VALUES(25, 'Escudo Sagrado', 6, 5000);
REPLACE INTO `abra_db` VALUES(26, 'Teleporte', 2, 5000);
REPLACE INTO `abra_db` VALUES(27, 'Portal', 4, 5000);
REPLACE INTO `abra_db` VALUES(28, 'Curar', 1, 5000);
REPLACE INTO `abra_db` VALUES(29, 'Aumentar Agilidade', 2, 5000);
REPLACE INTO `abra_db` VALUES(30, 'Diminuir Agilidade', 4, 5000);
REPLACE INTO `abra_db` VALUES(31, 'Aqua Benedicta', 1, 5000);
REPLACE INTO `abra_db` VALUES(32, 'Signum Crusis', 1, 5000);
REPLACE INTO `abra_db` VALUES(33, 'Angelus', 1, 5000);
REPLACE INTO `abra_db` VALUES(34, 'Bênção', 2, 5000);
REPLACE INTO `abra_db` VALUES(35, 'Medicar', 1, 5000);
REPLACE INTO `abra_db` VALUES(40, 'Identificar Item', 1, 5000);
REPLACE INTO `abra_db` VALUES(41, 'Comércio', 4, 5000);
REPLACE INTO `abra_db` VALUES(42, 'Mammonita', 1, 5000);
REPLACE INTO `abra_db` VALUES(45, 'Concentração', 4, 5000);
REPLACE INTO `abra_db` VALUES(46, 'Rajada de Flechas', 1, 5000);
REPLACE INTO `abra_db` VALUES(47, 'Chuva de Flechas', 2, 5000);
REPLACE INTO `abra_db` VALUES(50, 'Furto', 2, 5000);
REPLACE INTO `abra_db` VALUES(51, 'Esconderijo', 2, 5000);
REPLACE INTO `abra_db` VALUES(52, 'Envenenar', 1, 5000);
REPLACE INTO `abra_db` VALUES(53, 'Desintoxicar', 1, 5000);
REPLACE INTO `abra_db` VALUES(54, 'Ressuscitar', 1, 5000);
REPLACE INTO `abra_db` VALUES(56, 'Perfurar', 2, 4000);
REPLACE INTO `abra_db` VALUES(57, 'Brandir Lança', 6, 4000);
REPLACE INTO `abra_db` VALUES(58, 'Estocada', 1, 4000);
REPLACE INTO `abra_db` VALUES(59, 'Lança Bumerangue', 4, 4000);
REPLACE INTO `abra_db` VALUES(60, 'Rapidez com Duas Mãos', 1, 4000);
REPLACE INTO `abra_db` VALUES(61, 'Contra-Ataque', 2, 4000);
REPLACE INTO `abra_db` VALUES(62, 'Impacto de Tyr', 6, 4000);
REPLACE INTO `abra_db` VALUES(66, 'Impositio Manus', 1, 4000);
REPLACE INTO `abra_db` VALUES(67, 'Suffragium', 2, 4000);
REPLACE INTO `abra_db` VALUES(68, 'Aspersio', 2, 4000);
REPLACE INTO `abra_db` VALUES(69, 'B.S. Sacramenti', 4, 4000);
REPLACE INTO `abra_db` VALUES(70, 'Santuário', 2, 4000);
REPLACE INTO `abra_db` VALUES(71, 'Retardar Veneno', 1, 4000);
REPLACE INTO `abra_db` VALUES(72, 'Graça Divina', 1, 4000);
REPLACE INTO `abra_db` VALUES(73, 'Kyrie Eleison', 2, 4000);
REPLACE INTO `abra_db` VALUES(74, 'Magnificat', 2, 4000);
REPLACE INTO `abra_db` VALUES(75, 'Gloria', 4, 4000);
REPLACE INTO `abra_db` VALUES(76, 'Lex Divina', 2, 4000);
REPLACE INTO `abra_db` VALUES(77, 'Esconjurar', 2, 4000);
REPLACE INTO `abra_db` VALUES(78, 'Lex Aeterna', 4, 4000);
REPLACE INTO `abra_db` VALUES(79, 'Magnus Exorcismus', 6, 4000);
REPLACE INTO `abra_db` VALUES(80, 'Coluna de Fogo', 2, 4000);
REPLACE INTO `abra_db` VALUES(81, 'Supernova', 2, 4000);
REPLACE INTO `abra_db` VALUES(83, 'Chuva de Meteoros', 6, 4000);
REPLACE INTO `abra_db` VALUES(84, 'Trovão de Júpiter', 2, 4000);
REPLACE INTO `abra_db` VALUES(85, 'Ira de Thor', 6, 4000);
REPLACE INTO `abra_db` VALUES(86, 'Esfera d''Água', 4, 4000);
REPLACE INTO `abra_db` VALUES(87, 'Barreira de Gelo', 2, 4000);
REPLACE INTO `abra_db` VALUES(88, 'Congelar', 1, 4000);
REPLACE INTO `abra_db` VALUES(89, 'Nevasca', 6, 4000);
REPLACE INTO `abra_db` VALUES(90, 'Coluna de Pedra', 1, 4000);
REPLACE INTO `abra_db` VALUES(91, 'Fúria da Terra', 2, 4000);
REPLACE INTO `abra_db` VALUES(92, 'Pântano dos Mortos', 4, 4000);
REPLACE INTO `abra_db` VALUES(93, 'Sentido Sobrenatural', 1, 4000);
REPLACE INTO `abra_db` VALUES(108, 'Consertar Armas', 1, 0);
REPLACE INTO `abra_db` VALUES(110, 'Martelo de Thor', 1, 4000);
REPLACE INTO `abra_db` VALUES(111, 'Adrenalina Pura', 2, 4000);
REPLACE INTO `abra_db` VALUES(112, 'Manejo Perfeito', 4, 4000);
REPLACE INTO `abra_db` VALUES(113, 'Força Violenta', 4, 4000);
REPLACE INTO `abra_db` VALUES(114, 'Amplificar Poder', 6, 4000);
REPLACE INTO `abra_db` VALUES(115, 'Armadilha Escorregadia', 1, 4000);
REPLACE INTO `abra_db` VALUES(116, 'Armadilha Atordoante', 2, 4000);
REPLACE INTO `abra_db` VALUES(117, 'Instalar Armadilha', 2, 4000);
REPLACE INTO `abra_db` VALUES(118, 'Armadilha Extenuante', 4, 4000);
REPLACE INTO `abra_db` VALUES(119, 'Armadilha Sonífera', 4, 4000);
REPLACE INTO `abra_db` VALUES(120, 'Armadilha Luminosa', 4, 4000);
REPLACE INTO `abra_db` VALUES(121, 'Armadilha Congelante', 4, 4000);
REPLACE INTO `abra_db` VALUES(122, 'Instalar Mina', 4, 4000);
REPLACE INTO `abra_db` VALUES(123, 'Armadilha Explosiva', 6, 4000);
REPLACE INTO `abra_db` VALUES(124, 'Remover Armadilha', 1, 4000);
REPLACE INTO `abra_db` VALUES(125, 'Mensagem Secreta', 1, 4000);
REPLACE INTO `abra_db` VALUES(129, 'Ataque Aéreo', 4, 4000);
REPLACE INTO `abra_db` VALUES(130, 'Alerta', 1, 4000);
REPLACE INTO `abra_db` VALUES(131, 'Desativar Armadilha', 1, 4000);
REPLACE INTO `abra_db` VALUES(135, 'Furtividade', 2, 4000);
REPLACE INTO `abra_db` VALUES(136, 'Lâminas Destruidoras', 2, 4000);
REPLACE INTO `abra_db` VALUES(137, 'Tocaia', 4, 4000);
REPLACE INTO `abra_db` VALUES(138, 'Envenenar Arma', 2, 4000);
REPLACE INTO `abra_db` VALUES(139, 'Refletir Veneno', 2, 4000);
REPLACE INTO `abra_db` VALUES(140, 'Névoa Tóxica', 4, 4000);
REPLACE INTO `abra_db` VALUES(141, 'Explosão Tóxica', 4, 4000);
REPLACE INTO `abra_db` VALUES(142, 'Primeiros Socorros', 1, 5000);
REPLACE INTO `abra_db` VALUES(143, 'Fingir de Morto', 1, 5000);
REPLACE INTO `abra_db` VALUES(146, 'Instinto de Sobrevivência', 1, 0);
REPLACE INTO `abra_db` VALUES(147, 'Fabricar Flechas', 1, 5000);
REPLACE INTO `abra_db` VALUES(148, 'Disparo Violento', 1, 5000);
REPLACE INTO `abra_db` VALUES(149, 'Chutar Areia', 1, 5000);
REPLACE INTO `abra_db` VALUES(150, 'Recuar', 1, 5000);
REPLACE INTO `abra_db` VALUES(151, 'Procurar Pedras', 1, 5000);
REPLACE INTO `abra_db` VALUES(152, 'Arremessar Pedra', 1, 5000);
REPLACE INTO `abra_db` VALUES(153, 'Cavalo-de-Pau', 1, 5000);
REPLACE INTO `abra_db` VALUES(154, 'Personalizar Carrinho', 1, 5000);
REPLACE INTO `abra_db` VALUES(155, 'Grito de Guerra', 1, 5000);
REPLACE INTO `abra_db` VALUES(156, 'Luz Divina', 1, 5000);
REPLACE INTO `abra_db` VALUES(157, 'Proteção Arcana', 1, 5000);
REPLACE INTO `abra_db` VALUES(211, 'Afanar', 1, 4000);
REPLACE INTO `abra_db` VALUES(212, 'Apunhalar', 4, 4000);
REPLACE INTO `abra_db` VALUES(214, 'Ataque Surpresa', 2, 4000);
REPLACE INTO `abra_db` VALUES(215, 'Remover Arma', 4, 4000);
REPLACE INTO `abra_db` VALUES(216, 'Remover Escudo', 4, 4000);
REPLACE INTO `abra_db` VALUES(217, 'Remover Armadura', 4, 4000);
REPLACE INTO `abra_db` VALUES(218, 'Remover Capacete', 4, 4000);
REPLACE INTO `abra_db` VALUES(219, 'Rapto', 4, 4000);
REPLACE INTO `abra_db` VALUES(220, 'Grafitti', 1, 4000);
REPLACE INTO `abra_db` VALUES(221, 'Pichar', 1, 0);
REPLACE INTO `abra_db` VALUES(222, 'Faxina', 4, 4000);
REPLACE INTO `abra_db` VALUES(228, 'Preparar Poção', 1, 4000);
REPLACE INTO `abra_db` VALUES(229, 'Fogo Grego', 2, 4000);
REPLACE INTO `abra_db` VALUES(230, 'Terror Ácido', 2, 4000);
REPLACE INTO `abra_db` VALUES(231, 'Arremessar Poção', 2, 4000);
REPLACE INTO `abra_db` VALUES(232, 'Criar Monstro Planta', 4, 4000);
REPLACE INTO `abra_db` VALUES(233, 'Criar Esfera Marinha', 4, 4000);
REPLACE INTO `abra_db` VALUES(234, 'Revestir Arma', 4, 4000);
REPLACE INTO `abra_db` VALUES(235, 'Revestir Escudo', 4, 4000);
REPLACE INTO `abra_db` VALUES(236, 'Revestir Armadura', 4, 4000);
REPLACE INTO `abra_db` VALUES(237, 'Revestir Capacete', 4, 4000);
REPLACE INTO `abra_db` VALUES(249, 'Bloqueio', 1, 4000);
REPLACE INTO `abra_db` VALUES(250, 'Punição Divina', 2, 4000);
REPLACE INTO `abra_db` VALUES(251, 'Escudo Bumerangue', 2, 4000);
REPLACE INTO `abra_db` VALUES(252, 'Escudo Refletor', 4, 4000);
REPLACE INTO `abra_db` VALUES(253, 'Crux Divinum', 2, 4000);
REPLACE INTO `abra_db` VALUES(254, 'Crux Magnun', 6, 4000);
REPLACE INTO `abra_db` VALUES(255, 'Redenção', 4, 4000);
REPLACE INTO `abra_db` VALUES(256, 'Divina Providência', 2, 4000);
REPLACE INTO `abra_db` VALUES(257, 'Aura Sagrada', 4, 4000);
REPLACE INTO `abra_db` VALUES(258, 'Rapidez com Lança', 1, 4000);
REPLACE INTO `abra_db` VALUES(261, 'Invocar Esfera Espiritual', 1, 4000);
REPLACE INTO `abra_db` VALUES(262, 'Absorver Esferas Espirituais', 1, 4000);
REPLACE INTO `abra_db` VALUES(264, 'Passo Etéreo', 4, 4000);
REPLACE INTO `abra_db` VALUES(266, 'Impacto Psíquico', 2, 4000);
REPLACE INTO `abra_db` VALUES(267, 'Disparo de Esferas Espirituais', 2, 4000);
REPLACE INTO `abra_db` VALUES(268, 'Corpo Fechado', 4, 4000);
REPLACE INTO `abra_db` VALUES(269, 'Dilema', 2, 4000);
REPLACE INTO `abra_db` VALUES(270, 'Fúria Interior', 2, 4000);
REPLACE INTO `abra_db` VALUES(271, 'Punho Supremo de Asura', 6, 4000);
REPLACE INTO `abra_db` VALUES(272, 'Combo Quádruplo', 1, 0);
REPLACE INTO `abra_db` VALUES(273, 'O Último Dragão', 1, 0);
REPLACE INTO `abra_db` VALUES(275, 'Cancelar magia', 1, 4000);
REPLACE INTO `abra_db` VALUES(276, 'Espelho Mágico', 1, 4000);
REPLACE INTO `abra_db` VALUES(277, 'Desconcentrar', 2, 4000);
REPLACE INTO `abra_db` VALUES(279, 'Desejo Arcano', 2, 4000);
REPLACE INTO `abra_db` VALUES(280, 'Encantar com Chama', 2, 4000);
REPLACE INTO `abra_db` VALUES(281, 'Encantar com Geada', 2, 4000);
REPLACE INTO `abra_db` VALUES(282, 'Encantar com Ventania', 2, 4000);
REPLACE INTO `abra_db` VALUES(283, 'Encantar com Terremoto', 2, 4000);
REPLACE INTO `abra_db` VALUES(285, 'Vulcão', 4, 4000);
REPLACE INTO `abra_db` VALUES(286, 'Dilúvio', 4, 4000);
REPLACE INTO `abra_db` VALUES(287, 'Furacão', 4, 4000);
REPLACE INTO `abra_db` VALUES(288, 'Proteger Terreno', 4, 4000);
REPLACE INTO `abra_db` VALUES(289, 'Desencantar', 6, 4000);
REPLACE INTO `abra_db` VALUES(290, 'Abracadabra', 4, 4000);
REPLACE INTO `abra_db` VALUES(291, 'Mono Cell', 4, 2500);
REPLACE INTO `abra_db` VALUES(292, 'Transformação', 8, 2500);
REPLACE INTO `abra_db` VALUES(293, 'Invocar Monstro', 6, 3500);
REPLACE INTO `abra_db` VALUES(294, 'Transformação Orc', 4, 5000);
REPLACE INTO `abra_db` VALUES(295, 'Extermínio', 8, 2000);
REPLACE INTO `abra_db` VALUES(297, 'Hipnose', 6, 4000);
REPLACE INTO `abra_db` VALUES(298, 'Interrogatório', 4, 5000);
REPLACE INTO `abra_db` VALUES(299, 'Gravity', 4, 5000);
REPLACE INTO `abra_db` VALUES(301, 'Suicídio', 4, 2000);
REPLACE INTO `abra_db` VALUES(302, 'Recuperação', 8, 3000);
REPLACE INTO `abra_db` VALUES(303, 'Coma', 4, 4000);
REPLACE INTO `abra_db` VALUES(304, 'Encerramento', 1, 0);
REPLACE INTO `abra_db` VALUES(305, 'Bis', 1, 0);
REPLACE INTO `abra_db` VALUES(306, 'Cantiga de Ninar', 1, 0);
REPLACE INTO `abra_db` VALUES(307, 'Banquete de Njord', 1, 0);
REPLACE INTO `abra_db` VALUES(308, 'Ritmo Caótico', 1, 0);
REPLACE INTO `abra_db` VALUES(309, 'Rufar dos Tambores', 1, 0);
REPLACE INTO `abra_db` VALUES(310, 'Anel dos Nibelungos', 1, 0);
REPLACE INTO `abra_db` VALUES(311, 'Lamento de Loki', 1, 0);
REPLACE INTO `abra_db` VALUES(312, 'Canção Preciosa', 1, 0);
REPLACE INTO `abra_db` VALUES(313, 'Ode a Siegfried', 1, 0);
REPLACE INTO `abra_db` VALUES(316, 'Flecha Melódica', 1, 4000);
REPLACE INTO `abra_db` VALUES(317, 'Dissonância', 1, 0);
REPLACE INTO `abra_db` VALUES(318, 'Piada Infame', 2, 4000);
REPLACE INTO `abra_db` VALUES(319, 'Assovio', 1, 0);
REPLACE INTO `abra_db` VALUES(320, 'Crepúsculo Sangrento', 1, 0);
REPLACE INTO `abra_db` VALUES(321, 'Poema de Bragi', 1, 0);
REPLACE INTO `abra_db` VALUES(322, 'Maçãs de Idun', 1, 0);
REPLACE INTO `abra_db` VALUES(324, 'Estilingue', 1, 4000);
REPLACE INTO `abra_db` VALUES(325, 'Dança do Ventre', 1, 0);
REPLACE INTO `abra_db` VALUES(326, 'Escândalo', 2, 4000);
REPLACE INTO `abra_db` VALUES(327, 'Sibilo', 1, 0);
REPLACE INTO `abra_db` VALUES(328, 'Não Me Abandones', 1, 0);
REPLACE INTO `abra_db` VALUES(329, 'Beijo da Sorte', 1, 0);
REPLACE INTO `abra_db` VALUES(330, 'Dança Cigana', 1, 0);

--
-- Estrutura da tabela `castle_db`
--

CREATE TABLE IF NOT EXISTS `castle_db` (
  `CastleID` smallint(2) unsigned NOT NULL DEFAULT '0',
  `MapName` text NOT NULL,
  `CastleName` text NOT NULL,
  `OnGuildBreakEventName` text NOT NULL,
  `Flag` smallint(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`CastleID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

REPLACE INTO `castle_db` VALUES(4, 'aldeg_cas05', 'Acrux', 'Agit#aldeg_cas05', 1);
REPLACE INTO `castle_db` VALUES(3, 'aldeg_cas04', 'Rigel', 'Agit#aldeg_cas04', 1);
REPLACE INTO `castle_db` VALUES(2, 'aldeg_cas03', 'Canopus', 'Agit#aldeg_cas03', 1);
REPLACE INTO `castle_db` VALUES(1, 'aldeg_cas02', 'Astrum', 'Agit#aldeg_cas02', 1);
REPLACE INTO `castle_db` VALUES(0, 'aldeg_cas01', 'Sirius', 'Agit#aldeg_cas01', 1);
REPLACE INTO `castle_db` VALUES(5, 'gefg_cas01', 'Arsulf', 'Agit#gefg_cas01', 1);
REPLACE INTO `castle_db` VALUES(6, 'gefg_cas02', 'Trapesac', 'Agit#gefg_cas02', 1);
REPLACE INTO `castle_db` VALUES(7, 'gefg_cas03', 'Ruaden', 'Agit#gefg_cas03', 1);
REPLACE INTO `castle_db` VALUES(8, 'gefg_cas04', 'Saffran', 'Agit#gefg_cas04', 1);
REPLACE INTO `castle_db` VALUES(9, 'gefg_cas05', 'Arima', 'Agit#gefg_cas05', 1);
REPLACE INTO `castle_db` VALUES(10, 'payg_cas01', 'Pal?cio do Sol', 'Agit#payg_cas01', 1);
REPLACE INTO `castle_db` VALUES(11, 'payg_cas02', 'Pal?cio do Lago Sagrado', 'Agit#payg_cas02', 1);
REPLACE INTO `castle_db` VALUES(12, 'payg_cas03', 'Pal?cio da Sombra', 'Agit#payg_cas03', 1);
REPLACE INTO `castle_db` VALUES(13, 'payg_cas04', 'Pal?cio Escarlate', 'Agit#payg_cas04', 1);
REPLACE INTO `castle_db` VALUES(14, 'payg_cas05', 'Pal?cio da Colina', 'Agit#payg_cas05', 1);
REPLACE INTO `castle_db` VALUES(15, 'prtg_cas01', 'Kriemhild', 'Agit#prtg_cas01', 1);
REPLACE INTO `castle_db` VALUES(16, 'prtg_cas02', 'Hrist', 'Agit#prtg_cas02', 1);
REPLACE INTO `castle_db` VALUES(17, 'prtg_cas03', 'Brynhildr', 'Agit#prtg_cas03', 1);
REPLACE INTO `castle_db` VALUES(18, 'prtg_cas04', 'Skoegul', 'Agit#prtg_cas04', 1);
REPLACE INTO `castle_db` VALUES(19, 'prtg_cas05', 'Gondul', 'Agit#prtg_cas05', 1);
REPLACE INTO `castle_db` VALUES(20, 'nguild_alde', 'Terra', 'Agit_N01', 2);
REPLACE INTO `castle_db` VALUES(21, 'nguild_gef', 'Vento', 'Agit_N02', 2);
REPLACE INTO `castle_db` VALUES(22, 'nguild_pay', '?gua', 'Agit_N03', 2);
REPLACE INTO `castle_db` VALUES(23, 'nguild_prt', 'Fogo', 'Agit_N04', 2);
REPLACE INTO `castle_db` VALUES(24, 'schg_cas01', 'Himinn', 'Agit_Sc01', 1);
REPLACE INTO `castle_db` VALUES(25, 'schg_cas02', 'Andlangr', 'Agit_Sc02', 1);
REPLACE INTO `castle_db` VALUES(26, 'schg_cas03', 'Viblainn', 'Agit_Sc03', 1);
REPLACE INTO `castle_db` VALUES(27, 'schg_cas04', 'Hljod', 'Agit_Sc04', 1);
REPLACE INTO `castle_db` VALUES(28, 'schg_cas05', 'Skatyrnir', 'Agit_Sc05', 1);
REPLACE INTO `castle_db` VALUES(29, 'arug_cas01', 'Mardol', 'Agit_Ar01', 1);
REPLACE INTO `castle_db` VALUES(30, 'arug_cas02', 'Syr', 'Agit_Ar02', 1);
REPLACE INTO `castle_db` VALUES(31, 'arug_cas03', 'Horn', 'Agit_Ar03', 1);
REPLACE INTO `castle_db` VALUES(32, 'arug_cas04', 'Gefn', 'Agit_Ar04', 1);
REPLACE INTO `castle_db` VALUES(33, 'arug_cas05', 'Vanadis', 'Agit_Ar05', 1);

--
-- Estrutura da tabela `create_arrow_db`
--

CREATE TABLE IF NOT EXISTS `create_arrow_db` (
  `SourceID` smallint(2) unsigned NOT NULL DEFAULT '0',
  `MakeID1` smallint(2) unsigned NOT NULL DEFAULT '0',
  `MakeAmount1` smallint(2) unsigned NOT NULL DEFAULT '0',
  `MakeID2` smallint(2) unsigned NOT NULL DEFAULT '0',
  `MakeAmount2` smallint(2) unsigned NOT NULL DEFAULT '0',
  `MakeID3` smallint(2) unsigned NOT NULL DEFAULT '0',
  `MakeAmount3` smallint(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`SourceID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

REPLACE INTO `create_arrow_db` VALUES(603, 1764, 50, 1768, 50, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(604, 1769, 40, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(609, 1761, 40, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(713, 1770, 2, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(714, 1757, 600, 1769, 600, 1765, 600);
REPLACE INTO `create_arrow_db` VALUES(715, 1756, 30, 1768, 1, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(716, 1762, 10, 1763, 1, 1761, 1);
REPLACE INTO `create_arrow_db` VALUES(717, 1754, 30, 1759, 1, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(724, 1761, 50, 1768, 10, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(733, 1764, 50, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(756, 1765, 50, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(757, 1753, 200, 1758, 5, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(902, 1750, 7, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(904, 1762, 3, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(909, 1750, 4, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(910, 1770, 12, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(911, 1753, 8, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(912, 1751, 50, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(913, 1767, 1, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(920, 1770, 15, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(922, 1770, 30, 1753, 5, 1756, 10);
REPLACE INTO `create_arrow_db` VALUES(923, 1767, 20, 1760, 10, 1758, 5);
REPLACE INTO `create_arrow_db` VALUES(937, 1763, 1, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(939, 1762, 1, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(947, 1770, 35, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(952, 1750, 50, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(956, 1770, 80, 1754, 150, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(957, 1762, 1, 1767, 1, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(958, 1767, 5, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(959, 1763, 1, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(968, 1765, 1, 1758, 5, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(969, 1760, 50, 1765, 50, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(984, 1765, 250, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(985, 1753, 1000, 1758, 50, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(990, 1752, 600, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(991, 1754, 150, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(992, 1755, 150, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(993, 1756, 150, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(994, 1752, 1800, 1769, 5, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(995, 1754, 450, 1759, 5, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(996, 1755, 450, 1768, 5, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(997, 1756, 450, 1760, 5, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(998, 1770, 100, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(999, 1753, 100, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(1000, 1760, 30, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(1001, 1760, 10, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(1002, 1770, 50, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(1003, 1767, 8, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(1010, 1770, 50, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(1011, 1770, 200, 1751, 40, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(1018, 1770, 50, 1756, 60, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(1019, 1750, 40, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(1021, 1770, 40, 1767, 2, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(1027, 1750, 70, 1756, 30, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(1031, 1764, 1, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(1035, 1765, 1, 1770, 50, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(1038, 1761, 2, 1770, 50, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(1041, 1770, 80, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(1043, 1753, 10, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(1044, 1762, 5, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(1053, 1753, 20, 1754, 300, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(1063, 1764, 2, 1751, 40, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(1064, 1770, 100, 1753, 50, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(1066, 1750, 20, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(1067, 1750, 20, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(1068, 1750, 20, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(1095, 1768, 5, 1750, 100, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(1098, 1753, 50, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(2257, 1751, 1000, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(2281, 1753, 200, 1769, 40, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(2288, 1764, 200, 1753, 300, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(2292, 1753, 200, 1758, 40, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(2319, 1760, 1000, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(2328, 1750, 700, 1770, 500, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(2329, 1750, 1000, 1770, 700, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(2332, 1751, 700, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(2333, 1751, 1000, 1757, 10, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(2408, 1770, 700, 1753, 50, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(2618, 1755, 150, 1753, 100, 1764, 10);
REPLACE INTO `create_arrow_db` VALUES(5014, 1754, 600, 1753, 200, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(7002, 1753, 30, 1762, 5, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(7008, 1758, 2, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(7010, 1753, 250, 1763, 1, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(7018, 1769, 1000, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(7019, 1767, 1000, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(7020, 1761, 1000, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(7021, 1760, 200, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(7022, 1765, 1000, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(7023, 1764, 600, 1767, 200, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(7024, 1764, 600, 1761, 200, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(7025, 1758, 800, 1769, 400, 1768, 800);
REPLACE INTO `create_arrow_db` VALUES(7026, 1765, 50, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(7027, 1767, 100, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(7035, 1752, 3000, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(7036, 1754, 300, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(7066, 1754, 100, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(7067, 1756, 50, 1758, 30, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(7068, 1752, 250, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(7069, 1753, 150, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(7097, 1752, 150, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(7098, 1752, 100, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(7100, 1764, 30, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(7108, 1753, 100, 1765, 100, 1757, 300);
REPLACE INTO `create_arrow_db` VALUES(7109, 1765, 100, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(7120, 1753, 100, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(7123, 1753, 10, 1761, 50, 1769, 50);
REPLACE INTO `create_arrow_db` VALUES(7150, 1750, 100, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(7155, 1763, 20, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(7163, 1764, 20, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(7164, 1758, 30, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(7172, 1764, 10, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(7210, 1767, 150, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(7221, 1753, 50, 1767, 50, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(7263, 1755, 200, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(7315, 1761, 30, 1767, 50, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(7316, 1764, 10, 1763, 50, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(7318, 1762, 100, 1753, 50, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(7319, 1762, 100, 1753, 100, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(7321, 1760, 10, 1768, 30, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(7323, 1753, 50, 0, 0, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(7340, 1761, 30, 1763, 30, 1767, 50);
REPLACE INTO `create_arrow_db` VALUES(7435, 1751, 200, 1772, 300, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(7442, 1761, 50, 1769, 50, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(7445, 1756, 100, 1763, 80, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(7446, 1755, 50, 1754, 50, 1759, 80);
REPLACE INTO `create_arrow_db` VALUES(7447, 1752, 100, 1760, 80, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(7448, 1751, 50, 1757, 50, 1768, 80);
REPLACE INTO `create_arrow_db` VALUES(7450, 1757, 500, 1767, 200, 1765, 100);
REPLACE INTO `create_arrow_db` VALUES(7451, 1752, 300, 1758, 300, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(7510, 1757, 600, 1772, 600, 1764, 600);
REPLACE INTO `create_arrow_db` VALUES(7511, 1767, 300, 1760, 150, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(7561, 1754, 50, 1759, 50, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(7562, 1754, 150, 1759, 400, 1769, 200);
REPLACE INTO `create_arrow_db` VALUES(7566, 1761, 200, 1763, 200, 1767, 100);
REPLACE INTO `create_arrow_db` VALUES(7752, 1767, 50, 1761, 50, 0, 0);
REPLACE INTO `create_arrow_db` VALUES(7753, 1762, 50, 1770, 10, 1761, 20);

--
-- Estrutura da tabela `elemental_db`
--

CREATE TABLE IF NOT EXISTS `elemental_db` (
  `ID` int(11) unsigned NOT NULL DEFAULT '0',
  `Sprite_Name` text NOT NULL,
  `Name` text NOT NULL,
  `LV` smallint(11) NOT NULL DEFAULT '0',
  `HP` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `SP` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Range1` int(11) unsigned NOT NULL DEFAULT '0',
  `ATK1` int(11) unsigned NOT NULL DEFAULT '0',
  `ATK2` int(11) unsigned NOT NULL DEFAULT '0',
  `DEF` smallint(6) unsigned NOT NULL DEFAULT '0',
  `MDEF` smallint(6) unsigned NOT NULL DEFAULT '0',
  `STR` smallint(4) unsigned NOT NULL DEFAULT '0',
  `AGI` smallint(4) unsigned NOT NULL DEFAULT '0',
  `VIT` smallint(4) unsigned NOT NULL DEFAULT '0',
  `INT` smallint(4) unsigned NOT NULL DEFAULT '0',
  `DEX` smallint(4) unsigned NOT NULL DEFAULT '0',
  `LUK` smallint(4) unsigned NOT NULL DEFAULT '0',
  `Range2` int(11) unsigned NOT NULL DEFAULT '0',
  `Range3` int(11) unsigned NOT NULL DEFAULT '0',
  `Scale` int(11) unsigned NOT NULL DEFAULT '0',
  `Race` smallint(4) unsigned NOT NULL DEFAULT '0',
  `Element` smallint(4) unsigned NOT NULL DEFAULT '0',
  `Speed` smallint(4) unsigned NOT NULL DEFAULT '0',
  `aDelay` smallint(4) unsigned NOT NULL DEFAULT '0',
  `aMotion` smallint(4) unsigned NOT NULL DEFAULT '0',
  `dMotion` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

REPLACE INTO `elemental_db` VALUES(2114, 'EL_AGNI_S', 'Agni', 100, 5000, 1, 1, 100, 100, 10, 10, 1, 1, 1, 1, 1, 1, 5, 12, 0, 0, 83, 200, 504, 1020, 360);
REPLACE INTO `elemental_db` VALUES(2115, 'EL_AGNI_M', 'Agni', 100, 7500, 1, 1, 250, 250, 25, 25, 1, 1, 1, 1, 1, 1, 5, 12, 1, 0, 83, 200, 504, 1020, 360);
REPLACE INTO `elemental_db` VALUES(2116, 'EL_AGNI_L', 'Agni', 100, 10000, 1, 1, 500, 500, 50, 50, 1, 1, 1, 1, 1, 1, 5, 12, 2, 0, 83, 200, 504, 1020, 360);
REPLACE INTO `elemental_db` VALUES(2117, 'EL_AQUA_S', 'Varuna', 100, 5000, 1, 1, 100, 100, 10, 10, 1, 1, 1, 1, 1, 1, 5, 12, 0, 0, 81, 200, 504, 1020, 360);
REPLACE INTO `elemental_db` VALUES(2118, 'EL_AQUA_M', 'Varuna', 100, 7500, 1, 1, 250, 250, 25, 25, 1, 1, 1, 1, 1, 1, 5, 12, 1, 0, 81, 200, 504, 1020, 360);
REPLACE INTO `elemental_db` VALUES(2119, 'EL_AQUA_L', 'Varuna', 100, 10000, 1, 1, 500, 500, 50, 50, 1, 1, 1, 1, 1, 1, 5, 12, 2, 0, 81, 200, 504, 1020, 360);
REPLACE INTO `elemental_db` VALUES(2120, 'EL_VENTUS_S', 'Vayu', 100, 5000, 1, 4, 100, 100, 10, 10, 1, 1, 1, 1, 1, 1, 5, 12, 0, 0, 84, 200, 504, 1020, 360);
REPLACE INTO `elemental_db` VALUES(2121, 'EL_VENTUS_M', 'Vayu', 100, 7500, 1, 4, 250, 250, 25, 25, 1, 1, 1, 1, 1, 1, 5, 12, 1, 0, 84, 200, 504, 1020, 360);
REPLACE INTO `elemental_db` VALUES(2122, 'EL_VENTUS_L', 'Vayu', 100, 10000, 1, 4, 500, 500, 50, 50, 1, 1, 1, 1, 1, 1, 5, 12, 2, 0, 84, 200, 504, 1020, 360);
REPLACE INTO `elemental_db` VALUES(2123, 'EL_TERA_S', 'Chandra', 100, 5000, 1, 1, 100, 100, 10, 10, 1, 1, 1, 1, 1, 1, 5, 12, 0, 0, 82, 200, 504, 1020, 360);
REPLACE INTO `elemental_db` VALUES(2124, 'EL_TERA_M', 'Chandra', 100, 7500, 1, 1, 250, 250, 25, 25, 1, 1, 1, 1, 1, 1, 5, 12, 1, 0, 82, 200, 504, 1020, 360);
REPLACE INTO `elemental_db` VALUES(2125, 'EL_TERA_L', 'Chandra', 100, 10000, 1, 1, 500, 500, 50, 50, 1, 1, 1, 1, 1, 1, 5, 12, 2, 0, 82, 200, 504, 1020, 360);

--
-- Estrutura da tabela `elemental_skill_db`
--

CREATE TABLE IF NOT EXISTS `elemental_skill_db` (
  `ElementalID` smallint(4) unsigned NOT NULL DEFAULT '0',
  `SkillID` smallint(4) unsigned NOT NULL DEFAULT '0',
  `SkillLevel` smallint(4) unsigned NOT NULL DEFAULT '0',
  `ReqMode` smallint(4) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

REPLACE INTO `elemental_skill_db` VALUES(2114, 8413, 1, 1);
REPLACE INTO `elemental_skill_db` VALUES(2114, 8401, 1, 2);
REPLACE INTO `elemental_skill_db` VALUES(2114, 8425, 1, 4);
REPLACE INTO `elemental_skill_db` VALUES(2115, 8414, 1, 1);
REPLACE INTO `elemental_skill_db` VALUES(2115, 8402, 1, 2);
REPLACE INTO `elemental_skill_db` VALUES(2115, 8426, 1, 4);
REPLACE INTO `elemental_skill_db` VALUES(2116, 8415, 1, 1);
REPLACE INTO `elemental_skill_db` VALUES(2116, 8403, 1, 2);
REPLACE INTO `elemental_skill_db` VALUES(2116, 8428, 1, 4);
REPLACE INTO `elemental_skill_db` VALUES(2117, 8416, 1, 1);
REPLACE INTO `elemental_skill_db` VALUES(2117, 8404, 1, 2);
REPLACE INTO `elemental_skill_db` VALUES(2117, 8430, 1, 4);
REPLACE INTO `elemental_skill_db` VALUES(2118, 8417, 1, 1);
REPLACE INTO `elemental_skill_db` VALUES(2118, 8405, 1, 2);
REPLACE INTO `elemental_skill_db` VALUES(2118, 8431, 1, 4);
REPLACE INTO `elemental_skill_db` VALUES(2119, 8418, 1, 1);
REPLACE INTO `elemental_skill_db` VALUES(2119, 8406, 1, 2);
REPLACE INTO `elemental_skill_db` VALUES(2119, 8433, 1, 4);
REPLACE INTO `elemental_skill_db` VALUES(2120, 8419, 1, 1);
REPLACE INTO `elemental_skill_db` VALUES(2120, 8407, 1, 2);
REPLACE INTO `elemental_skill_db` VALUES(2120, 8434, 1, 4);
REPLACE INTO `elemental_skill_db` VALUES(2121, 8420, 1, 1);
REPLACE INTO `elemental_skill_db` VALUES(2121, 8408, 1, 2);
REPLACE INTO `elemental_skill_db` VALUES(2121, 8435, 1, 4);
REPLACE INTO `elemental_skill_db` VALUES(2122, 8421, 1, 1);
REPLACE INTO `elemental_skill_db` VALUES(2122, 8409, 1, 2);
REPLACE INTO `elemental_skill_db` VALUES(2122, 8437, 1, 4);
REPLACE INTO `elemental_skill_db` VALUES(2123, 8422, 1, 1);
REPLACE INTO `elemental_skill_db` VALUES(2123, 8410, 1, 2);
REPLACE INTO `elemental_skill_db` VALUES(2123, 8439, 1, 4);
REPLACE INTO `elemental_skill_db` VALUES(2124, 8423, 1, 1);
REPLACE INTO `elemental_skill_db` VALUES(2124, 8411, 1, 2);
REPLACE INTO `elemental_skill_db` VALUES(2124, 8440, 1, 4);
REPLACE INTO `elemental_skill_db` VALUES(2125, 8424, 1, 1);
REPLACE INTO `elemental_skill_db` VALUES(2125, 8412, 1, 2);
REPLACE INTO `elemental_skill_db` VALUES(2125, 8442, 1, 4);

--
-- Estrutura da tabela `guild_skill_tree_db`
--

CREATE TABLE IF NOT EXISTS `guild_skill_tree_db` (
  `SkillID` smallint(4) unsigned NOT NULL DEFAULT '0',
  `MaxLv` smallint(4) unsigned NOT NULL DEFAULT '0',
  `PrereqSkillID1` smallint(4) unsigned NOT NULL DEFAULT '0',
  `PrereqSkillLv1` smallint(4) unsigned NOT NULL DEFAULT '0',
  `PrereqSkillID2` smallint(4) unsigned NOT NULL DEFAULT '0',
  `PrereqSkillLv2` smallint(4) unsigned NOT NULL DEFAULT '0',
  `PrereqSkillID3` smallint(4) unsigned NOT NULL DEFAULT '0',
  `PrereqSkillLv3` smallint(4) unsigned NOT NULL DEFAULT '0',
  `PrereqSkillID4` smallint(4) unsigned NOT NULL DEFAULT '0',
  `PrereqSkillLv4` smallint(4) unsigned NOT NULL DEFAULT '0',
  `PrereqSkillID5` smallint(4) unsigned NOT NULL DEFAULT '0',
  `PrereqSkillLv5` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`SkillID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

REPLACE INTO `guild_skill_tree_db` VALUES(10000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `guild_skill_tree_db` VALUES(10001, 1, 10000, 1, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `guild_skill_tree_db` VALUES(10002, 1, 10000, 1, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `guild_skill_tree_db` VALUES(10003, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `guild_skill_tree_db` VALUES(10004, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `guild_skill_tree_db` VALUES(10005, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `guild_skill_tree_db` VALUES(10006, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `guild_skill_tree_db` VALUES(10007, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `guild_skill_tree_db` VALUES(10008, 5, 10007, 1, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `guild_skill_tree_db` VALUES(10009, 5, 10006, 1, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `guild_skill_tree_db` VALUES(10010, 1, 10000, 1, 10004, 2, 0, 0, 0, 0, 0, 0);
REPLACE INTO `guild_skill_tree_db` VALUES(10011, 3, 10000, 1, 10004, 5, 10010, 1, 0, 0, 0, 0);
REPLACE INTO `guild_skill_tree_db` VALUES(10012, 1, 10011, 1, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `guild_skill_tree_db` VALUES(10013, 1, 10000, 1, 10002, 1, 10004, 5, 10010, 1, 10011, 1);
REPLACE INTO `guild_skill_tree_db` VALUES(10014, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

--
-- Estrutura da tabela `homunculus_db`
--

CREATE TABLE IF NOT EXISTS `homunculus_db` (
  `Class` smallint(4) unsigned NOT NULL DEFAULT '0',
  `EvoClass` smallint(4) unsigned NOT NULL DEFAULT '0',
  `Name` text NOT NULL,
  `FoodID` smallint(4) unsigned NOT NULL DEFAULT '0',
  `HungryDelay` int(11) unsigned NOT NULL DEFAULT '0',
  `BaseSize` smallint(4) unsigned NOT NULL DEFAULT '0',
  `EvoSize` smallint(4) unsigned NOT NULL DEFAULT '0',
  `Race` smallint(4) unsigned NOT NULL DEFAULT '0',
  `Element` smallint(4) unsigned NOT NULL DEFAULT '0',
  `bASPD` smallint(4) unsigned NOT NULL DEFAULT '0',
  `bHp` int(11) unsigned NOT NULL DEFAULT '0',
  `bSp` int(11) unsigned NOT NULL DEFAULT '0',
  `bSTR` smallint(4) unsigned NOT NULL DEFAULT '0',
  `bAGI` smallint(4) unsigned NOT NULL DEFAULT '0',
  `bVIT` smallint(4) unsigned NOT NULL DEFAULT '0',
  `bINT` smallint(4) unsigned NOT NULL DEFAULT '0',
  `bDEX` smallint(4) unsigned NOT NULL DEFAULT '0',
  `bLUK` smallint(4) unsigned NOT NULL DEFAULT '0',
  `gnHP` int(11) unsigned NOT NULL DEFAULT '0',
  `gxHP` int(11) unsigned NOT NULL DEFAULT '0',
  `gnSP` int(11) unsigned NOT NULL DEFAULT '0',
  `gxSP` int(11) unsigned NOT NULL DEFAULT '0',
  `gnSTR` smallint(4) unsigned NOT NULL DEFAULT '0',
  `gxSTR` smallint(4) unsigned NOT NULL DEFAULT '0',
  `gnAGI` smallint(4) unsigned NOT NULL DEFAULT '0',
  `gxAGI` smallint(4) unsigned NOT NULL DEFAULT '0',
  `gnVIT` smallint(4) unsigned NOT NULL DEFAULT '0',
  `gxVIT` smallint(4) unsigned NOT NULL DEFAULT '0',
  `gnINT` smallint(4) unsigned NOT NULL DEFAULT '0',
  `gxINT` smallint(4) unsigned NOT NULL DEFAULT '0',
  `gnDEX` smallint(4) unsigned NOT NULL DEFAULT '0',
  `gxDEX` smallint(4) unsigned NOT NULL DEFAULT '0',
  `gnLUK` smallint(4) unsigned NOT NULL DEFAULT '0',
  `gxLUK` smallint(4) unsigned NOT NULL DEFAULT '0',
  `enHP` int(11) unsigned NOT NULL DEFAULT '0',
  `exHP` int(11) unsigned NOT NULL DEFAULT '0',
  `enSP` int(11) unsigned NOT NULL DEFAULT '0',
  `exSP` int(11) unsigned NOT NULL DEFAULT '0',
  `enSTR` smallint(4) unsigned NOT NULL DEFAULT '0',
  `exSTR` smallint(4) unsigned NOT NULL DEFAULT '0',
  `enAGI` smallint(4) unsigned NOT NULL DEFAULT '0',
  `exAGI` smallint(4) unsigned NOT NULL DEFAULT '0',
  `enVIT` smallint(4) unsigned NOT NULL DEFAULT '0',
  `exVIT` smallint(4) unsigned NOT NULL DEFAULT '0',
  `enINT` smallint(4) unsigned NOT NULL DEFAULT '0',
  `exINT` smallint(4) unsigned NOT NULL DEFAULT '0',
  `enDEX` smallint(4) unsigned NOT NULL DEFAULT '0',
  `exDEX` smallint(4) unsigned NOT NULL DEFAULT '0',
  `enLUK` smallint(4) unsigned NOT NULL DEFAULT '0',
  `exLUK` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`Class`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

REPLACE INTO `homunculus_db` VALUES(6001, 6009, 'Lif', 537, 60000, 0, 1, 7, 0, 700, 150, 40, 17, 20, 15, 35, 24, 12, 60, 100, 4, 9, 5, 19, 5, 19, 5, 19, 4, 20, 6, 20, 6, 20, 1, 10, 10, 20, 1, 5, 1, 4, 1, 5, 4, 10, 1, 10, 1, 3);
REPLACE INTO `homunculus_db` VALUES(6002, 6010, 'Amistr', 912, 60000, 0, 1, 2, 0, 700, 320, 10, 20, 17, 35, 11, 24, 12, 80, 130, 1, 4, 8, 20, 4, 20, 4, 20, 1, 10, 3, 19, 3, 19, 10, 20, 1, 10, 1, 10, 1, 5, 4, 10, 1, 3, 1, 4, 1, 5);
REPLACE INTO `homunculus_db` VALUES(6003, 6011, 'Filir', 910, 60000, 0, 1, 2, 0, 700, 90, 25, 29, 35, 9, 8, 30, 9, 45, 75, 3, 6, 4, 20, 8, 20, 1, 10, 3, 19, 4, 20, 3, 19, 5, 15, 5, 15, 4, 10, 1, 10, 1, 3, 1, 4, 1, 5, 1, 5);
REPLACE INTO `homunculus_db` VALUES(6004, 6012, 'Vanilmirth', 911, 60000, 0, 1, 0, 0, 700, 80, 11, 11, 11, 11, 11, 11, 11, 30, 150, 0, 7, 1, 30, 1, 30, 1, 30, 1, 30, 1, 30, 1, 30, 1, 30, 1, 30, 1, 10, 1, 10, 1, 10, 1, 10, 1, 10, 1, 10);
REPLACE INTO `homunculus_db` VALUES(6005, 6013, 'Lif', 537, 60000, 0, 1, 7, 0, 700, 150, 40, 17, 20, 15, 35, 24, 12, 60, 100, 4, 9, 5, 19, 5, 19, 5, 19, 4, 20, 6, 20, 6, 20, 1, 10, 10, 20, 1, 5, 1, 4, 1, 5, 4, 10, 1, 10, 1, 3);
REPLACE INTO `homunculus_db` VALUES(6006, 6014, 'Amistr', 912, 60000, 0, 1, 2, 0, 700, 320, 10, 20, 17, 35, 11, 24, 12, 80, 130, 1, 4, 8, 20, 4, 20, 4, 20, 1, 10, 3, 19, 3, 19, 10, 20, 1, 10, 1, 10, 1, 5, 4, 10, 1, 3, 1, 4, 1, 5);
REPLACE INTO `homunculus_db` VALUES(6007, 6015, 'Filir', 910, 60000, 0, 1, 2, 0, 700, 90, 25, 29, 35, 9, 8, 30, 9, 45, 75, 3, 6, 4, 20, 8, 20, 1, 10, 3, 19, 4, 20, 3, 19, 5, 15, 5, 15, 4, 10, 1, 10, 1, 3, 1, 4, 1, 5, 1, 5);
REPLACE INTO `homunculus_db` VALUES(6008, 6016, 'Vanilmirth', 911, 60000, 0, 1, 0, 0, 700, 80, 11, 11, 11, 11, 11, 11, 11, 30, 150, 0, 7, 1, 30, 1, 30, 1, 30, 1, 30, 1, 30, 1, 30, 1, 30, 1, 30, 1, 10, 1, 10, 1, 10, 1, 10, 1, 10, 1, 10);
REPLACE INTO `homunculus_db` VALUES(6048, 6048, 'Eira', 6098, 60000, 1, 1, 7, 0, 700, 150, 40, 17, 20, 15, 35, 24, 12, 60, 100, 4, 9, 5, 19, 5, 19, 5, 19, 4, 20, 6, 20, 6, 20, 1, 10, 10, 20, 1, 5, 1, 4, 1, 5, 4, 10, 1, 10, 1, 3);
REPLACE INTO `homunculus_db` VALUES(6049, 6049, 'Bayeri', 6112, 60000, 1, 1, 2, 0, 700, 320, 10, 20, 17, 35, 11, 24, 12, 80, 130, 1, 4, 8, 20, 4, 20, 4, 20, 1, 10, 3, 19, 3, 19, 10, 20, 1, 10, 1, 10, 1, 5, 4, 10, 1, 3, 1, 4, 1, 5);
REPLACE INTO `homunculus_db` VALUES(6050, 6050, 'Sera', 6108, 60000, 1, 1, 4, 0, 700, 90, 25, 29, 35, 9, 8, 30, 9, 45, 75, 3, 6, 4, 20, 8, 20, 1, 10, 3, 19, 4, 20, 3, 19, 5, 15, 5, 15, 4, 10, 1, 10, 1, 3, 1, 4, 1, 5, 1, 5);
REPLACE INTO `homunculus_db` VALUES(6051, 6051, 'Dieter', 6104, 60000, 1, 1, 0, 0, 700, 80, 11, 11, 11, 11, 11, 11, 11, 30, 150, 0, 7, 1, 30, 1, 30, 1, 30, 1, 30, 1, 30, 1, 30, 1, 30, 1, 30, 1, 10, 1, 10, 1, 10, 1, 10, 1, 10, 1, 10);
REPLACE INTO `homunculus_db` VALUES(6052, 6052, 'Eleanor', 6115, 60000, 1, 1, 2, 0, 700, 320, 10, 20, 17, 35, 11, 24, 12, 80, 130, 1, 4, 8, 20, 4, 20, 4, 20, 1, 10, 3, 19, 3, 19, 10, 20, 1, 10, 1, 10, 1, 5, 4, 10, 1, 3, 1, 4, 1, 5);

--
-- Estrutura da tabela `homun_skill_tree_db`
--

CREATE TABLE IF NOT EXISTS `homun_skill_tree_db` (
  `Class` smallint(6) unsigned NOT NULL DEFAULT '0',
  `SkillID` smallint(6) unsigned NOT NULL DEFAULT '0',
  `MaxLv` smallint(4) unsigned NOT NULL DEFAULT '0',
  `PrereqSkillID1` smallint(4) unsigned NOT NULL DEFAULT '0',
  `PrereqSkillLv1` smallint(4) unsigned NOT NULL DEFAULT '0',
  `PrereqSkillID2` smallint(4) unsigned NOT NULL DEFAULT '0',
  `PrereqSkillLv2` smallint(4) unsigned NOT NULL DEFAULT '0',
  `PrereqSkillID3` smallint(4) unsigned NOT NULL DEFAULT '0',
  `PrereqSkillLv3` smallint(4) unsigned NOT NULL DEFAULT '0',
  `PrereqSkillID4` smallint(4) unsigned NOT NULL DEFAULT '0',
  `PrereqSkillLv4` smallint(4) unsigned NOT NULL DEFAULT '0',
  `PrereqSkillID5` smallint(4) unsigned NOT NULL DEFAULT '0',
  `PrereqSkillLv5` smallint(4) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

REPLACE INTO `homun_skill_tree_db` VALUES(6001, 8001, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6001, 8002, 5, 8001, 3, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6001, 8003, 5, 8001, 5, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6002, 8005, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6002, 8006, 5, 8005, 5, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6002, 8007, 5, 8006, 3, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6003, 8009, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6003, 8010, 5, 8009, 3, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6003, 8011, 5, 8010, 3, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6004, 8013, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6004, 8014, 5, 8013, 3, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6004, 8015, 5, 8013, 5, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6005, 8001, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6005, 8002, 5, 8001, 3, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6005, 8003, 5, 8001, 5, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6006, 8005, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6006, 8006, 5, 8005, 5, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6006, 8007, 5, 8006, 3, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6007, 8009, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6007, 8010, 5, 8009, 3, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6007, 8011, 5, 8010, 3, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6008, 8013, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6008, 8014, 5, 8013, 3, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6008, 8015, 5, 8013, 5, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6009, 8001, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6009, 8002, 5, 8001, 3, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6009, 8003, 5, 8001, 5, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6009, 8004, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6010, 8005, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6010, 8006, 5, 8005, 5, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6010, 8007, 5, 8006, 3, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6010, 8008, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6011, 8009, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6011, 8010, 5, 8009, 3, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6011, 8011, 5, 8010, 3, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6011, 8012, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6012, 8013, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6012, 8014, 5, 8013, 3, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6012, 8015, 5, 8013, 5, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6012, 8016, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6013, 8001, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6013, 8002, 5, 8001, 3, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6013, 8003, 5, 8001, 5, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6013, 8004, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6014, 8005, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6014, 8006, 5, 8005, 5, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6014, 8007, 5, 8006, 3, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6014, 8008, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6015, 8009, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6015, 8010, 5, 8009, 3, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6015, 8011, 5, 8010, 3, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6015, 8012, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6016, 8013, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6016, 8014, 5, 8013, 3, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6016, 8015, 5, 8013, 5, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6016, 8016, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6048, 8022, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6048, 8023, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6048, 8024, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6048, 8025, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6048, 8026, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6049, 8031, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6049, 8032, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6049, 8033, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6050, 8018, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6050, 8019, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6050, 8020, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6050, 8021, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6051, 8039, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6051, 8040, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6051, 8041, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6051, 8042, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6051, 8043, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6052, 8027, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6052, 8028, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6052, 8029, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6052, 8030, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6052, 8034, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6052, 8035, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6052, 8036, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6052, 8037, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `homun_skill_tree_db` VALUES(6052, 8038, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

--
-- Estrutura da tabela `item_avail_db`
--

CREATE TABLE IF NOT EXISTS `item_avail_db` (
  `ItemID` int(6) unsigned NOT NULL DEFAULT '0',
  `SpriteID` smallint(6) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ItemID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

REPLACE INTO `item_avail_db` VALUES(2240, 2241);

--
-- Estrutura da tabela `item_delay_db`
--

CREATE TABLE IF NOT EXISTS `item_delay_db` (
  `ItemID` int(6) unsigned NOT NULL DEFAULT '0',
  `Delay` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ItemID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

REPLACE INTO `item_delay_db` VALUES(12208, 60000);
REPLACE INTO `item_delay_db` VALUES(12210, 60000);
REPLACE INTO `item_delay_db` VALUES(14538, 300000);
REPLACE INTO `item_delay_db` VALUES(14586, 180000);
REPLACE INTO `item_delay_db` VALUES(607, 5000);
REPLACE INTO `item_delay_db` VALUES(608, 3000);
REPLACE INTO `item_delay_db` VALUES(11522, 1000);
REPLACE INTO `item_delay_db` VALUES(11523, 2000);
REPLACE INTO `item_delay_db` VALUES(11524, 3000);
REPLACE INTO `item_delay_db` VALUES(11525, 5000);

--
-- Estrutura da tabela `item_findingore_db`
--

CREATE TABLE IF NOT EXISTS `item_findingore_db` (
  `GroupID` smallint(6) unsigned NOT NULL DEFAULT '0',
  `ItemID` smallint(6) unsigned NOT NULL DEFAULT '0',
  `Rate` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

REPLACE INTO `item_findingore_db` VALUES(6, 714, 3);
REPLACE INTO `item_findingore_db` VALUES(6, 756, 20);
REPLACE INTO `item_findingore_db` VALUES(6, 757, 20);
REPLACE INTO `item_findingore_db` VALUES(6, 969, 2);
REPLACE INTO `item_findingore_db` VALUES(6, 984, 10);
REPLACE INTO `item_findingore_db` VALUES(6, 985, 10);
REPLACE INTO `item_findingore_db` VALUES(6, 990, 30);
REPLACE INTO `item_findingore_db` VALUES(6, 991, 30);
REPLACE INTO `item_findingore_db` VALUES(6, 992, 30);
REPLACE INTO `item_findingore_db` VALUES(6, 993, 30);
REPLACE INTO `item_findingore_db` VALUES(6, 994, 15);
REPLACE INTO `item_findingore_db` VALUES(6, 995, 15);
REPLACE INTO `item_findingore_db` VALUES(6, 996, 15);
REPLACE INTO `item_findingore_db` VALUES(6, 997, 15);
REPLACE INTO `item_findingore_db` VALUES(6, 998, 80);
REPLACE INTO `item_findingore_db` VALUES(6, 999, 50);
REPLACE INTO `item_findingore_db` VALUES(6, 1002, 100);
REPLACE INTO `item_findingore_db` VALUES(6, 1003, 60);
REPLACE INTO `item_findingore_db` VALUES(6, 1010, 95);
REPLACE INTO `item_findingore_db` VALUES(6, 1011, 55);

--
-- Estrutura da tabela `item_stack_db`
--

CREATE TABLE IF NOT EXISTS `item_stack_db` (
  `ItemID` int(6) unsigned NOT NULL DEFAULT '0',
  `Amount` int(11) unsigned NOT NULL DEFAULT '0',
  `Type` smallint(6) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ItemID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

REPLACE INTO `item_stack_db` VALUES(12725, 20, 20);
REPLACE INTO `item_stack_db` VALUES(12726, 20, 20);
REPLACE INTO `item_stack_db` VALUES(12727, 20, 20);
REPLACE INTO `item_stack_db` VALUES(12728, 20, 20);
REPLACE INTO `item_stack_db` VALUES(12729, 20, 20);
REPLACE INTO `item_stack_db` VALUES(12730, 20, 20);
REPLACE INTO `item_stack_db` VALUES(12731, 20, 20);
REPLACE INTO `item_stack_db` VALUES(12732, 20, 20);
REPLACE INTO `item_stack_db` VALUES(12733, 20, 20);
REPLACE INTO `item_stack_db` VALUES(12333, 3, 3);

--
-- Estrutura da tabela `magicmushroom_db`
--

CREATE TABLE IF NOT EXISTS `magicmushroom_db` (
  `SkillID` int(6) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`SkillID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

REPLACE INTO `magicmushroom_db` VALUES(7);
REPLACE INTO `magicmushroom_db` VALUES(8);
REPLACE INTO `magicmushroom_db` VALUES(10);
REPLACE INTO `magicmushroom_db` VALUES(24);
REPLACE INTO `magicmushroom_db` VALUES(32);
REPLACE INTO `magicmushroom_db` VALUES(33);
REPLACE INTO `magicmushroom_db` VALUES(45);
REPLACE INTO `magicmushroom_db` VALUES(61);
REPLACE INTO `magicmushroom_db` VALUES(74);
REPLACE INTO `magicmushroom_db` VALUES(110);
REPLACE INTO `magicmushroom_db` VALUES(114);
REPLACE INTO `magicmushroom_db` VALUES(142);
REPLACE INTO `magicmushroom_db` VALUES(150);
REPLACE INTO `magicmushroom_db` VALUES(151);
REPLACE INTO `magicmushroom_db` VALUES(157);
REPLACE INTO `magicmushroom_db` VALUES(249);
REPLACE INTO `magicmushroom_db` VALUES(256);
REPLACE INTO `magicmushroom_db` VALUES(261);
REPLACE INTO `magicmushroom_db` VALUES(318);
REPLACE INTO `magicmushroom_db` VALUES(500);
REPLACE INTO `magicmushroom_db` VALUES(527);
REPLACE INTO `magicmushroom_db` VALUES(531);

--
-- Estrutura da tabela `mercenary_db`
--

CREATE TABLE IF NOT EXISTS `mercenary_db` (
  `ID` int(11) unsigned NOT NULL DEFAULT '0',
  `Sprite_Name` text NOT NULL,
  `Name` text NOT NULL,
  `LV` smallint(6) unsigned NOT NULL DEFAULT '0',
  `HP` int(11) unsigned NOT NULL DEFAULT '0',
  `SP` int(11) unsigned NOT NULL DEFAULT '0',
  `Range1` int(6) unsigned NOT NULL DEFAULT '0',
  `ATK1` int(11) unsigned NOT NULL DEFAULT '0',
  `ATK2` int(11) unsigned NOT NULL DEFAULT '0',
  `DEF` int(6) unsigned NOT NULL DEFAULT '0',
  `MDEF` int(6) unsigned NOT NULL DEFAULT '0',
  `STR` smallint(6) unsigned NOT NULL DEFAULT '0',
  `AGI` smallint(6) unsigned NOT NULL DEFAULT '0',
  `VIT` smallint(6) unsigned NOT NULL DEFAULT '0',
  `INT` smallint(6) unsigned NOT NULL DEFAULT '0',
  `DEX` smallint(6) unsigned NOT NULL DEFAULT '0',
  `LUK` smallint(6) unsigned NOT NULL DEFAULT '0',
  `Range2` smallint(6) unsigned NOT NULL DEFAULT '0',
  `Range3` smallint(6) unsigned NOT NULL DEFAULT '0',
  `Scale` smallint(6) unsigned NOT NULL DEFAULT '0',
  `Race` smallint(6) unsigned NOT NULL DEFAULT '0',
  `Element` smallint(6) unsigned NOT NULL DEFAULT '0',
  `Speed` smallint(6) unsigned NOT NULL DEFAULT '0',
  `aDelay` smallint(6) unsigned NOT NULL DEFAULT '0',
  `aMotion` smallint(6) unsigned NOT NULL DEFAULT '0',
  `dMotion` smallint(6) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

REPLACE INTO `mercenary_db` VALUES(1191, 'MIMIC', 'Mímico', 51, 6120, 187, 2, 150, 900, 10, 40, 44, 121, 1, 60, 75, 110, 10, 12, 1, 0, 60, 100, 972, 500, 288);
REPLACE INTO `mercenary_db` VALUES(1506, 'DISGUISE', 'Mascarado', 55, 7543, 180, 2, 279, 546, 18, 29, 0, 72, 45, 35, 48, 65, 10, 12, 1, 6, 82, 147, 516, 768, 384);
REPLACE INTO `mercenary_db` VALUES(1275, 'ALICE', 'Alice', 62, 10000, 221, 2, 550, 700, 5, 5, 64, 64, 42, 85, 100, 130, 10, 12, 1, 7, 60, 200, 502, 2304, 480);
REPLACE INTO `mercenary_db` VALUES(1965, 'M_WILD_ROSE', 'Rosa Selvagem', 38, 2980, 130, 2, 315, 360, 0, 15, 65, 85, 15, 35, 65, 80, 10, 12, 0, 2, 24, 100, 964, 864, 288);
REPLACE INTO `mercenary_db` VALUES(1966, 'M_DOPPELGANGER', 'Doppelganger', 72, 65535, 200, 2, 1340, 1590, 60, 35, 88, 90, 30, 35, 125, 65, 10, 12, 1, 6, 67, 100, 480, 480, 288);
REPLACE INTO `mercenary_db` VALUES(1967, 'M_YGNIZEM', 'Egnigem Cenia', 58, 11200, 320, 2, 823, 1212, 35, 8, 60, 35, 52, 18, 79, 20, 10, 12, 1, 7, 43, 145, 576, 432, 288);
REPLACE INTO `mercenary_db` VALUES(2000, 'M_GAMEMASTER', '[GM] Game Master', 50, 7000, 250, 2, 100, 50, 6, 17, 1, 109, 1, 60, 215, 111, 10, 0, 0, 7, 20, 150, 450, 432, 300);
REPLACE INTO `mercenary_db` VALUES(2001, 'F_GAMEMASTER', '[GM] Game Master', 50, 7000, 250, 2, 100, 50, 6, 17, 1, 109, 1, 60, 215, 111, 10, 0, 0, 7, 20, 150, 450, 432, 300);
REPLACE INTO `mercenary_db` VALUES(2034, 'M_DESERT_WOLF_B', 'Filhote de Lobo do Deserto', 9, 164, 15, 1, 500, 600, 0, 0, 1, 9, 9, 5, 40, 40, 10, 12, 0, 2, 23, 100, 1600, 900, 240);
REPLACE INTO `mercenary_db` VALUES(2037, 'VALKYRIE_A', 'Valquíria Randgris', 90, 5000, 15, 1, 10, 160, 10, 20, 1, 20, 40, 0, 20, 20, 10, 12, 1, 8, 66, 100, 576, 576, 480);
REPLACE INTO `mercenary_db` VALUES(2038, 'VALKYRIE_B', 'Valquíria Randgris', 90, 10000, 15, 1, 300, 450, 10, 40, 1, 20, 80, 0, 80, 20, 10, 12, 1, 8, 66, 100, 576, 576, 480);
REPLACE INTO `mercenary_db` VALUES(2058, 'M_MIMIC', 'Mimíco', 51, 6120, 182, 1, 800, 950, 10, 40, 44, 121, 1, 60, 75, 110, 10, 12, 1, 0, 60, 100, 972, 500, 288);
REPLACE INTO `mercenary_db` VALUES(2059, 'M_DISGUISE', 'Mascarado', 55, 7543, 180, 2, 526, 693, 18, 29, 0, 72, 45, 35, 48, 65, 10, 12, 1, 6, 82, 147, 516, 768, 384);
REPLACE INTO `mercenary_db` VALUES(2060, 'M_ALICE', 'Alice', 62, 10000, 221, 1, 700, 850, 5, 5, 64, 64, 42, 85, 100, 130, 10, 12, 1, 7, 60, 200, 502, 1999, 480);
REPLACE INTO `mercenary_db` VALUES(6017, 'MER_ARCHER01', 'Mina', 20, 256, 200, 10, 170, 85, 7, 5, 1, 16, 5, 1, 28, 8, 10, 0, 0, 7, 20, 150, 700, 432, 300);
REPLACE INTO `mercenary_db` VALUES(6018, 'MER_ARCHER02', 'Dororu', 30, 457, 70, 10, 228, 114, 11, 7, 1, 18, 8, 1, 40, 11, 10, 0, 0, 7, 20, 150, 700, 432, 300);
REPLACE INTO `mercenary_db` VALUES(6019, 'MER_ARCHER03', 'Nami', 40, 732, 93, 10, 260, 130, 15, 9, 3, 21, 12, 4, 52, 17, 10, 0, 0, 7, 20, 150, 700, 432, 300);
REPLACE INTO `mercenary_db` VALUES(6020, 'MER_ARCHER04', 'Elfin', 50, 1092, 116, 10, 310, 155, 18, 11, 5, 33, 17, 6, 60, 23, 10, 0, 0, 7, 20, 150, 575, 432, 300);
REPLACE INTO `mercenary_db` VALUES(6021, 'MER_ARCHER05', 'Clara', 60, 2212, 280, 10, 360, 180, 20, 13, 5, 41, 17, 12, 75, 30, 10, 0, 0, 7, 20, 150, 575, 432, 300);
REPLACE INTO `mercenary_db` VALUES(6022, 'MER_ARCHER06', 'Dali', 70, 3098, 353, 10, 424, 212, 21, 15, 11, 46, 24, 22, 83, 37, 10, 0, 0, 7, 20, 150, 575, 432, 300);
REPLACE INTO `mercenary_db` VALUES(6023, 'MER_ARCHER07', 'Karaya', 80, 4051, 415, 10, 468, 234, 22, 16, 14, 55, 27, 26, 91, 44, 10, 0, 0, 7, 20, 150, 450, 432, 300);
REPLACE INTO `mercenary_db` VALUES(6024, 'MER_ARCHER08', 'Hiyori', 90, 5039, 469, 10, 482, 241, 24, 18, 19, 65, 27, 27, 103, 49, 10, 0, 0, 7, 20, 150, 450, 432, 300);
REPLACE INTO `mercenary_db` VALUES(6025, 'MER_ARCHER09', 'Kero', 95, 5572, 499, 10, 500, 250, 25, 20, 20, 71, 27, 28, 110, 51, 10, 0, 0, 7, 20, 150, 450, 432, 300);
REPLACE INTO `mercenary_db` VALUES(6026, 'MER_ARCHER10', 'Sukye', 99, 7381, 642, 10, 816, 308, 49, 49, 21, 83, 27, 28, 123, 52, 10, 0, 0, 7, 20, 150, 450, 432, 300);
REPLACE INTO `mercenary_db` VALUES(6027, 'MER_LANCER01', 'David', 22, 2071, 100, 2, 168, 84, 30, 1, 27, 1, 4, 1, 30, 2, 10, 0, 0, 7, 20, 150, 700, 432, 300);
REPLACE INTO `mercenary_db` VALUES(6028, 'MER_LANCER02', 'Ellen', 34, 2523, 131, 2, 208, 104, 33, 1, 37, 1, 4, 1, 37, 4, 10, 0, 0, 7, 20, 150, 700, 432, 300);
REPLACE INTO `mercenary_db` VALUES(6029, 'MER_LANCER03', 'Luise', 41, 3397, 161, 2, 248, 124, 36, 5, 45, 1, 22, 1, 40, 6, 10, 0, 0, 7, 20, 150, 700, 432, 300);
REPLACE INTO `mercenary_db` VALUES(6030, 'MER_LANCER04', 'Frank', 55, 4580, 191, 2, 300, 150, 39, 5, 55, 2, 35, 1, 50, 8, 10, 0, 0, 7, 20, 150, 575, 432, 300);
REPLACE INTO `mercenary_db` VALUES(6031, 'MER_LANCER05', 'Ryan', 60, 5899, 221, 2, 350, 160, 42, 10, 65, 2, 39, 1, 60, 10, 10, 0, 0, 7, 20, 150, 575, 432, 300);
REPLACE INTO `mercenary_db` VALUES(6032, 'MER_LANCER06', 'Paolo', 72, 7874, 252, 2, 370, 185, 46, 10, 75, 3, 15, 77, 61, 12, 10, 0, 0, 7, 20, 150, 575, 432, 300);
REPLACE INTO `mercenary_db` VALUES(6033, 'MER_LANCER07', 'Jens', 81, 10260, 330, 2, 380, 190, 50, 15, 85, 3, 63, 20, 61, 14, 10, 0, 0, 7, 20, 150, 450, 432, 300);
REPLACE INTO `mercenary_db` VALUES(6034, 'MER_LANCER08', 'Thierry', 90, 13167, 366, 2, 400, 200, 55, 20, 95, 20, 74, 20, 63, 16, 10, 0, 0, 7, 20, 150, 450, 432, 300);
REPLACE INTO `mercenary_db` VALUES(6035, 'MER_LANCER09', 'Steven', 95, 14648, 398, 2, 440, 220, 60, 25, 100, 25, 77, 25, 63, 18, 10, 0, 0, 7, 20, 150, 450, 432, 300);
REPLACE INTO `mercenary_db` VALUES(6036, 'MER_LANCER10', 'Wayne', 99, 18000, 413, 2, 700, 250, 70, 30, 120, 30, 90, 30, 70, 30, 10, 0, 0, 7, 20, 150, 450, 432, 300);
REPLACE INTO `mercenary_db` VALUES(6037, 'MER_SWORDMAN01', 'Rodin', 20, 502, 70, 2, 174, 87, 26, 0, 21, 27, 5, 1, 30, 3, 10, 0, 0, 7, 20, 150, 700, 432, 300);
REPLACE INTO `mercenary_db` VALUES(6038, 'MER_SWORDMAN02', 'Lancer', 30, 979, 99, 2, 258, 129, 31, 0, 26, 38, 6, 1, 35, 3, 10, 0, 0, 7, 20, 150, 700, 432, 300);
REPLACE INTO `mercenary_db` VALUES(6039, 'MER_SWORDMAN03', 'Nathan', 40, 1555, 134, 2, 326, 163, 36, 3, 31, 45, 7, 6, 40, 6, 10, 0, 0, 7, 20, 150, 700, 432, 300);
REPLACE INTO `mercenary_db` VALUES(6040, 'MER_SWORDMAN04', 'Roan', 50, 2397, 162, 2, 382, 191, 39, 5, 37, 59, 8, 6, 40, 6, 10, 0, 0, 7, 20, 150, 575, 432, 300);
REPLACE INTO `mercenary_db` VALUES(6041, 'MER_SWORDMAN05', 'Orizaro', 60, 3387, 195, 2, 406, 203, 42, 7, 48, 68, 9, 6, 45, 9, 10, 0, 0, 7, 20, 150, 575, 432, 300);
REPLACE INTO `mercenary_db` VALUES(6042, 'MER_SWORDMAN06', 'Thyla', 70, 4495, 241, 2, 436, 218, 45, 12, 53, 79, 10, 12, 50, 9, 10, 0, 0, 7, 20, 150, 575, 432, 300);
REPLACE INTO `mercenary_db` VALUES(6043, 'MER_SWORDMAN07', 'Ben', 80, 5889, 279, 2, 468, 234, 47, 15, 59, 88, 11, 12, 55, 12, 10, 0, 0, 7, 20, 150, 450, 432, 300);
REPLACE INTO `mercenary_db` VALUES(6044, 'MER_SWORDMAN08', 'Pinaka', 90, 7520, 325, 2, 500, 250, 49, 18, 70, 95, 12, 18, 60, 15, 10, 0, 0, 7, 20, 150, 450, 432, 300);
REPLACE INTO `mercenary_db` VALUES(6045, 'MER_SWORDMAN09', 'Kuhlmann', 95, 9052, 348, 2, 524, 262, 51, 22, 80, 95, 18, 18, 60, 15, 10, 0, 0, 7, 20, 150, 450, 432, 300);
REPLACE INTO `mercenary_db` VALUES(6046, 'MER_SWORDMAN10', 'Roux', 99, 12355, 451, 2, 760, 280, 64, 30, 99, 105, 30, 30, 60, 30, 10, 0, 0, 7, 20, 150, 450, 432, 300);

--
-- Estrutura da tabela `mercenary_skill_db`
--

CREATE TABLE IF NOT EXISTS `mercenary_skill_db` (
  `MercenaryID` int(6) unsigned NOT NULL DEFAULT '0',
  `SkillID` smallint(6) unsigned NOT NULL DEFAULT '0',
  `SkillLevel` smallint(6) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

REPLACE INTO `mercenary_skill_db` VALUES(6017, 8207, 2);
REPLACE INTO `mercenary_skill_db` VALUES(6017, 8233, 1);
REPLACE INTO `mercenary_skill_db` VALUES(6018, 8208, 2);
REPLACE INTO `mercenary_skill_db` VALUES(6018, 8224, 1);
REPLACE INTO `mercenary_skill_db` VALUES(6019, 8214, 1);
REPLACE INTO `mercenary_skill_db` VALUES(6019, 8223, 1);
REPLACE INTO `mercenary_skill_db` VALUES(6020, 8237, 1);
REPLACE INTO `mercenary_skill_db` VALUES(6020, 8222, 1);
REPLACE INTO `mercenary_skill_db` VALUES(6020, 8227, 1);
REPLACE INTO `mercenary_skill_db` VALUES(6021, 8207, 5);
REPLACE INTO `mercenary_skill_db` VALUES(6021, 8232, 1);
REPLACE INTO `mercenary_skill_db` VALUES(6021, 8213, 1);
REPLACE INTO `mercenary_skill_db` VALUES(6022, 8207, 7);
REPLACE INTO `mercenary_skill_db` VALUES(6022, 8209, 3);
REPLACE INTO `mercenary_skill_db` VALUES(6022, 8234, 1);
REPLACE INTO `mercenary_skill_db` VALUES(6023, 8208, 10);
REPLACE INTO `mercenary_skill_db` VALUES(6023, 8230, 1);
REPLACE INTO `mercenary_skill_db` VALUES(6023, 8212, 2);
REPLACE INTO `mercenary_skill_db` VALUES(6024, 8223, 2);
REPLACE INTO `mercenary_skill_db` VALUES(6024, 8232, 3);
REPLACE INTO `mercenary_skill_db` VALUES(6024, 8211, 3);
REPLACE INTO `mercenary_skill_db` VALUES(6025, 8207, 10);
REPLACE INTO `mercenary_skill_db` VALUES(6025, 8214, 1);
REPLACE INTO `mercenary_skill_db` VALUES(6025, 8210, 5);
REPLACE INTO `mercenary_skill_db` VALUES(6026, 8214, 1);
REPLACE INTO `mercenary_skill_db` VALUES(6026, 8215, 5);
REPLACE INTO `mercenary_skill_db` VALUES(6026, 8223, 5);
REPLACE INTO `mercenary_skill_db` VALUES(6026, 8233, 1);
REPLACE INTO `mercenary_skill_db` VALUES(6027, 8216, 1);
REPLACE INTO `mercenary_skill_db` VALUES(6027, 8226, 1);
REPLACE INTO `mercenary_skill_db` VALUES(6028, 8217, 2);
REPLACE INTO `mercenary_skill_db` VALUES(6028, 8236, 1);
REPLACE INTO `mercenary_skill_db` VALUES(6029, 8216, 2);
REPLACE INTO `mercenary_skill_db` VALUES(6029, 8221, 1);
REPLACE INTO `mercenary_skill_db` VALUES(6029, 8229, 1);
REPLACE INTO `mercenary_skill_db` VALUES(6030, 8219, 1);
REPLACE INTO `mercenary_skill_db` VALUES(6030, 8225, 4);
REPLACE INTO `mercenary_skill_db` VALUES(6031, 8216, 5);
REPLACE INTO `mercenary_skill_db` VALUES(6031, 8220, 3);
REPLACE INTO `mercenary_skill_db` VALUES(6032, 8223, 2);
REPLACE INTO `mercenary_skill_db` VALUES(6032, 8217, 5);
REPLACE INTO `mercenary_skill_db` VALUES(6033, 8221, 1);
REPLACE INTO `mercenary_skill_db` VALUES(6033, 8233, 1);
REPLACE INTO `mercenary_skill_db` VALUES(6034, 8235, 1);
REPLACE INTO `mercenary_skill_db` VALUES(6034, 8216, 10);
REPLACE INTO `mercenary_skill_db` VALUES(6034, 8232, 5);
REPLACE INTO `mercenary_skill_db` VALUES(6035, 8217, 10);
REPLACE INTO `mercenary_skill_db` VALUES(6035, 8220, 7);
REPLACE INTO `mercenary_skill_db` VALUES(6035, 8219, 3);
REPLACE INTO `mercenary_skill_db` VALUES(6036, 8223, 5);
REPLACE INTO `mercenary_skill_db` VALUES(6036, 8220, 10);
REPLACE INTO `mercenary_skill_db` VALUES(6036, 8221, 3);
REPLACE INTO `mercenary_skill_db` VALUES(6036, 8218, 5);
REPLACE INTO `mercenary_skill_db` VALUES(6037, 8201, 1);
REPLACE INTO `mercenary_skill_db` VALUES(6037, 8234, 1);
REPLACE INTO `mercenary_skill_db` VALUES(6038, 8232, 5);
REPLACE INTO `mercenary_skill_db` VALUES(6038, 8202, 3);
REPLACE INTO `mercenary_skill_db` VALUES(6039, 8223, 1);
REPLACE INTO `mercenary_skill_db` VALUES(6039, 8228, 1);
REPLACE INTO `mercenary_skill_db` VALUES(6040, 8225, 1);
REPLACE INTO `mercenary_skill_db` VALUES(6040, 8202, 5);
REPLACE INTO `mercenary_skill_db` VALUES(6041, 8201, 5);
REPLACE INTO `mercenary_skill_db` VALUES(6041, 8225, 4);
REPLACE INTO `mercenary_skill_db` VALUES(6041, 8228, 1);
REPLACE INTO `mercenary_skill_db` VALUES(6042, 8223, 5);
REPLACE INTO `mercenary_skill_db` VALUES(6042, 8237, 1);
REPLACE INTO `mercenary_skill_db` VALUES(6042, 8234, 3);
REPLACE INTO `mercenary_skill_db` VALUES(6043, 8201, 10);
REPLACE INTO `mercenary_skill_db` VALUES(6043, 8233, 1);
REPLACE INTO `mercenary_skill_db` VALUES(6043, 8235, 1);
REPLACE INTO `mercenary_skill_db` VALUES(6044, 8223, 10);
REPLACE INTO `mercenary_skill_db` VALUES(6044, 8203, 5);
REPLACE INTO `mercenary_skill_db` VALUES(6044, 8231, 1);
REPLACE INTO `mercenary_skill_db` VALUES(6044, 8204, 4);
REPLACE INTO `mercenary_skill_db` VALUES(6045, 8203, 8);
REPLACE INTO `mercenary_skill_db` VALUES(6045, 8225, 3);
REPLACE INTO `mercenary_skill_db` VALUES(6045, 8205, 5);
REPLACE INTO `mercenary_skill_db` VALUES(6046, 8223, 10);
REPLACE INTO `mercenary_skill_db` VALUES(6046, 8203, 10);
REPLACE INTO `mercenary_skill_db` VALUES(6046, 8201, 10);
REPLACE INTO `mercenary_skill_db` VALUES(6046, 8206, 1);
REPLACE INTO `mercenary_skill_db` VALUES(1191, 8233, 1);
REPLACE INTO `mercenary_skill_db` VALUES(1191, 8220, 5);
REPLACE INTO `mercenary_skill_db` VALUES(1191, 8201, 5);
REPLACE INTO `mercenary_skill_db` VALUES(1506, 8223, 2);
REPLACE INTO `mercenary_skill_db` VALUES(1506, 8225, 5);
REPLACE INTO `mercenary_skill_db` VALUES(1506, 8236, 3);
REPLACE INTO `mercenary_skill_db` VALUES(1275, 8232, 5);
REPLACE INTO `mercenary_skill_db` VALUES(1275, 8202, 5);
REPLACE INTO `mercenary_skill_db` VALUES(1275, 8217, 5);
REPLACE INTO `mercenary_skill_db` VALUES(1275, 8226, 1);
REPLACE INTO `mercenary_skill_db` VALUES(1965, 8201, 5);
REPLACE INTO `mercenary_skill_db` VALUES(1966, 8223, 5);
REPLACE INTO `mercenary_skill_db` VALUES(1966, 8201, 5);
REPLACE INTO `mercenary_skill_db` VALUES(1966, 8221, 3);
REPLACE INTO `mercenary_skill_db` VALUES(1967, 8223, 5);
REPLACE INTO `mercenary_skill_db` VALUES(1967, 8201, 5);
REPLACE INTO `mercenary_skill_db` VALUES(1967, 8221, 3);
REPLACE INTO `mercenary_skill_db` VALUES(2000, 8226, 1);
REPLACE INTO `mercenary_skill_db` VALUES(2000, 8227, 1);
REPLACE INTO `mercenary_skill_db` VALUES(2000, 8238, 5);
REPLACE INTO `mercenary_skill_db` VALUES(2000, 8239, 5);
REPLACE INTO `mercenary_skill_db` VALUES(2000, 8240, 5);
REPLACE INTO `mercenary_skill_db` VALUES(2001, 8226, 1);
REPLACE INTO `mercenary_skill_db` VALUES(2001, 8227, 1);
REPLACE INTO `mercenary_skill_db` VALUES(2001, 8238, 5);
REPLACE INTO `mercenary_skill_db` VALUES(2001, 8239, 5);
REPLACE INTO `mercenary_skill_db` VALUES(2001, 8240, 5);
REPLACE INTO `mercenary_skill_db` VALUES(2058, 8233, 1);
REPLACE INTO `mercenary_skill_db` VALUES(2058, 8220, 5);
REPLACE INTO `mercenary_skill_db` VALUES(2058, 8201, 5);
REPLACE INTO `mercenary_skill_db` VALUES(2059, 8223, 2);
REPLACE INTO `mercenary_skill_db` VALUES(2059, 8225, 5);
REPLACE INTO `mercenary_skill_db` VALUES(2059, 8236, 3);
REPLACE INTO `mercenary_skill_db` VALUES(2060, 8232, 5);
REPLACE INTO `mercenary_skill_db` VALUES(2060, 8202, 5);
REPLACE INTO `mercenary_skill_db` VALUES(2060, 8217, 5);
REPLACE INTO `mercenary_skill_db` VALUES(2060, 8226, 1);

--
-- Estrutura da tabela `mob_avail_db`
--

CREATE TABLE IF NOT EXISTS `mob_avail_db` (
  `MobID` smallint(6) unsigned NOT NULL DEFAULT '0',
  `SpriteID` smallint(4) unsigned NOT NULL DEFAULT '0',
  `Sex` smallint(4) unsigned NOT NULL DEFAULT '0',
  `Hair_Style` smallint(6) unsigned NOT NULL DEFAULT '0',
  `Hair_Color` smallint(4) unsigned NOT NULL DEFAULT '0',
  `Weapon` smallint(4) unsigned NOT NULL DEFAULT '0',
  `Shield` smallint(4) unsigned NOT NULL DEFAULT '0',
  `Head_Top` smallint(4) unsigned NOT NULL DEFAULT '0',
  `Head_Middle` smallint(4) unsigned NOT NULL DEFAULT '0',
  `Head_Bottom` smallint(4) unsigned NOT NULL DEFAULT '0',
  `Option` smallint(4) unsigned NOT NULL DEFAULT '0',
  `Dye_Color` smallint(4) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Estrutura da tabela `mob_chat_db`
--

CREATE TABLE IF NOT EXISTS `mob_chat_db` (
  `Line_ID` smallint(2) unsigned NOT NULL DEFAULT '0',
  `Color_Code` text NOT NULL,
  `Dialog` text NOT NULL,
  PRIMARY KEY (`Line_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

REPLACE INTO `mob_chat_db` VALUES(1, '0xFF0000', 'Fraco! Me desafie se tiver alguma coragem!\r\n');
REPLACE INTO `mob_chat_db` VALUES(2, '0xFF0000', 'Impressionante! Eu me pergunto até onde sua imprudencia irá levá-lo.\r\n');
REPLACE INTO `mob_chat_db` VALUES(3, '0xFF0000', 'Tenho pena de você estar contra mim. Agora se prepare para meu ataque!\r\n');
REPLACE INTO `mob_chat_db` VALUES(4, '0xFF0000', 'Meus servos fiéis! O recebram com uma morte dolorosa!\r\n');
REPLACE INTO `mob_chat_db` VALUES(5, '0xFF0000', 'Não fuja!\r\n');
REPLACE INTO `mob_chat_db` VALUES(6, '0xFF0000', 'Vocês, humanos inúteis. Seus poderes sagrados não tem efeito sobre mim!\r\n');
REPLACE INTO `mob_chat_db` VALUES(7, '0xFF0000', 'Subalternos inúteis!... Tudo bem, eu tenho mais armas descartáveis para usar.\r\n');
REPLACE INTO `mob_chat_db` VALUES(8, '0xFF0000', 'Reze para seus deuses!\r\n');
REPLACE INTO `mob_chat_db` VALUES(9, '0xFF0000', 'Você ainda acha que é um jogo para mim?\r\n');
REPLACE INTO `mob_chat_db` VALUES(10, '0xFF0000', 'Vanish!\r\n');
REPLACE INTO `mob_chat_db` VALUES(11, '0xFF0000', 'Vamos ver por quanto tempo você pode agüentar meu poder!\r\n');
REPLACE INTO `mob_chat_db` VALUES(12, '0xFF0000', 'Isso é tudo que você tem?\r\n');
REPLACE INTO `mob_chat_db` VALUES(13, '0xFF0000', 'Você está me fazendo cócegas!\r\n');
REPLACE INTO `mob_chat_db` VALUES(14, '0xFF0000', 'Chama isso de ataque? Assista e aprenda, seus fracos!\r\n');
REPLACE INTO `mob_chat_db` VALUES(15, '0xFF0000', 'É hora de terminar o jogo!\r\n');
REPLACE INTO `mob_chat_db` VALUES(16, '0xFF0000', 'Ha! Você é mais forte do que eu pensava!\r\n');
REPLACE INTO `mob_chat_db` VALUES(17, '0xFF0000', 'Não! Isso não poder estar acontecendo! Eu sou Satan Morroc, o Rei da Destruição!\r\n');
REPLACE INTO `mob_chat_db` VALUES(18, '0xFF0000', 'Eu nunca morrei! Sempre estarei voltando para lhe pegar!\r\n');
REPLACE INTO `mob_chat_db` VALUES(19, '0xFF0000', 'Eu nasci para conquistar este mundo! Nada poderá me impedir!\r\n');
REPLACE INTO `mob_chat_db` VALUES(20, '0xFF0000', 'Seus dias estão contados!\r\n');
REPLACE INTO `mob_chat_db` VALUES(21, '0xFF0000', 'Strike! Meus dedos dilaceradores de aço!\r\n');
REPLACE INTO `mob_chat_db` VALUES(22, '0xFF0000', 'Hahaha! Me diga quem sou! Eo sou Bafomé! O herdeiro do inferno!\r\n');
REPLACE INTO `mob_chat_db` VALUES(23, '0xFF0000', 'Aproveite sua vida enquanto pode! Sua esperança em breve irá se transformar em desespero!\r\n');
REPLACE INTO `mob_chat_db` VALUES(24, '0xFF0000', 'Quando você aprenderá a lição? Quando morrer?\r\n');
REPLACE INTO `mob_chat_db` VALUES(25, '0xFF0000', 'Não... Eu não posso perder! Não vou implorar por minha vida! Eu não estou fugindo! Eu não aceito isso como derrota!\r\n');
REPLACE INTO `mob_chat_db` VALUES(26, '0xFF0000', 'Argh... Eu... Eu, estou enfraquecendo...\r\n');
REPLACE INTO `mob_chat_db` VALUES(27, '0xFF0000', 'O que você quer de mim?\r\n');
REPLACE INTO `mob_chat_db` VALUES(28, '0xFF0000', 'Não! Eu não fiz isso! Ele é quem planejou tudo isso!\r\n');
REPLACE INTO `mob_chat_db` VALUES(29, '0xFF0000', 'Eu só queria encontrar a paz..!  É por isso que eu estava fugindo!\r\n');
REPLACE INTO `mob_chat_db` VALUES(30, '0xFF0000', 'Ahhhh!!! Agora, só tenho que matá-lo!\r\n');
REPLACE INTO `mob_chat_db` VALUES(31, '0xFF0000', 'Moscas irritantes!! Saiam de mim!\r\n');
REPLACE INTO `mob_chat_db` VALUES(32, '0xFF0000', 'Sofra no Inferno!\r\n');
REPLACE INTO `mob_chat_db` VALUES(33, '0xFF0000', 'Muahahaha! Sinta a fúria da terra!!!\r\n');
REPLACE INTO `mob_chat_db` VALUES(34, '0xFF0000', 'Não... Eu não irei aceitar esta derrota!\r\n');
REPLACE INTO `mob_chat_db` VALUES(35, '0xFF0000', 'Será que me bater irá aliviar a sua solidão? Por que você não fica aqui comigo para sempre, humano?\r\n');
REPLACE INTO `mob_chat_db` VALUES(36, '0xFF0000', 'Você esqueceu o significado do tempo. Eu me pergunto quanto tempo você poderá durar aqui...\r\n');
REPLACE INTO `mob_chat_db` VALUES(37, '0xFF0000', 'Existe alguém esperando por você? Desista de tudo, você é meu agora...\r\n');
REPLACE INTO `mob_chat_db` VALUES(38, '0xFF0000', 'Esqueça sua vida e fique confinado aqui. Você vai desejar a liberdade preso em cativeiro cativeiro !!\r\n');
REPLACE INTO `mob_chat_db` VALUES(39, '0xFF0000', 'Quais serão as mudanças no mundo exterior, enquanto você estiver aqui na solidão durante mil anos?\r\n');
REPLACE INTO `mob_chat_db` VALUES(40, '0xFF0000', 'Sim! Desejar a sua liberdade neste local confinado, sua permanência aqui será eterna !!\r\n');

--
-- Estrutura da tabela `mob_classchange_db`
--

CREATE TABLE IF NOT EXISTS `mob_classchange_db` (
  `MobID` smallint(6) unsigned NOT NULL DEFAULT '0',
  `DummyName` text NOT NULL,
  `Rate` int(6) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

REPLACE INTO `mob_classchange_db` VALUES(0, 'Bafomé', 1039);
REPLACE INTO `mob_classchange_db` VALUES(1038, 'Osíris', 1000000);
REPLACE INTO `mob_classchange_db` VALUES(1039, 'Bafomé', 0);
REPLACE INTO `mob_classchange_db` VALUES(1046, 'Doppelganger', 1000000);
REPLACE INTO `mob_classchange_db` VALUES(1059, 'Abelha-Rainha', 1000000);
REPLACE INTO `mob_classchange_db` VALUES(1086, 'Besouro-Ladrão Dourado', 1000000);
REPLACE INTO `mob_classchange_db` VALUES(1087, 'Orc Herói', 1000000);
REPLACE INTO `mob_classchange_db` VALUES(1112, 'Drake', 1000000);
REPLACE INTO `mob_classchange_db` VALUES(1115, 'Eddga', 1000000);
REPLACE INTO `mob_classchange_db` VALUES(1147, 'Maya', 1000000);
REPLACE INTO `mob_classchange_db` VALUES(1150, 'Flor do Luar', 1000000);
REPLACE INTO `mob_classchange_db` VALUES(1157, 'Faraó', 1000000);
REPLACE INTO `mob_classchange_db` VALUES(1159, 'Freeoni', 1000000);
REPLACE INTO `mob_classchange_db` VALUES(1190, 'Orc Lord', 1000000);
REPLACE INTO `mob_classchange_db` VALUES(1251, 'Cavaleiro da Tempestade', 1000000);
REPLACE INTO `mob_classchange_db` VALUES(1252, 'Hatii', 1000000);
REPLACE INTO `mob_classchange_db` VALUES(1272, 'Senhor das Trevas', 1000000);
REPLACE INTO `mob_classchange_db` VALUES(1312, 'General Tartaruga', 1000000);
REPLACE INTO `mob_classchange_db` VALUES(1373, 'Senhor dos Mortos', 1000000);
REPLACE INTO `mob_classchange_db` VALUES(1388, 'Archangeling', 1000000);
REPLACE INTO `mob_classchange_db` VALUES(1389, 'Drácula', 1000000);
REPLACE INTO `mob_classchange_db` VALUES(1418, 'Serpente Suprema', 1000000);
REPLACE INTO `mob_classchange_db` VALUES(1492, 'Samurai Encarnado', 1000000);
REPLACE INTO `mob_classchange_db` VALUES(1511, 'Amon Ra', 1000000);
REPLACE INTO `mob_classchange_db` VALUES(1583, 'Tao Gunka', 1000000);

--
-- Estrutura da tabela `mob_item_ratio_db`
--

CREATE TABLE IF NOT EXISTS `mob_item_ratio_db` (
  `ItemID` smallint(6) unsigned NOT NULL DEFAULT '0',
  `Ratio` int(11) unsigned NOT NULL DEFAULT '0',
  `MonsterID` smallint(6) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Estrutura da tabela `mob_pouch_db`
--

CREATE TABLE IF NOT EXISTS `mob_pouch_db` (
  `MobID` smallint(6) unsigned NOT NULL DEFAULT '0',
  `DummyName` text NOT NULL,
  `Rate` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

REPLACE INTO `mob_pouch_db` VALUES(0, 'Poring', 1002);
REPLACE INTO `mob_pouch_db` VALUES(1001, 'Escorpião', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1002, 'Poring', 1000000);
REPLACE INTO `mob_pouch_db` VALUES(1004, 'Zangão', 357142);
REPLACE INTO `mob_pouch_db` VALUES(1005, 'Familiar', 357142);
REPLACE INTO `mob_pouch_db` VALUES(1007, 'Fabre', 428571);
REPLACE INTO `mob_pouch_db` VALUES(1008, 'Pupa', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1009, 'Condor', 357142);
REPLACE INTO `mob_pouch_db` VALUES(1010, 'Salgueiro', 357142);
REPLACE INTO `mob_pouch_db` VALUES(1011, 'Chonchon', 357142);
REPLACE INTO `mob_pouch_db` VALUES(1012, 'Sapo de Rodda', 357142);
REPLACE INTO `mob_pouch_db` VALUES(1013, 'Lobo', 357142);
REPLACE INTO `mob_pouch_db` VALUES(1014, 'Esporo', 357142);
REPLACE INTO `mob_pouch_db` VALUES(1015, 'Zumbi', 357142);
REPLACE INTO `mob_pouch_db` VALUES(1016, 'Esqueleto Arqueiro', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1018, 'Creamy', 357142);
REPLACE INTO `mob_pouch_db` VALUES(1019, 'Peco-Peco', 357142);
REPLACE INTO `mob_pouch_db` VALUES(1020, 'Mandrágora', 357142);
REPLACE INTO `mob_pouch_db` VALUES(1023, 'Guerreiro Orc', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1024, 'Rabo de Verme', 357142);
REPLACE INTO `mob_pouch_db` VALUES(1025, 'Jibóia', 357142);
REPLACE INTO `mob_pouch_db` VALUES(1026, 'Munak', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1028, 'Esqueleto Soldado', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1029, 'Isis', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1030, 'Anaconda', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1031, 'Poporing', 357142);
REPLACE INTO `mob_pouch_db` VALUES(1032, 'Verit', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1033, 'Salgueiro Ancião', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1034, 'Sapo de Thara', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1035, 'Mosca Caçadora', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1036, 'Carniçal', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1037, 'Sorrateiro', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1040, 'Golem', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1041, 'Múmia', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1042, 'ChonChon de Aço', 357142);
REPLACE INTO `mob_pouch_db` VALUES(1044, 'Obeaune', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1045, 'Cavalo-Marinho', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1047, 'Ovo de Peco-Peco', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1048, 'Ovo de Besouro-Ladrão', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1049, 'Picky', 357142);
REPLACE INTO `mob_pouch_db` VALUES(1050, 'Picky com Casca', 357142);
REPLACE INTO `mob_pouch_db` VALUES(1051, 'Besouro-Ladrão', 357142);
REPLACE INTO `mob_pouch_db` VALUES(1052, 'Rocker', 357142);
REPLACE INTO `mob_pouch_db` VALUES(1053, 'Besouro-Ladrão Fêmea', 357142);
REPLACE INTO `mob_pouch_db` VALUES(1054, 'Besouro-Ladrão Macho', 357142);
REPLACE INTO `mob_pouch_db` VALUES(1055, 'Muka', 357142);
REPLACE INTO `mob_pouch_db` VALUES(1056, 'Fumacento', 357142);
REPLACE INTO `mob_pouch_db` VALUES(1057, 'Yoyo', 357142);
REPLACE INTO `mob_pouch_db` VALUES(1058, 'Metaller', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1060, 'Pé Grande', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1061, 'Pesadelo', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1062, 'Poring Noel', 357142);
REPLACE INTO `mob_pouch_db` VALUES(1063, 'Lunático', 357142);
REPLACE INTO `mob_pouch_db` VALUES(1064, 'Megalodon', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1065, 'Strouf', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1066, 'Vadon', 357142);
REPLACE INTO `mob_pouch_db` VALUES(1067, 'Cornutus', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1068, 'Hidra', 357142);
REPLACE INTO `mob_pouch_db` VALUES(1069, 'Peixe-Espada', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1070, 'Kukre', 357142);
REPLACE INTO `mob_pouch_db` VALUES(1071, 'Esqueleto Pirata', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1072, 'Kaho', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1073, 'Caranguejo', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1074, 'Molusco', 357142);
REPLACE INTO `mob_pouch_db` VALUES(1076, 'Esqueleto', 357142);
REPLACE INTO `mob_pouch_db` VALUES(1077, 'Esporo Venenoso', 357142);
REPLACE INTO `mob_pouch_db` VALUES(1078, 'Planta Vermelha', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1079, 'Planta Azul', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1080, 'Planta Verde', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1081, 'Planta Amarela', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1082, 'Planta Branca', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1083, 'Planta Brilhante', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1084, 'Cogumelo Negro', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1085, 'Cogumelo Vermelho', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1088, 'Vocal', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1089, 'Sapo-Cururu', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1090, 'Mastering', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1091, 'Libélula', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1092, 'Lobo Errante', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1093, 'Eclipse', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1094, 'Ambernite', 357142);
REPLACE INTO `mob_pouch_db` VALUES(1095, 'Andre', 357142);
REPLACE INTO `mob_pouch_db` VALUES(1096, 'Angeling', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1097, 'Ovo de Andre', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1099, 'Argiope', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1100, 'Argos', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1101, 'Bafomé Jr.', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1102, 'Bathory', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1103, 'Caramelo', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1104, 'Koko', 357142);
REPLACE INTO `mob_pouch_db` VALUES(1105, 'Deniro', 357142);
REPLACE INTO `mob_pouch_db` VALUES(1106, 'Lobo do Deserto', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1107, 'Filhote de Lobo do Deserto', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1108, 'Deviace', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1109, 'Deviruchi', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1110, 'Dokebi', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1111, 'Drainliar', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1113, 'Drops', 357142);
REPLACE INTO `mob_pouch_db` VALUES(1114, 'Poeira', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1116, 'Eggyra', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1117, 'Druida Maligno', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1118, 'Flora', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1119, 'Frilldora', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1120, 'Ghostring', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1121, 'Giearth', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1122, 'Goblin', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1123, 'Goblin', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1124, 'Goblin', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1125, 'Goblin', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1126, 'Goblin', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1127, 'Hode', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1128, 'Besouro-Chifre', 357142);
REPLACE INTO `mob_pouch_db` VALUES(1129, 'Horong', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1130, 'Jakk', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1131, 'Coringa', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1132, 'Khalitzburg', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1133, 'Cobold', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1134, 'Cobold', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1135, 'Cobold', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1138, 'Magnólia', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1139, 'Louva-a-Deus', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1140, 'Marduk', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1141, 'Marina', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1142, 'Esfera Marinha', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1143, 'Marionette', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1144, 'Marte', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1145, 'Martin', 357142);
REPLACE INTO `mob_pouch_db` VALUES(1146, 'Matyr', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1148, 'Medusa', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1149, 'Minorous', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1151, 'Névoa', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1152, 'Orc Esqueleto', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1153, 'Orc Zumbi', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1154, 'Pasana', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1155, 'Petite', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1156, 'Petite', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1158, 'Fen', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1160, 'Piere', 357142);
REPLACE INTO `mob_pouch_db` VALUES(1161, 'Plankton', 357142);
REPLACE INTO `mob_pouch_db` VALUES(1163, 'Raydric', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1164, 'Réquiem', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1165, 'Arenoso', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1166, 'Selvagem', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1167, 'Bebê Selvagem', 357142);
REPLACE INTO `mob_pouch_db` VALUES(1169, 'Esqueleto Operário', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1170, 'Sohee', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1174, 'Percevejo', 357142);
REPLACE INTO `mob_pouch_db` VALUES(1175, 'Tarou', 357142);
REPLACE INTO `mob_pouch_db` VALUES(1176, 'Vitata', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1177, 'Zenorc', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1178, 'Zerom', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1179, 'Sussurro', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1180, 'Nove Caudas', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1182, 'Cogumelo', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1185, 'Sussurro', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1186, 'Cochicho', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1188, 'Bongun', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1189, 'Orc Arqueiro', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1191, 'Mímico', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1192, 'Alma Penada', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1193, 'Alarme', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1194, 'Arclouze', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1195, 'Rideword', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1196, 'Esqueleto Prisioneiro', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1197, 'Zumbi Prisioneiro', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1199, 'Punk', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1200, 'Jirtas', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1201, 'Rybio', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1202, 'Fendark', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1203, 'Mysteltainn', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1204, 'Tirfing', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1205, 'Executor', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1206, 'Anolian', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1207, 'Sting', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1208, 'Andarilho', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1209, 'Cãibra', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1211, 'Escaravelho', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1212, 'Mão de Ferro', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1213, 'Grande Orc', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1214, 'Choco', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1215, 'Talo de Verme', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1216, 'Penomena', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1219, 'Cavaleiro do Abismo', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1242, 'Marin', 357142);
REPLACE INTO `mob_pouch_db` VALUES(1243, 'Sasquatch', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1245, 'Goblin Natalino', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1246, 'Cookie Natalino', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1248, 'Cruiser', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1249, 'Soldadinho de Chumbo', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1250, 'Chepet', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1253, 'Gárgula', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1254, 'Raggler', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1255, 'Nereida', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1256, 'Peste', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1257, 'Injustiçado', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1258, 'Goblin Arqueiro', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1259, 'Grifo', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1260, 'Moldura Maldita', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1261, 'Rosa Selvagem', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1262, 'Dragão Mutante', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1263, 'Xamã do Vento', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1264, 'Tritão', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1265, 'Cookie', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1266, 'Estrela do Mar', 357142);
REPLACE INTO `mob_pouch_db` VALUES(1267, 'Carat', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1268, 'Cavaleiro Sanguinário', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1269, 'Relógio', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1270, 'Gerente', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1271, 'Crocodilo', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1273, 'Senhora Orc', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1274, 'Megalith', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1275, 'Alice', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1276, 'Raydric Arqueiro', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1277, 'Guardião da Floresta', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1278, 'Golem Estalactítico', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1279, 'Trilobita', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1280, 'Goblin a Vapor', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1281, 'Verme Sábio', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1282, 'Cobold Arqueiro', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1283, 'Quimera', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1289, 'Maya Macho', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1290, 'Esqueleto General', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1291, 'Aparição', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1292, 'Diabinho', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1293, 'Creamy Ameaçador', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1294, 'Mantis Assassino', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1295, 'Barão Coruja', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1296, 'Líder Cobold', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1297, 'Múmia Anciã', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1298, 'Zumbi Mestre', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1299, 'Líder Goblin', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1300, 'Lagarta', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1301, 'Am Mut', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1302, 'Ilusão das Trevas', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1303, 'Zangão Gigante', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1304, 'Aranha Gigante', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1305, 'Verme Ancião', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1306, 'Leib Olmai', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1307, 'Gato de Nove Caudas', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1308, 'Panzer Goblin', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1309, 'Gajomart', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1310, 'Majoruros', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1311, 'Gullinbursti', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1313, 'Yakuza', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1314, 'Batedor', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1315, 'Agressor', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1316, 'Soldado', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1317, 'Foca', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1318, 'Aquecedor', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1319, 'Congelador', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1320, 'Duque Coruja', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1321, 'Lavadeira', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1322, 'Coelho', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1323, 'Lontra', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1365, 'Apocalipse', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1366, 'Golem de Lava', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1367, 'Labareda', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1368, 'Planta Carnívora', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1369, 'Grande Peco', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1370, 'Succubus', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1371, 'Anjo Fajuto', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1372, 'Bode', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1374, 'Incubus', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1375, 'Papel', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1376, 'Harpia', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1377, 'Ancião', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1378, 'Pungus', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1379, 'Pesadelo Sombrio', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1380, 'Furador', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1381, 'Grizzly', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1382, 'Diabolik', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1383, 'Estrondo', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1384, 'Exterminador', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1385, 'Deletério', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1386, 'Rochoso', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1387, 'Ferrão', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1390, 'Violi', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1391, 'Pingu', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1392, 'Giro-Goblin', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1400, 'Karakasa', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1401, 'Shinobi', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1402, 'Sapo Venenoso', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1403, 'Soldado Atirador', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1404, 'Boneco de Miyabi', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1405, 'Tengu', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1406, 'Kapha', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1408, 'Borboleta Sangrenta', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1409, 'Pirralho', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1410, 'Pessegueira Encantada', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1412, 'Ermitão Maligno', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1413, 'Ermitão Selvagem', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1415, 'Filhote de Leopardo', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1416, 'Ninfa Perversa', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1417, 'Zipper Bear', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1493, 'Dríade', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1494, 'Besouro-Rei', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1495, 'Atirador de Pedras', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1497, 'Golem de Madeira', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1498, 'Atirador Wootan', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1499, 'Guerreiro Wootan', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1500, 'Parasita', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1503, 'Árvore Maldita', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1504, 'Dullahan', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1505, 'Loli Ruri', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1506, 'Mascarado', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1507, 'Serial Killer', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1508, 'Quve', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1509, 'Lude', 214285);
REPLACE INTO `mob_pouch_db` VALUES(1510, 'Poltergeist', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1512, 'Yao Jun', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1513, 'Mao Guai', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1514, 'Zhu Po Long', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1515, 'Filhote de Hatii', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1516, 'Mi Gao', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1517, 'Jing Guai', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1519, 'Chung E', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1520, 'Bolinho de Massa', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1582, 'Deviling', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1584, 'Tamruan', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1586, 'Gato de Folha', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1587, 'Kraben', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1613, 'Metaling', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1614, 'Mineral', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1615, 'Obsidian', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1616, 'Minérios', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1617, 'Fornalha Velha', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1618, 'Ungoliant', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1619, 'Porcellio', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1620, 'Nuvem Tóxica', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1621, 'Nuvem Venenosa', 71428);
REPLACE INTO `mob_pouch_db` VALUES(1622, 'Ursinho', 71428);

--
-- Estrutura da tabela `pet_db`
--

CREATE TABLE IF NOT EXISTS `pet_db` (
  `MobID` smallint(6) unsigned NOT NULL DEFAULT '0',
  `Name` text NOT NULL,
  `JName` text NOT NULL,
  `LureID` smallint(6) unsigned NOT NULL DEFAULT '0',
  `EggID` smallint(6) unsigned NOT NULL DEFAULT '0',
  `EquipID` smallint(6) unsigned NOT NULL DEFAULT '0',
  `FoodID` smallint(6) unsigned NOT NULL DEFAULT '0',
  `Fullness` smallint(6) unsigned NOT NULL DEFAULT '0',
  `HungryDelay` smallint(6) unsigned NOT NULL DEFAULT '0',
  `R_Hungry` smallint(6) unsigned NOT NULL DEFAULT '0',
  `R_Full` smallint(6) unsigned NOT NULL DEFAULT '0',
  `Intimate` smallint(6) unsigned NOT NULL DEFAULT '0',
  `Die` smallint(6) unsigned NOT NULL DEFAULT '0',
  `Capture` smallint(6) unsigned NOT NULL DEFAULT '0',
  `Speed` smallint(6) unsigned NOT NULL DEFAULT '0',
  `S_Performance` smallint(6) unsigned NOT NULL DEFAULT '0',
  `Talk_Convert_Class` smallint(6) unsigned NOT NULL DEFAULT '0',
  `Attack_Rate` smallint(6) unsigned NOT NULL DEFAULT '0',
  `Defence_Attack_Rate` smallint(6) unsigned NOT NULL DEFAULT '0',
  `Change_Target_Rate` smallint(6) unsigned NOT NULL DEFAULT '0',
  `Pet_Script` text NOT NULL,
  `Loyal_Script` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

REPLACE INTO `pet_db` VALUES(1002, 'PORING', 'Poring', 619, 9001, 10013, 531, 80, 60, 50, 100, 250, 20, 2000, 150, 1, 0, 350, 400, 800, '{  petloot 10; },', '{  bonus bLuk,2; bonus bCritical,1; }\r\n');
REPLACE INTO `pet_db` VALUES(1011, 'CHONCHON', 'ChonChon', 624, 9006, 10002, 537, 80, 60, 30, 100, 250, 20, 1500, 150, 1, 0, 500, 500, 250, '{  petskillbonus bAgi,4,10,50; },', '{  bonus bAgi,1; bonus bFlee,2; }\r\n');
REPLACE INTO `pet_db` VALUES(1014, 'SPORE', 'Esporo', 630, 9012, 10017, 537, 80, 60, 30, 100, 250, 20, 1500, 150, 0, 0, 350, 500, 500, '{  petrecovery SC_Poison,60; },', '{  bonus bHit,5; bonus bAtk,-2; }\r\n');
REPLACE INTO `pet_db` VALUES(1019, 'PECOPECO', 'Peco-Peco', 632, 9014, 10010, 537, 80, 60, 30, 100, 250, 20, 1000, 150, 1, 0, 400, 500, 800, '{  petskillbonus bSpeedRate,25,20,20; },', '{  bonus bMaxHP,150; bonus bMaxSP,-10; }\r\n');
REPLACE INTO `pet_db` VALUES(1023, 'ORK_WARRIOR', 'Guerreiro Orc', 635, 9017, 10009, 537, 80, 60, 20, 100, 250, 20, 500, 150, 1, 0, 600, 200, 300, '{  petskillattack2 "NPC_PIERCINGATT",100,1,0,10; },', '{  bonus bAtk,10; bonus bDef,-3; }\r\n');
REPLACE INTO `pet_db` VALUES(1026, 'MUNAK', 'Munak', 636, 9018, 10008, 537, 80, 60, 20, 100, 250, 20, 500, 150, 0, 0, 300, 750, 300, '{  petskillattack2 "NPC_DARKNESSATTACK",444,1,0,10; },', '{  bonus bInt,1; bonus bDef,1; }\r\n');
REPLACE INTO `pet_db` VALUES(1029, 'ISIS', 'Isis', 639, 9021, 10006, 537, 80, 60, 10, 100, 250, 20, 500, 150, 0, 0, 650, 450, 150, '{  petskillsupport "PR_MAGNIFICAT",2,60,50,50; },', '{  bonus bMatkRate,-1; bonus bAtkRate,1; }\r\n');
REPLACE INTO `pet_db` VALUES(1031, 'POPORING', 'Poporing', 621, 9003, 10013, 511, 80, 60, 30, 100, 250, 20, 1000, 150, 1, 0, 300, 500, 400, '{  petloot 15; },', '{  bonus bLuk,2; bonus2 bSubEle,Ele_Poison,10; }\r\n');
REPLACE INTO `pet_db` VALUES(1035, 'HUNTER_FLY', 'Mosca Caçadora', 626, 9008, 10002, 716, 80, 60, 10, 100, 250, 20, 500, 150, 1, 0, 500, 500, 200, '{  petskillattack2 "NPC_WINDATTACK",888,2,0,10; },', '{  bonus bFlee,-5; bonus bFlee2,2; }\r\n');
REPLACE INTO `pet_db` VALUES(1042, 'STEEL_CHONCHON', 'ChonChon de Aço', 625, 9007, 10002, 1002, 80, 60, 20, 100, 250, 20, 1000, 150, 1, 0, 500, 500, 200, '{  petskillbonus bAgiVit,4,20,40; },', '{  bonus bFlee,6; bonus bAgi,-1; }\r\n');
REPLACE INTO `pet_db` VALUES(1049, 'PICKY', 'Picky', 623, 9005, 10012, 507, 80, 60, 40, 100, 250, 20, 2000, 150, 1, 0, 500, 600, 50, '{  petskillbonus bStr,3,10,50;},', '{  bonus bStr,1; bonus bAtk,5; }\r\n');
REPLACE INTO `pet_db` VALUES(1052, 'ROCKER', 'Rocker', 629, 9011, 10014, 537, 80, 60, 30, 100, 250, 20, 1500, 150, 0, 0, 350, 350, 600, '{  petskillbonus bAllStats,1,10,50; },', '{  bonus bHPrecovRate,5; bonus bMaxHP,25; }\r\n');
REPLACE INTO `pet_db` VALUES(1056, 'SMOKIE', 'Fumacento', 633, 9015, 10019, 537, 80, 60, 30, 100, 250, 20, 1000, 150, 1, 0, 600, 600, 100, '{  petskillbonus bPerfectHide,1,3600,0; },', '{  bonus bAgi,1; bonus bFlee2,1; }\r\n');
REPLACE INTO `pet_db` VALUES(1057, 'YOYO', 'Yoyo', 634, 9016, 10018, 532, 80, 60, 20, 100, 250, 20, 1000, 150, 1, 0, 300, 800, 400, '{  petloot 20; },', '{  bonus bCritical,3; bonus bLuk,-1; }\r\n');
REPLACE INTO `pet_db` VALUES(1063, 'LUNATIC', 'Lunático', 622, 9004, 10007, 534, 80, 60, 40, 100, 250, 20, 1500, 150, 0, 0, 300, 300, 1000, '{  petskillbonus bLuk,3,10,50; },', '{  bonus bCritical,2; bonus bAtk,2; }\r\n');
REPLACE INTO `pet_db` VALUES(1077, 'POISON_SPORE', 'Esporo Venenoso', 631, 9013, 10017, 537, 80, 60, 20, 100, 250, 20, 1000, 150, 0, 0, 600, 200, 400, '{  petskillattack "NPC_POISON",20,0,10; },', '{  bonus bStr,1; bonus bInt,1; }\r\n');
REPLACE INTO `pet_db` VALUES(1101, 'BAPHOMET_', 'Bafomé Jr.', 642, 9024, 10001, 518, 80, 60, 10, 100, 250, 20, 200, 150, 0, 0, 1000, 100, 200, '{  petskillattack2 "NPC_DARKNESSATTACK",1776,4,0,5; },', '{  bonus bDef,1; bonus bMdef,1; bonus2 bResEff,Eff_Stun,-100; }\r\n');
REPLACE INTO `pet_db` VALUES(1109, 'DEVIRUCHI', 'Deviruchi', 641, 9023, 10004, 711, 80, 60, 10, 100, 250, 20, 500, 150, 0, 0, 800, 200, 100, '{  petskillbonus bAgiDexStr,6,20,40; },', '{  bonus bMatkRate,1; bonus bAtkRate,1; bonus bMaxHPrate,-3; bonus bMaxSPrate,-3; }\r\n');
REPLACE INTO `pet_db` VALUES(1107, 'DESERT_WOLF_B', 'Filhote de Lobo do Deserto', 628, 9010, 10003, 537, 80, 60, 40, 100, 250, 20, 1000, 150, 0, 0, 400, 400, 400, '{  petskillattack "SM_PROVOKE",1,0,5;},', '{  bonus bInt,1; bonus bMaxSP,50; }\r\n');
REPLACE INTO `pet_db` VALUES(1110, 'DOKEBI', 'Dokebi', 637, 9019, 10005, 537, 80, 60, 20, 100, 250, 20, 500, 150, 0, 0, 300, 300, 800, '{  petskillattack "BS_HAMMERFALL",1,0,10; },', '{  bonus bMatkRate,1; bonus bAtkRate,-1; }\r\n');
REPLACE INTO `pet_db` VALUES(1113, 'DROPS', 'Drops', 620, 9002, 10013, 508, 80, 60, 40, 100, 250, 20, 1500, 150, 1, 0, 300, 400, 500, '{  petloot 10; },', '{  bonus bHit,3; bonus bAtk,3; }\r\n');
REPLACE INTO `pet_db` VALUES(1155, 'PETIT', 'Petite', 640, 9022, 10011, 537, 80, 60, 20, 100, 250, 20, 500, 150, 0, 0, 800, 400, 100, '{  petskillattack2 "WZ_HEAVENDRIVE",500,1,0,10; },', '{  bonus bDef,-2; bonus bMdef,-2; bonus bAspdRate,1; }\r\n');
REPLACE INTO `pet_db` VALUES(1167, 'SAVAGE_BABE', 'Bebê Selvagem', 627, 9009, 10015, 537, 80, 60, 40, 100, 250, 20, 1500, 150, 0, 0, 500, 500, 200, '{  petskillbonus bVit,4,10,50; },', '{  bonus bVit,1; bonus bMaxHP,50; }\r\n');
REPLACE INTO `pet_db` VALUES(1170, 'SOHEE', 'Sohee', 638, 9020, 10016, 537, 80, 60, 10, 100, 250, 20, 500, 150, 0, 0, 100, 1000, 200, '{  petheal 400,60,33,100; },', '{  bonus bStr,1; bonus bDex,1; }\r\n');
REPLACE INTO `pet_db` VALUES(1188, 'BON_GUN', 'Bongun', 659, 9025, 10020, 537, 80, 60, 30, 100, 250, 20, 500, 150, 1, 0, 600, 200, 400, '{  petskillattack2 "NPC_DARKNESSATTACK",555,1,1,1; },', '{  bonus bVit,1; bonus2 bResEff,Eff_Stun,100; }\r\n');
REPLACE INTO `pet_db` VALUES(1200, 'ZHERLTHSH', 'Jirtas', 660, 9026, 0, 929, 80, 60, 10, 100, 250, 20, 300, 150, 0, 0, 1000, 100, 500, '{  petskillattack "AS_SONICBLOW",1,0,3; },', '{  bonus2 bAddRace,RC_Demihuman,2; bonus2 bMagicAddRace,RC_DemiHuman,2; }\r\n');
REPLACE INTO `pet_db` VALUES(1275, 'ALICE', 'Alice', 661, 9027, 0, 504, 80, 60, 20, 100, 250, 20, 800, 150, 0, 0, 100, 1000, 200, '{  petskillsupport "AL_HEAL",5,60,25,100; },', '{  bonus bMdef,1; bonus2 bSubRace,RC_DemiHuman,1; }\r\n');
REPLACE INTO `pet_db` VALUES(1815, 'EVENT_RICECAKE', 'Bolinho de Arroz', 0, 9028, 0, 511, 80, 60, 50, 100, 250, 20, 2000, 150, 1, 0, 500, 500, 200, '{  petskillsupport "CR_DEFENDER",3,240,50,100; },', '{  bonus2 bSubEle,Ele_Neutral,1; bonus bMaxHPrate,-1; }\r\n');
REPLACE INTO `pet_db` VALUES(1245, 'GOBLINE_XMAS', 'Goblin Natalino', 12225, 9029, 0, 911, 80, 60, 50, 100, 250, 20, 2000, 150, 0, 0, 300, 300, 800, '{  petskillattack "MG_SIGHT",5,5,5; },', '{  bonus bMaxHP,30; bonus2 bSubEle,Ele_Water,1; }\r\n');
REPLACE INTO `pet_db` VALUES(1122, 'GOBLIN_1', 'Goblin', 14569, 9032, 0, 7821, 80, 60, 50, 100, 250, 20, 800, 150, 0, 0, 300, 300, 800, '{  petskillattack "NPC_WINDATTACK",5,5,5; },', '{ }\r\n');
REPLACE INTO `pet_db` VALUES(1123, 'GOBLIN_2', 'Goblin', 14570, 9033, 0, 7821, 80, 60, 50, 100, 250, 20, 800, 150, 0, 0, 300, 300, 800, '{  petskillattack "NPC_FIREATTACK",5,5,5; },', '{ }\r\n');
REPLACE INTO `pet_db` VALUES(1125, 'GOBLIN_4', 'Goblin', 14571, 9034, 0, 7821, 80, 60, 50, 100, 250, 20, 800, 150, 0, 0, 300, 300, 800, '{  petskillattack "NPC_GROUNDATTACK",5,5,5; },', '{ }\r\n');
REPLACE INTO `pet_db` VALUES(1208, 'WANDER_MAN', 'Andarilho', 14574, 9037, 0, 7824, 80, 60, 20, 100, 250, 20, 800, 150, 0, 0, 300, 300, 800, '{  petskillattack "NPC_UNDEADATTACK",5,5,5; },', '{ }\r\n');
REPLACE INTO `pet_db` VALUES(1385, 'DELETER_', 'Deletério', 14572, 9035, 0, 7822, 80, 60, 20, 100, 250, 20, 800, 150, 0, 0, 300, 300, 800, '{  petskillattack "SM_MAGNUM",5,5,5; },', '{ }\r\n');
REPLACE INTO `pet_db` VALUES(1382, 'DIABOLIC', 'Diabólico', 14573, 9036, 0, 7823, 80, 60, 10, 100, 250, 20, 800, 150, 0, 0, 300, 300, 800, '{  petskillattack "WZ_METEOR",2,5,5; },', '{ }\r\n');
REPLACE INTO `pet_db` VALUES(1519, 'CHUNG_E', 'Chung E', 12395, 9030, 0, 6115, 80, 60, 50, 100, 250, 20, 2000, 150, 0, 0, 300, 300, 800, '{  petskillattack "CR_SHIELDCHARGE",5,5,5; },', '{  bonus bDef,1; bonus2 bSubRace,RC_DemiHuman,1; }\r\n');
REPLACE INTO `pet_db` VALUES(1322, 'SPRING_RABBIT', 'Coelho', 0, 9031, 0, 7766, 80, 60, 50, 100, 250, 20, 2000, 150, 0, 0, 300, 300, 800, '{  petskillattack "TF_THROWSTONE",1,5,5; },', '{ }\r\n');
REPLACE INTO `pet_db` VALUES(1963, 'P_CHUNG_E', 'Boneca do Ano Novo', 0, 9038, 0, 554, 80, 60, 30, 100, 250, 20, 800, 150, 0, 0, 300, 300, 800, '{  petskillattack "CR_SHIELDCHARGE",5,5,5; },', '{ }\r\n');
REPLACE INTO `pet_db` VALUES(1040, 'GOLEM', 'Golem', 12371, 9053, 10035, 6111, 80, 60, 20, 100, 250, 20, 500, 150, 0, 0, 300, 300, 800, '{ },', '{  bonus bMaxHP,100; bonus bFlee,-5; }\r\n');
REPLACE INTO `pet_db` VALUES(1143, 'MARIONETTE', 'Marionete', 12361, 9043, 10025, 6098, 80, 60, 10, 100, 250, 20, 500, 150, 0, 0, 300, 300, 800, '{ },', '{  bonus bSPrecovRate,3; }\r\n');
REPLACE INTO `pet_db` VALUES(1148, 'MEDUSA', 'Medusa', 12368, 9050, 10032, 6108, 80, 60, 10, 100, 250, 20, 200, 150, 0, 0, 300, 300, 800, '{ },', '{  bonus bVit,1; bonus2 bResEff,Eff_Stone,500; }\r\n');
REPLACE INTO `pet_db` VALUES(1179, 'WHISPER', 'Sussurro', 12363, 9045, 10027, 6100, 80, 60, 20, 100, 250, 20, 500, 150, 0, 0, 300, 300, 800, '{ },', '{  bonus bFlee,7; bonus bDef,-3; }\r\n');
REPLACE INTO `pet_db` VALUES(1299, 'GOBLIN_LEADER', 'Líder Goblin', 12364, 9046, 10028, 6104, 80, 60, 10, 100, 250, 20, 50, 150, 0, 0, 300, 300, 800, '{ },', '{  bonus2 bAddRace,RC_DemiHuman,3; }\r\n');
REPLACE INTO `pet_db` VALUES(1370, 'SUCCUBUS', 'Succubus', 12373, 9055, 10037, 6113, 80, 60, 10, 100, 250, 20, 200, 150, 0, 0, 300, 300, 800, '{ },', '{  bonus2 bHpDrainRate,50,5; }\r\n');
REPLACE INTO `pet_db` VALUES(1374, 'INCUBUS', 'Incubus', 12370, 9052, 10034, 6110, 80, 60, 10, 100, 250, 20, 50, 150, 0, 0, 300, 300, 800, '{ },', '{  bonus bMaxSPRate,5; }\r\n');
REPLACE INTO `pet_db` VALUES(1379, 'NIGHTMARE_TERROR', 'Pesadelo Sombrio', 12372, 9054, 10036, 6112, 80, 60, 10, 100, 250, 20, 200, 150, 0, 0, 300, 300, 800, '{ },', '{  bonus2 bResEff,Eff_Sleep,10000; }\r\n');
REPLACE INTO `pet_db` VALUES(1401, 'SHINOBI', 'Shinobi', 12362, 9044, 10026, 6099, 80, 60, 20, 100, 250, 20, 500, 150, 0, 0, 300, 300, 800, '{ },', '{  bonus bAgi,2; }\r\n');
REPLACE INTO `pet_db` VALUES(1404, 'MIYABI_NINGYO', 'Boneco de Miyabi', 12366, 9048, 10030, 6106, 80, 60, 15, 100, 250, 20, 200, 150, 0, 0, 300, 300, 800, '{ },', '{  bonus bInt,1; bonus bCastrate,-3; }\r\n');
REPLACE INTO `pet_db` VALUES(1416, 'WICKED_NYMPH', 'Ninfa Perversa', 12365, 9047, 10029, 6105, 80, 60, 15, 100, 250, 20, 500, 150, 0, 0, 300, 300, 800, '{ },', '{  bonus bMaxSP,30; bonus bSPrecovRate,5; }\r\n');
REPLACE INTO `pet_db` VALUES(1495, 'STONE_SHOOTER', 'Atirador de Pedras', 12369, 9051, 10033, 6109, 80, 60, 20, 100, 250, 20, 500, 150, 0, 0, 300, 300, 800, '{ },', '{  bonus2 bSubEle,Ele_Fire,3; }\r\n');
REPLACE INTO `pet_db` VALUES(1504, 'DULLAHAN', 'Dullahan', 12367, 9049, 10031, 6107, 80, 60, 10, 100, 250, 20, 200, 150, 0, 0, 300, 300, 800, '{ },', '{  bonus bCritAtkRate,5; }\r\n');
REPLACE INTO `pet_db` VALUES(1505, 'LOLI_RURI', 'Loli Ruri', 12360, 9042, 10024, 6097, 80, 60, 15, 100, 250, 20, 200, 150, 0, 0, 300, 300, 800, '{ },', '{  bonus bMaxHPRate,3; bonus3 bAutoSpellWhenHit,"AL_HEAL",1,50; }\r\n');
REPLACE INTO `pet_db` VALUES(1513, 'CIVIL_SERVANT', 'Mao Guai', 12358, 9040, 10022, 6095, 80, 60, 10, 100, 250, 20, 500, 150, 0, 0, 300, 300, 800, '{ },', '{  bonus bMaxSP,10; }\r\n');
REPLACE INTO `pet_db` VALUES(1586, 'LEAF_CAT', 'Gato de Folha', 12359, 9041, 10023, 6096, 80, 60, 20, 100, 250, 20, 200, 150, 0, 0, 300, 300, 800, '{ },', '{  bonus2 bSubRace,RC_Brute,3; }\r\n');
REPLACE INTO `pet_db` VALUES(1630, 'BACSOJIN_', 'Lady Branca', 12357, 9039, 10021, 6094, 80, 60, 10, 100, 250, 20, 2000, 150, 0, 0, 300, 300, 800, '{ },', '{ }\r\n');
REPLACE INTO `pet_db` VALUES(1837, 'IMP', 'Imp', 12374, 9056, 10038, 6114, 80, 60, 10, 100, 250, 20, 200, 150, 0, 0, 300, 300, 800, '{ },', '{  bonus2 bSubEle,Ele_Fire,2; bonus2 bAddEle,Ele_Fire,2; }\r\n');
REPLACE INTO `pet_db` VALUES(2057, 'E_CRAMP', 'Cãibra', 12408, 6221, 0, 0, 0, 0, 0, 0, 0, 0, 50, 0, 0, 0, 350, 400, 800, '{ },', '{ }\r\n');
REPLACE INTO `pet_db` VALUES(2081, 'E_HYDRA', 'Hidra', 12408, 6221, 0, 0, 0, 0, 0, 0, 0, 0, 50, 0, 0, 0, 350, 400, 800, '{ },', '{ }');

--
-- Estrutura da tabela `pet_db2`
--

CREATE TABLE IF NOT EXISTS `pet_db2` (
  `MobID` smallint(6) unsigned NOT NULL DEFAULT '0',
  `Name` text NOT NULL,
  `JName` text NOT NULL,
  `LureID` smallint(6) unsigned NOT NULL DEFAULT '0',
  `EggID` smallint(6) unsigned NOT NULL DEFAULT '0',
  `EquipID` smallint(6) unsigned NOT NULL DEFAULT '0',
  `FoodID` smallint(6) unsigned NOT NULL DEFAULT '0',
  `Fullness` smallint(6) unsigned NOT NULL DEFAULT '0',
  `HungryDelay` smallint(6) unsigned NOT NULL DEFAULT '0',
  `R_Hungry` smallint(6) unsigned NOT NULL DEFAULT '0',
  `R_Full` smallint(6) unsigned NOT NULL DEFAULT '0',
  `Intimate` smallint(6) unsigned NOT NULL DEFAULT '0',
  `Die` smallint(6) unsigned NOT NULL DEFAULT '0',
  `Capture` smallint(6) unsigned NOT NULL DEFAULT '0',
  `Speed` smallint(6) unsigned NOT NULL DEFAULT '0',
  `S_Performance` smallint(6) unsigned NOT NULL DEFAULT '0',
  `Talk_Convert_Class` smallint(6) unsigned NOT NULL DEFAULT '0',
  `Attack_Rate` smallint(6) unsigned NOT NULL DEFAULT '0',
  `Defence_Attack_Rate` smallint(6) unsigned NOT NULL DEFAULT '0',
  `Change_Target_Rate` smallint(6) unsigned NOT NULL DEFAULT '0',
  `Pet_Script` text NOT NULL,
  `Loyal_Script` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Estrutura da tabela `produce_db`
--

CREATE TABLE IF NOT EXISTS `produce_db` (
  `ProduceItemID` smallint(6) unsigned NOT NULL DEFAULT '0',
  `ItemLV` smallint(6) unsigned NOT NULL DEFAULT '0',
  `RequireSkill` smallint(6) unsigned NOT NULL DEFAULT '0',
  `RequireSkillLv` smallint(6) unsigned NOT NULL DEFAULT '0',
  `MaterialID1` smallint(6) unsigned NOT NULL DEFAULT '0',
  `MaterialAmount1` smallint(6) unsigned NOT NULL DEFAULT '0',
  `MaterialID2` smallint(6) unsigned NOT NULL DEFAULT '0',
  `MaterialAmount2` smallint(6) unsigned NOT NULL DEFAULT '0',
  `MaterialID3` smallint(6) unsigned NOT NULL DEFAULT '0',
  `MaterialAmount3` smallint(6) unsigned NOT NULL DEFAULT '0',
  `MaterialID4` smallint(6) unsigned NOT NULL DEFAULT '0',
  `MaterialAmount4` smallint(6) unsigned NOT NULL DEFAULT '0',
  `MaterialID5` smallint(6) unsigned NOT NULL DEFAULT '0',
  `MaterialAmount5` smallint(6) unsigned NOT NULL DEFAULT '0',
  `MaterialID6` smallint(6) unsigned NOT NULL DEFAULT '0',
  `MaterialAmount6` smallint(6) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

REPLACE INTO `produce_db` VALUES(1101, 1, 99, 1, 998, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1104, 1, 99, 1, 998, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1107, 1, 99, 1, 998, 45, 913, 25, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1110, 2, 99, 2, 999, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1113, 2, 99, 2, 999, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1122, 2, 99, 2, 999, 40, 920, 50, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1126, 3, 99, 3, 999, 5, 984, 8, 727, 1, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1123, 3, 99, 3, 984, 8, 999, 10, 728, 1, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1119, 3, 99, 3, 984, 8, 999, 15, 718, 1, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1129, 3, 99, 3, 984, 16, 724, 1, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1201, 1, 98, 1, 998, 1, 909, 10, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1204, 1, 98, 1, 998, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1207, 1, 98, 1, 998, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1210, 2, 98, 2, 999, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1213, 2, 98, 2, 999, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1216, 2, 98, 2, 999, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1219, 3, 98, 3, 984, 4, 999, 40, 726, 1, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1222, 3, 98, 3, 984, 4, 999, 60, 729, 1, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1116, 1, 100, 1, 998, 35, 958, 15, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1151, 2, 100, 2, 999, 25, 957, 20, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1154, 2, 100, 2, 999, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1157, 3, 100, 3, 984, 12, 999, 10, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1160, 3, 100, 3, 984, 12, 999, 20, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1163, 3, 100, 3, 984, 16, 999, 20, 733, 1, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1301, 1, 101, 1, 998, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1351, 1, 101, 1, 998, 110, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1354, 2, 101, 2, 999, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1357, 3, 101, 3, 984, 4, 999, 20, 922, 30, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1360, 3, 101, 3, 984, 8, 999, 10, 719, 1, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1501, 1, 102, 1, 998, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1504, 1, 102, 1, 998, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1507, 2, 102, 2, 999, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1510, 2, 102, 2, 999, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1519, 2, 102, 2, 999, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1513, 3, 102, 3, 999, 85, 730, 1, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1516, 3, 102, 3, 999, 100, 963, 20, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1522, 3, 102, 3, 999, 120, 968, 1, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1801, 1, 103, 1, 998, 160, 722, 1, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1803, 2, 103, 2, 999, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1805, 2, 103, 2, 999, 65, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1807, 3, 103, 3, 984, 4, 723, 10, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1809, 3, 103, 3, 984, 8, 728, 10, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1811, 3, 103, 3, 984, 4, 727, 10, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1401, 1, 104, 1, 998, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1404, 1, 104, 1, 998, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1407, 1, 104, 1, 998, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1451, 2, 104, 2, 999, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1454, 2, 104, 2, 999, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1457, 2, 104, 2, 999, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1460, 3, 104, 3, 984, 8, 999, 10, 720, 5, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1463, 3, 104, 3, 984, 12, 999, 10, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1410, 3, 104, 3, 984, 12, 723, 3, 923, 2, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(12041, 11, 0, 0, 7472, 0, 940, 5, 7031, 1, 7457, 1, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(12046, 11, 0, 0, 7472, 0, 514, 3, 501, 2, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(12051, 11, 0, 0, 7472, 0, 960, 10, 511, 10, 503, 1, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(12056, 11, 0, 0, 7472, 0, 577, 1, 908, 10, 1024, 1, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(12061, 11, 0, 0, 7472, 0, 518, 1, 514, 2, 501, 1, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(12066, 11, 0, 0, 7472, 0, 942, 5, 7031, 1, 7457, 1, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(959, 26, 2494, 1, 935, 20, 1015, 50, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(961, 26, 2494, 1, 956, 5, 929, 25, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(963, 26, 2494, 1, 944, 10, 965, 20, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1011, 26, 2494, 1, 950, 5, 752, 40, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1042, 26, 2494, 1, 920, 20, 911, 45, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1615, 26, 2494, 1, 7752, 100, 7753, 100, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(13269, 26, 2494, 1, 1093, 10, 12417, 10, 7200, 10, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(13270, 26, 2494, 1, 1093, 10, 12418, 10, 7200, 10, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(13271, 26, 2494, 1, 1093, 10, 12419, 10, 7200, 10, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(13272, 26, 2494, 1, 1093, 10, 12475, 10, 7200, 10, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(13273, 26, 2494, 1, 1093, 10, 12420, 10, 7200, 10, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(13274, 26, 2494, 1, 1093, 10, 12421, 10, 7200, 10, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(12042, 12, 0, 0, 7473, 0, 918, 20, 511, 10, 508, 10, 7454, 1, 0, 0);
REPLACE INTO `produce_db` VALUES(12052, 12, 0, 0, 7473, 0, 966, 10, 956, 5, 951, 5, 579, 1, 0, 0);
REPLACE INTO `produce_db` VALUES(12047, 12, 0, 0, 7473, 0, 510, 5, 507, 10, 508, 10, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(12057, 12, 0, 0, 7473, 0, 577, 1, 7454, 1, 1062, 5, 515, 3, 0, 0);
REPLACE INTO `produce_db` VALUES(12062, 12, 0, 0, 7473, 0, 7182, 10, 539, 1, 519, 1, 736, 1, 0, 0);
REPLACE INTO `produce_db` VALUES(12067, 12, 0, 0, 7473, 0, 531, 3, 534, 2, 533, 1, 620, 2, 0, 0);
REPLACE INTO `produce_db` VALUES(12063, 13, 0, 0, 7474, 0, 512, 5, 513, 5, 582, 5, 578, 5, 7452, 1);
REPLACE INTO `produce_db` VALUES(12048, 13, 0, 0, 7474, 0, 518, 2, 509, 10, 7452, 1, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(12043, 13, 0, 0, 7474, 0, 517, 4, 7031, 1, 511, 10, 7286, 5, 7455, 1);
REPLACE INTO `produce_db` VALUES(12053, 13, 0, 0, 7474, 0, 966, 20, 961, 10, 518, 1, 7453, 1, 0, 0);
REPLACE INTO `produce_db` VALUES(12058, 13, 0, 0, 7474, 0, 962, 10, 548, 10, 549, 5, 7453, 1, 0, 0);
REPLACE INTO `produce_db` VALUES(12068, 13, 0, 0, 7474, 0, 516, 10, 549, 10, 633, 1, 7453, 1, 0, 0);
REPLACE INTO `produce_db` VALUES(12049, 14, 0, 0, 7475, 0, 578, 10, 568, 4, 582, 10, 970, 2, 514, 5);
REPLACE INTO `produce_db` VALUES(12054, 14, 0, 0, 7475, 0, 962, 30, 509, 10, 7194, 10, 7031, 1, 1024, 20);
REPLACE INTO `produce_db` VALUES(12044, 14, 0, 0, 7475, 0, 517, 5, 507, 3, 508, 2, 511, 3, 7453, 1);
REPLACE INTO `produce_db` VALUES(12064, 14, 0, 0, 7475, 0, 580, 5, 519, 15, 548, 10, 508, 10, 517, 1);
REPLACE INTO `produce_db` VALUES(12059, 14, 0, 0, 7475, 0, 577, 3, 7455, 1, 7066, 10, 515, 10, 1062, 10);
REPLACE INTO `produce_db` VALUES(12069, 14, 0, 0, 7475, 0, 1054, 10, 945, 10, 509, 10, 579, 5, 7453, 2);
REPLACE INTO `produce_db` VALUES(12050, 15, 0, 0, 7476, 0, 522, 4, 505, 1, 970, 2, 568, 2, 7452, 1);
REPLACE INTO `produce_db` VALUES(12045, 15, 0, 0, 7476, 0, 516, 10, 518, 2, 7457, 1, 515, 3, 577, 1);
REPLACE INTO `produce_db` VALUES(12065, 15, 0, 0, 7476, 0, 520, 2, 521, 3, 7100, 10, 7198, 6, 7453, 1);
REPLACE INTO `produce_db` VALUES(12060, 15, 0, 0, 7476, 0, 7006, 20, 1062, 20, 7482, 1, 520, 10, 507, 10);
REPLACE INTO `produce_db` VALUES(12055, 15, 0, 0, 7476, 0, 553, 20, 508, 10, 7455, 1, 7456, 1, 511, 20);
REPLACE INTO `produce_db` VALUES(12070, 15, 0, 0, 7476, 0, 904, 20, 1042, 10, 7198, 10, 7031, 2, 7457, 1);
REPLACE INTO `produce_db` VALUES(12071, 16, 0, 0, 7477, 0, 517, 10, 518, 2, 508, 1, 522, 1, 954, 20);
REPLACE INTO `produce_db` VALUES(12076, 16, 0, 0, 7477, 0, 581, 3, 533, 3, 921, 20, 970, 1, 7456, 1);
REPLACE INTO `produce_db` VALUES(12091, 16, 0, 0, 7477, 0, 7164, 20, 539, 10, 548, 10, 519, 10, 620, 5);
REPLACE INTO `produce_db` VALUES(12086, 16, 0, 0, 7477, 0, 7286, 20, 567, 20, 7453, 1, 568, 20, 0, 0);
REPLACE INTO `produce_db` VALUES(12081, 16, 0, 0, 7477, 0, 7188, 20, 1033, 10, 921, 20, 581, 1, 518, 2);
REPLACE INTO `produce_db` VALUES(12096, 16, 0, 0, 7477, 0, 903, 5, 1015, 5, 705, 10, 1061, 10, 704, 1);
REPLACE INTO `produce_db` VALUES(12072, 17, 0, 0, 7478, 0, 517, 10, 7098, 1, 1003, 2, 7455, 1, 1019, 15);
REPLACE INTO `produce_db` VALUES(12077, 17, 0, 0, 7478, 0, 526, 4, 518, 2, 509, 5, 520, 10, 7452, 1);
REPLACE INTO `produce_db` VALUES(12092, 17, 0, 0, 7478, 0, 580, 10, 522, 5, 7453, 1, 708, 5, 609, 5);
REPLACE INTO `produce_db` VALUES(12087, 17, 0, 0, 7478, 0, 7003, 10, 1062, 10, 515, 10, 521, 10, 508, 10);
REPLACE INTO `produce_db` VALUES(12082, 17, 0, 0, 7478, 0, 1023, 10, 521, 5, 1028, 10, 579, 2, 537, 10);
REPLACE INTO `produce_db` VALUES(12097, 17, 0, 0, 7478, 0, 936, 10, 956, 5, 7194, 10, 517, 5, 581, 10);
REPLACE INTO `produce_db` VALUES(12073, 18, 0, 0, 7479, 0, 948, 20, 515, 10, 1062, 10, 521, 2, 520, 1);
REPLACE INTO `produce_db` VALUES(12078, 18, 0, 0, 7479, 0, 576, 4, 520, 10, 610, 3, 521, 10, 526, 6);
REPLACE INTO `produce_db` VALUES(12093, 18, 0, 0, 7479, 0, 580, 10, 526, 2, 517, 5, 578, 10, 7455, 1);
REPLACE INTO `produce_db` VALUES(12088, 18, 0, 0, 7479, 0, 606, 1, 7455, 1, 517, 10, 520, 10, 1062, 10);
REPLACE INTO `produce_db` VALUES(12083, 18, 0, 0, 7479, 0, 7298, 20, 517, 20, 622, 5, 1062, 10, 7454, 1);
REPLACE INTO `produce_db` VALUES(12098, 18, 0, 0, 7479, 0, 578, 10, 577, 5, 7298, 10, 7452, 1, 7456, 2);
REPLACE INTO `produce_db` VALUES(12074, 19, 0, 0, 7480, 0, 1050, 40, 7482, 1, 548, 10, 7455, 1, 1003, 2);
REPLACE INTO `produce_db` VALUES(12079, 19, 0, 0, 7480, 0, 610, 10, 582, 10, 970, 5, 526, 4, 505, 2);
REPLACE INTO `produce_db` VALUES(12094, 19, 0, 0, 7480, 0, 619, 5, 582, 10, 578, 10, 7456, 1, 634, 1);
REPLACE INTO `produce_db` VALUES(12089, 19, 0, 0, 7480, 0, 517, 10, 526, 5, 711, 20, 7454, 4, 508, 5);
REPLACE INTO `produce_db` VALUES(12084, 19, 0, 0, 7480, 0, 7123, 10, 1037, 20, 610, 3, 526, 6, 7455, 1);
REPLACE INTO `produce_db` VALUES(12099, 19, 0, 0, 7480, 0, 702, 1, 605, 2, 606, 2, 970, 2, 526, 6);
REPLACE INTO `produce_db` VALUES(12075, 20, 0, 0, 7481, 0, 1015, 20, 7482, 1, 970, 1, 606, 2, 7455, 1);
REPLACE INTO `produce_db` VALUES(12080, 20, 0, 0, 7481, 0, 1033, 10, 707, 1, 521, 5, 526, 5, 568, 5);
REPLACE INTO `produce_db` VALUES(12095, 20, 0, 0, 7481, 0, 607, 1, 7066, 10, 7119, 10, 526, 4, 645, 3);
REPLACE INTO `produce_db` VALUES(12090, 20, 0, 0, 7481, 0, 904, 20, 7125, 20, 606, 2, 610, 3, 621, 3);
REPLACE INTO `produce_db` VALUES(12085, 20, 0, 0, 7481, 0, 929, 20, 934, 10, 608, 1, 605, 2, 950, 10);
REPLACE INTO `produce_db` VALUES(12100, 20, 0, 0, 7481, 0, 1022, 10, 706, 2, 1033, 10, 7100, 10, 610, 4);
REPLACE INTO `produce_db` VALUES(998, 21, 94, 1, 1002, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(999, 21, 95, 1, 998, 5, 1003, 1, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1000, 21, 96, 1, 1001, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(994, 21, 96, 1, 990, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(995, 21, 96, 1, 991, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(996, 21, 96, 1, 992, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(997, 21, 96, 1, 993, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(501, 22, 228, 1, 7144, 0, 507, 1, 1093, 1, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(503, 22, 228, 1, 7144, 0, 508, 1, 1093, 1, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(504, 22, 228, 1, 7144, 0, 509, 1, 1093, 1, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(505, 22, 228, 1, 7144, 0, 510, 1, 911, 1, 1093, 1, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(545, 22, 228, 1, 7133, 0, 501, 1, 1092, 1, 952, 1, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(546, 22, 228, 1, 7133, 0, 503, 1, 1092, 1, 1017, 1, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(547, 22, 228, 1, 7133, 0, 504, 1, 1092, 1, 1061, 1, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(523, 22, 31, 1, 713, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(678, 22, 407, 1, 937, 1, 952, 1, 939, 1, 7033, 1, 972, 1, 657, 1);
REPLACE INTO `produce_db` VALUES(7135, 22, 228, 1, 7128, 0, 970, 1, 1059, 1, 713, 1, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(7136, 22, 228, 1, 7129, 0, 713, 1, 929, 1, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(7137, 22, 228, 1, 7130, 0, 713, 1, 1032, 2, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(7138, 22, 228, 1, 7131, 0, 713, 1, 1050, 1, 1051, 1, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(7139, 22, 228, 1, 7132, 0, 970, 1, 950, 1, 1044, 1, 713, 1, 0, 0);
REPLACE INTO `produce_db` VALUES(12333, 22, 2039, 1, 717, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(12118, 22, 228, 1, 7434, 0, 1012, 2, 716, 1, 1093, 1, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(12119, 22, 228, 1, 7434, 0, 950, 3, 717, 1, 1093, 1, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(12120, 22, 228, 1, 7434, 0, 7126, 2, 715, 1, 1093, 1, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(12121, 22, 228, 1, 7434, 0, 1057, 3, 717, 1, 1093, 1, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(605, 22, 228, 1, 7144, 0, 708, 1, 970, 1, 713, 1, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(606, 22, 228, 1, 7144, 0, 704, 1, 518, 1, 713, 1, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(970, 22, 228, 1, 7127, 0, 713, 1, 7033, 5, 905, 5, 1092, 1, 0, 0);
REPLACE INTO `produce_db` VALUES(7142, 22, 228, 1, 7144, 0, 7140, 1, 7141, 1, 7143, 1, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(12114, 23, 1007, 1, 7433, 1, 904, 3, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(12115, 23, 1007, 1, 7433, 1, 946, 3, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(12116, 23, 1007, 1, 7433, 1, 947, 3, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(12117, 23, 1007, 1, 7433, 1, 1013, 3, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(12731, 24, 2010, 1, 1034, 1, 7030, 1, 7939, 1, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(12728, 24, 2010, 2, 7097, 1, 7939, 1, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(12732, 24, 2010, 3, 1035, 1, 7221, 1, 7938, 1, 7939, 1, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(12733, 24, 2010, 4, 1096, 1, 7123, 1, 7939, 1, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(12729, 24, 2010, 5, 7002, 1, 7938, 1, 7939, 1, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(12730, 24, 2010, 6, 518, 1, 1048, 1, 7939, 1, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(12726, 24, 2010, 7, 716, 1, 7938, 1, 7939, 1, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(12725, 24, 2010, 8, 7069, 1, 7099, 1, 7938, 1, 7939, 1, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(12727, 24, 2010, 9, 7210, 1, 7939, 1, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(6128, 25, 2024, 5, 509, 1, 510, 1, 511, 2, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(12717, 25, 2024, 1, 7134, 1, 7155, 20, 7931, 1, 7937, 1, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(12718, 25, 2024, 4, 7134, 1, 7931, 1, 7932, 1, 7936, 1, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(12719, 25, 2024, 9, 709, 1, 950, 10, 7134, 1, 7931, 1, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(12720, 25, 2024, 3, 957, 25, 7134, 1, 7931, 1, 7935, 1, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(12721, 25, 2024, 8, 7134, 1, 7565, 10, 7931, 1, 7932, 1, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(12722, 25, 2024, 2, 7003, 20, 7134, 1, 7931, 1, 7933, 1, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(12723, 25, 2024, 7, 7033, 10, 7134, 1, 7931, 1, 7934, 1, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(12724, 25, 2024, 6, 709, 1, 7134, 1, 7565, 10, 7931, 1, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1010, 26, 2494, 1, 908, 40, 746, 40, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(971, 26, 2494, 1, 915, 40, 966, 10, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1051, 26, 2494, 1, 1098, 45, 916, 25, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1033, 26, 2494, 1, 917, 25, 1044, 20, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(974, 26, 2494, 1, 937, 15, 924, 30, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1056, 26, 2494, 1, 747, 35, 1031, 50, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1061, 26, 2494, 1, 928, 10, 735, 15, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(703, 26, 2494, 1, 744, 45, 1017, 40, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1003, 26, 2494, 1, 2101, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(999, 26, 2494, 1, 1119, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(7166, 26, 2494, 1, 1059, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1059, 26, 2494, 1, 7166, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(2267, 26, 2494, 1, 1309, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(992, 26, 2494, 1, 7066, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(968, 26, 2494, 1, 902, 5, 1018, 45, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1030, 26, 2494, 1, 906, 5, 736, 20, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1008, 26, 2494, 1, 754, 25, 1057, 35, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1064, 26, 2494, 1, 742, 30, 740, 50, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1009, 26, 2494, 1, 904, 10, 1062, 30, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(970, 26, 2494, 1, 931, 50, 932, 40, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(7063, 26, 2494, 1, 949, 30, 916, 30, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(973, 26, 2494, 1, 923, 15, 934, 30, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1038, 26, 2494, 1, 953, 5, 907, 10, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1046, 26, 2494, 1, 955, 40, 753, 5, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1045, 26, 2494, 1, 940, 45, 942, 35, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1020, 26, 2494, 1, 738, 40, 1029, 5, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1041, 26, 2494, 1, 943, 10, 1032, 30, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1026, 26, 2494, 1, 952, 30, 946, 10, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(958, 26, 2494, 1, 905, 45, 1036, 45, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1040, 26, 2494, 1, 939, 35, 1039, 45, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1012, 26, 2494, 1, 926, 20, 972, 15, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1024, 26, 2494, 1, 948, 20, 737, 25, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1025, 26, 2494, 1, 951, 50, 1048, 35, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1019, 26, 2494, 1, 930, 10, 1052, 10, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(962, 26, 2494, 1, 957, 40, 1028, 5, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1013, 26, 2494, 1, 947, 50, 912, 45, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1058, 26, 2494, 1, 749, 20, 903, 30, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(960, 26, 2494, 1, 938, 25, 1055, 45, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(967, 26, 2494, 1, 914, 5, 741, 40, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1043, 26, 2494, 1, 945, 50, 910, 10, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1035, 26, 2494, 1, 751, 50, 918, 35, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1049, 26, 2494, 1, 936, 30, 1047, 35, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1037, 26, 2494, 1, 913, 25, 1063, 35, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1021, 26, 2494, 1, 954, 15, 1053, 25, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1022, 26, 2494, 1, 919, 10, 739, 15, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1034, 26, 2494, 1, 909, 45, 745, 20, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1014, 26, 2494, 1, 743, 20, 748, 20, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(964, 26, 2494, 1, 750, 50, 1023, 30, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1050, 26, 2494, 1, 922, 25, 949, 5, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1053, 26, 2494, 1, 925, 35, 1059, 30, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(1016, 26, 2494, 1, 921, 35, 1060, 40, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(991, 26, 2494, 1, 920, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(13275, 26, 2494, 1, 6297, 10, 12422, 10, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(13276, 26, 2494, 1, 6297, 10, 12423, 10, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(13277, 26, 2494, 1, 6297, 10, 12424, 10, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(13278, 26, 2494, 1, 6297, 10, 12425, 10, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(13279, 26, 2494, 1, 6297, 10, 12426, 10, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(13280, 26, 2494, 1, 6297, 10, 12427, 10, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(13283, 26, 2494, 1, 6297, 10, 12437, 10, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(13282, 26, 2494, 1, 6297, 10, 12436, 10, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(13281, 26, 2494, 1, 6297, 10, 12428, 10, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(12429, 27, 2495, 1, 11022, 0, 6248, 1, 6249, 1, 6250, 1, 6251, 1, 0, 0);
REPLACE INTO `produce_db` VALUES(12430, 27, 2495, 1, 11022, 0, 6248, 1, 6252, 3, 6253, 2, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(12431, 27, 2495, 1, 11022, 0, 6248, 1, 6254, 2, 6255, 1, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(12432, 27, 2495, 1, 11022, 0, 6248, 1, 6256, 3, 6257, 2, 6258, 1, 0, 0);
REPLACE INTO `produce_db` VALUES(12433, 27, 2495, 1, 11022, 0, 507, 3, 509, 3, 510, 3, 6248, 1, 6255, 1);
REPLACE INTO `produce_db` VALUES(12434, 27, 2495, 1, 11022, 0, 6248, 1, 6260, 2, 6261, 1, 6262, 1, 0, 0);
REPLACE INTO `produce_db` VALUES(13260, 28, 2496, 1, 6279, 0, 512, 1, 911, 1, 1051, 1, 6244, 1, 0, 0);
REPLACE INTO `produce_db` VALUES(13261, 28, 2496, 1, 6281, 0, 1051, 1, 6263, 1, 6244, 2, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(13262, 28, 2496, 1, 6282, 0, 938, 1, 1051, 1, 6244, 2, 6264, 1, 0, 0);
REPLACE INTO `produce_db` VALUES(13263, 28, 2496, 1, 6280, 0, 952, 1, 1051, 1, 6244, 3, 6265, 1, 0, 0);
REPLACE INTO `produce_db` VALUES(13264, 28, 2496, 1, 6283, 0, 513, 1, 1051, 1, 6244, 4, 7001, 1, 0, 0);
REPLACE INTO `produce_db` VALUES(6210, 29, 2497, 1, 6284, 0, 576, 10, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(6211, 29, 2497, 1, 6284, 0, 1033, 10, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(6212, 29, 2497, 1, 6284, 0, 921, 10, 6244, 2, 7033, 5, 0, 0, 0, 0);
REPLACE INTO `produce_db` VALUES(12422, 29, 2497, 1, 11023, 0, 509, 10, 528, 5, 713, 10, 7455, 1, 0, 0);
REPLACE INTO `produce_db` VALUES(12423, 29, 2497, 1, 11023, 0, 508, 10, 509, 10, 713, 10, 7455, 1, 0, 0);
REPLACE INTO `produce_db` VALUES(12424, 29, 2497, 1, 11023, 0, 509, 15, 522, 3, 523, 1, 713, 10, 7455, 1);
REPLACE INTO `produce_db` VALUES(12425, 29, 2497, 1, 11024, 0, 514, 10, 568, 10, 713, 10, 7453, 1, 0, 0);
REPLACE INTO `produce_db` VALUES(12426, 29, 2497, 1, 11024, 0, 510, 10, 518, 10, 713, 10, 7453, 1, 0, 0);
REPLACE INTO `produce_db` VALUES(12427, 29, 2497, 1, 11024, 0, 510, 15, 526, 10, 713, 10, 7453, 1, 0, 0);
REPLACE INTO `produce_db` VALUES(12428, 29, 2497, 1, 6285, 0, 504, 20, 509, 10, 970, 1, 1092, 10, 0, 0);
REPLACE INTO `produce_db` VALUES(12436, 29, 2497, 1, 6285, 0, 510, 10, 514, 10, 518, 10, 1092, 10, 0, 0);
REPLACE INTO `produce_db` VALUES(12437, 29, 2497, 1, 6285, 0, 645, 5, 656, 5, 1092, 10, 7455, 5, 0, 0);
REPLACE INTO `produce_db` VALUES(12475, 29, 2497, 1, 6285, 0, 511, 20, 522, 1, 525, 5, 610, 1, 1092, 10);

--
-- Estrutura da tabela `skill_changematerial_db`
--

CREATE TABLE IF NOT EXISTS `skill_changematerial_db` (
  `ProductID` int(6) unsigned NOT NULL DEFAULT '0',
  `BaseRate` int(11) unsigned NOT NULL DEFAULT '0',
  `MakeAmount1` smallint(6) unsigned NOT NULL DEFAULT '0',
  `MakeAmountRate1` smallint(6) unsigned NOT NULL DEFAULT '0',
  `MakeAmount2` smallint(6) unsigned NOT NULL DEFAULT '0',
  `MakeAmountRate2` smallint(6) unsigned NOT NULL DEFAULT '0',
  `MakeAmount3` smallint(6) unsigned NOT NULL DEFAULT '0',
  `MakeAmountRate3` smallint(6) unsigned NOT NULL DEFAULT '0',
  `MakeAmount4` smallint(6) unsigned NOT NULL DEFAULT '0',
  `MakeAmountRate4` smallint(6) unsigned NOT NULL DEFAULT '0',
  `MakeAmount5` smallint(6) unsigned NOT NULL DEFAULT '0',
  `MakeAmountRate5` smallint(6) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

REPLACE INTO `skill_changematerial_db` VALUES(703, 4, 800, 2, 200, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(958, 800, 9, 1000, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(959, 800, 7, 1000, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(960, 1000, 6, 800, 9, 200, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(961, 800, 3, 1000, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(962, 1000, 4, 800, 6, 200, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(963, 800, 3, 1000, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(964, 800, 8, 1000, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(967, 800, 4, 1000, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(968, 800, 5, 1000, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(970, 800, 9, 1000, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(971, 800, 5, 1000, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(973, 800, 4, 1000, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(974, 1000, 4, 800, 6, 200, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(991, 1000, 1, 500, 1, 500, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(992, 1000, 1, 500, 1, 500, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(999, 1000, 10, 1000, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(1003, 500, 1, 1000, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(1008, 800, 6, 1000, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(1009, 800, 4, 1000, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(1010, 800, 8, 1000, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(1011, 800, 4, 1000, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(1012, 800, 3, 1000, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(1013, 9, 800, 13, 200, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(1014, 4, 800, 6, 200, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(1016, 1000, 7, 800, 10, 200, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(1019, 800, 2, 1000, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(1020, 1000, 4, 800, 6, 200, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(1021, 800, 4, 1000, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(1022, 1000, 2, 800, 3, 200, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(1024, 800, 4, 1000, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(1025, 800, 8, 1000, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(1026, 800, 4, 1000, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(1030, 800, 2, 1000, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(1033, 1000, 4, 800, 6, 200, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(1034, 1000, 6, 800, 9, 200, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(1035, 1000, 8, 800, 12, 200, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(1037, 800, 6, 1000, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(1038, 1000, 1, 1000, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(1040, 1000, 8, 800, 12, 200, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(1041, 800, 3, 1000, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(1042, 800, 6, 1000, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(1043, 800, 6, 1000, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(1045, 800, 8, 1000, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(1046, 800, 4, 1000, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(1049, 800, 6, 1000, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(1050, 800, 3, 1000, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(1051, 800, 7, 1000, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(1053, 1000, 6, 800, 9, 200, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(1056, 800, 8, 1000, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(1058, 800, 5, 1000, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(1059, 1000, 5, 1000, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(1061, 80, 2, 1000, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(1064, 800, 8, 1000, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(1615, 200, 1, 1000, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(2267, 1000, 1, 1000, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(7063, 1000, 1, 200, 1, 200, 1, 100, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(7166, 1000, 2, 1000, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(13269, 1000, 5, 500, 2, 250, 1, 100, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(13270, 1000, 5, 500, 2, 250, 1, 100, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(13271, 1000, 5, 500, 2, 250, 1, 100, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(13272, 1000, 5, 500, 2, 250, 1, 100, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(13273, 1000, 5, 500, 2, 250, 1, 100, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(13274, 1000, 5, 500, 2, 250, 1, 100, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(13275, 1000, 10, 1000, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(13276, 1000, 10, 1000, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(13277, 1000, 10, 1000, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(13278, 1000, 10, 1000, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(13279, 1000, 10, 1000, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(13280, 1000, 10, 1000, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(13281, 1000, 10, 1000, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(13282, 1000, 10, 1000, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_changematerial_db` VALUES(13283, 1000, 10, 1000, 0, 0, 0, 0, 0, 0, 0, 0);

--
-- Estrutura da tabela `skill_improvise_db`
--

CREATE TABLE IF NOT EXISTS `skill_improvise_db` (
  `SkillID` int(6) unsigned NOT NULL DEFAULT '0',
  `Rate` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`skill_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

REPLACE INTO `skill_improvise_db` VALUES(85, 2500);
REPLACE INTO `skill_improvise_db` VALUES(84, 2500);
REPLACE INTO `skill_improvise_db` VALUES(83, 2500);
REPLACE INTO `skill_improvise_db` VALUES(81, 2500);
REPLACE INTO `skill_improvise_db` VALUES(80, 2500);
REPLACE INTO `skill_improvise_db` VALUES(21, 5000);
REPLACE INTO `skill_improvise_db` VALUES(20, 5000);
REPLACE INTO `skill_improvise_db` VALUES(19, 5000);
REPLACE INTO `skill_improvise_db` VALUES(18, 5000);
REPLACE INTO `skill_improvise_db` VALUES(17, 5000);
REPLACE INTO `skill_improvise_db` VALUES(16, 5000);
REPLACE INTO `skill_improvise_db` VALUES(15, 5000);
REPLACE INTO `skill_improvise_db` VALUES(14, 5000);
REPLACE INTO `skill_improvise_db` VALUES(13, 5000);
REPLACE INTO `skill_improvise_db` VALUES(12, 5000);
REPLACE INTO `skill_improvise_db` VALUES(11, 5000);
REPLACE INTO `skill_improvise_db` VALUES(10, 5000);
REPLACE INTO `skill_improvise_db` VALUES(86, 2500);
REPLACE INTO `skill_improvise_db` VALUES(87, 2500);
REPLACE INTO `skill_improvise_db` VALUES(88, 2500);
REPLACE INTO `skill_improvise_db` VALUES(89, 2500);
REPLACE INTO `skill_improvise_db` VALUES(90, 2500);
REPLACE INTO `skill_improvise_db` VALUES(91, 2500);
REPLACE INTO `skill_improvise_db` VALUES(92, 2500);
REPLACE INTO `skill_improvise_db` VALUES(93, 2500);

--
-- Estrutura da tabela `skill_reproduce_db`
--

CREATE TABLE IF NOT EXISTS `skill_reproduce_db` (
  `SkillID` int(6) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`skill_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

REPLACE INTO `skill_reproduce_db` VALUES(5);
REPLACE INTO `skill_reproduce_db` VALUES(7);
REPLACE INTO `skill_reproduce_db` VALUES(11);
REPLACE INTO `skill_reproduce_db` VALUES(13);
REPLACE INTO `skill_reproduce_db` VALUES(14);
REPLACE INTO `skill_reproduce_db` VALUES(15);
REPLACE INTO `skill_reproduce_db` VALUES(17);
REPLACE INTO `skill_reproduce_db` VALUES(18);
REPLACE INTO `skill_reproduce_db` VALUES(19);
REPLACE INTO `skill_reproduce_db` VALUES(20);
REPLACE INTO `skill_reproduce_db` VALUES(21);
REPLACE INTO `skill_reproduce_db` VALUES(24);
REPLACE INTO `skill_reproduce_db` VALUES(28);
REPLACE INTO `skill_reproduce_db` VALUES(42);
REPLACE INTO `skill_reproduce_db` VALUES(46);
REPLACE INTO `skill_reproduce_db` VALUES(47);
REPLACE INTO `skill_reproduce_db` VALUES(52);
REPLACE INTO `skill_reproduce_db` VALUES(54);
REPLACE INTO `skill_reproduce_db` VALUES(62);
REPLACE INTO `skill_reproduce_db` VALUES(68);
REPLACE INTO `skill_reproduce_db` VALUES(69);
REPLACE INTO `skill_reproduce_db` VALUES(70);
REPLACE INTO `skill_reproduce_db` VALUES(77);
REPLACE INTO `skill_reproduce_db` VALUES(79);
REPLACE INTO `skill_reproduce_db` VALUES(80);
REPLACE INTO `skill_reproduce_db` VALUES(81);
REPLACE INTO `skill_reproduce_db` VALUES(83);
REPLACE INTO `skill_reproduce_db` VALUES(84);
REPLACE INTO `skill_reproduce_db` VALUES(85);
REPLACE INTO `skill_reproduce_db` VALUES(86);
REPLACE INTO `skill_reproduce_db` VALUES(88);
REPLACE INTO `skill_reproduce_db` VALUES(89);
REPLACE INTO `skill_reproduce_db` VALUES(90);
REPLACE INTO `skill_reproduce_db` VALUES(91);
REPLACE INTO `skill_reproduce_db` VALUES(116);
REPLACE INTO `skill_reproduce_db` VALUES(121);
REPLACE INTO `skill_reproduce_db` VALUES(122);
REPLACE INTO `skill_reproduce_db` VALUES(123);
REPLACE INTO `skill_reproduce_db` VALUES(141);
REPLACE INTO `skill_reproduce_db` VALUES(148);
REPLACE INTO `skill_reproduce_db` VALUES(152);
REPLACE INTO `skill_reproduce_db` VALUES(156);
REPLACE INTO `skill_reproduce_db` VALUES(212);
REPLACE INTO `skill_reproduce_db` VALUES(229);
REPLACE INTO `skill_reproduce_db` VALUES(230);
REPLACE INTO `skill_reproduce_db` VALUES(250);
REPLACE INTO `skill_reproduce_db` VALUES(251);
REPLACE INTO `skill_reproduce_db` VALUES(253);
REPLACE INTO `skill_reproduce_db` VALUES(254);
REPLACE INTO `skill_reproduce_db` VALUES(263);
REPLACE INTO `skill_reproduce_db` VALUES(266);
REPLACE INTO `skill_reproduce_db` VALUES(267);
REPLACE INTO `skill_reproduce_db` VALUES(271);
REPLACE INTO `skill_reproduce_db` VALUES(272);
REPLACE INTO `skill_reproduce_db` VALUES(337);
REPLACE INTO `skill_reproduce_db` VALUES(421);
REPLACE INTO `skill_reproduce_db` VALUES(526);
REPLACE INTO `skill_reproduce_db` VALUES(527);
REPLACE INTO `skill_reproduce_db` VALUES(528);
REPLACE INTO `skill_reproduce_db` VALUES(529);
REPLACE INTO `skill_reproduce_db` VALUES(531);
REPLACE INTO `skill_reproduce_db` VALUES(534);
REPLACE INTO `skill_reproduce_db` VALUES(536);
REPLACE INTO `skill_reproduce_db` VALUES(537);
REPLACE INTO `skill_reproduce_db` VALUES(539);
REPLACE INTO `skill_reproduce_db` VALUES(540);
REPLACE INTO `skill_reproduce_db` VALUES(541);
REPLACE INTO `skill_reproduce_db` VALUES(542);
REPLACE INTO `skill_reproduce_db` VALUES(1001);
REPLACE INTO `skill_reproduce_db` VALUES(1004);
REPLACE INTO `skill_reproduce_db` VALUES(1006);
REPLACE INTO `skill_reproduce_db` VALUES(1009);
REPLACE INTO `skill_reproduce_db` VALUES(1015);
REPLACE INTO `skill_reproduce_db` VALUES(2002);
REPLACE INTO `skill_reproduce_db` VALUES(2005);
REPLACE INTO `skill_reproduce_db` VALUES(2006);
REPLACE INTO `skill_reproduce_db` VALUES(2022);
REPLACE INTO `skill_reproduce_db` VALUES(2023);
REPLACE INTO `skill_reproduce_db` VALUES(2034);
REPLACE INTO `skill_reproduce_db` VALUES(2038);
REPLACE INTO `skill_reproduce_db` VALUES(2040);
REPLACE INTO `skill_reproduce_db` VALUES(2051);
REPLACE INTO `skill_reproduce_db` VALUES(2054);
REPLACE INTO `skill_reproduce_db` VALUES(2202);
REPLACE INTO `skill_reproduce_db` VALUES(2203);
REPLACE INTO `skill_reproduce_db` VALUES(2204);
REPLACE INTO `skill_reproduce_db` VALUES(2210);
REPLACE INTO `skill_reproduce_db` VALUES(2211);
REPLACE INTO `skill_reproduce_db` VALUES(2212);
REPLACE INTO `skill_reproduce_db` VALUES(2213);
REPLACE INTO `skill_reproduce_db` VALUES(2214);
REPLACE INTO `skill_reproduce_db` VALUES(2216);
REPLACE INTO `skill_reproduce_db` VALUES(2233);
REPLACE INTO `skill_reproduce_db` VALUES(2236);
REPLACE INTO `skill_reproduce_db` VALUES(2239);
REPLACE INTO `skill_reproduce_db` VALUES(2253);
REPLACE INTO `skill_reproduce_db` VALUES(2254);
REPLACE INTO `skill_reproduce_db` VALUES(2284);
REPLACE INTO `skill_reproduce_db` VALUES(2288);
REPLACE INTO `skill_reproduce_db` VALUES(2304);
REPLACE INTO `skill_reproduce_db` VALUES(2310);
REPLACE INTO `skill_reproduce_db` VALUES(2315);
REPLACE INTO `skill_reproduce_db` VALUES(2316);
REPLACE INTO `skill_reproduce_db` VALUES(2320);
REPLACE INTO `skill_reproduce_db` VALUES(2323);
REPLACE INTO `skill_reproduce_db` VALUES(2326);
REPLACE INTO `skill_reproduce_db` VALUES(2327);
REPLACE INTO `skill_reproduce_db` VALUES(2328);
REPLACE INTO `skill_reproduce_db` VALUES(2330);
REPLACE INTO `skill_reproduce_db` VALUES(2332);
REPLACE INTO `skill_reproduce_db` VALUES(2336);
REPLACE INTO `skill_reproduce_db` VALUES(2337);
REPLACE INTO `skill_reproduce_db` VALUES(2343);
REPLACE INTO `skill_reproduce_db` VALUES(2344);
REPLACE INTO `skill_reproduce_db` VALUES(2413);
REPLACE INTO `skill_reproduce_db` VALUES(2414);
REPLACE INTO `skill_reproduce_db` VALUES(2418);
REPLACE INTO `skill_reproduce_db` VALUES(2443);
REPLACE INTO `skill_reproduce_db` VALUES(2444);
REPLACE INTO `skill_reproduce_db` VALUES(2446);
REPLACE INTO `skill_reproduce_db` VALUES(2447);
REPLACE INTO `skill_reproduce_db` VALUES(2448);
REPLACE INTO `skill_reproduce_db` VALUES(2449);
REPLACE INTO `skill_reproduce_db` VALUES(2450);
REPLACE INTO `skill_reproduce_db` VALUES(2454);
REPLACE INTO `skill_reproduce_db` VALUES(2479);
REPLACE INTO `skill_reproduce_db` VALUES(2480);
REPLACE INTO `skill_reproduce_db` VALUES(2481);
REPLACE INTO `skill_reproduce_db` VALUES(2482);
REPLACE INTO `skill_reproduce_db` VALUES(2483);
REPLACE INTO `skill_reproduce_db` VALUES(2490);
REPLACE INTO `skill_reproduce_db` VALUES(2517);
REPLACE INTO `skill_reproduce_db` VALUES(2518);

--
-- Estrutura da tabela `spellbook_db`
--

CREATE TABLE IF NOT EXISTS `spellbook_db` (
  `SkillID` int(6) unsigned NOT NULL DEFAULT '0',
  `PreservePoints` int(6) unsigned NOT NULL DEFAULT '0',
  `RequiredBook` int(6) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`skill_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `spellbook_db` VALUES(14, 7, 6190);
INSERT INTO `spellbook_db` VALUES(19, 7, 6189);
INSERT INTO `spellbook_db` VALUES(20, 7, 6191);
INSERT INTO `spellbook_db` VALUES(21, 9, 6197);
INSERT INTO `spellbook_db` VALUES(83, 10, 6194);
INSERT INTO `spellbook_db` VALUES(84, 9, 6198);
INSERT INTO `spellbook_db` VALUES(85, 10, 6193);
INSERT INTO `spellbook_db` VALUES(86, 9, 6199);
INSERT INTO `spellbook_db` VALUES(89, 10, 6192);
INSERT INTO `spellbook_db` VALUES(90, 8, 6201);
INSERT INTO `spellbook_db` VALUES(91, 9, 6200);
INSERT INTO `spellbook_db` VALUES(2210, 8, 6205);
INSERT INTO `spellbook_db` VALUES(2211, 12, 6204);
INSERT INTO `spellbook_db` VALUES(2213, 22, 6195);
INSERT INTO `spellbook_db` VALUES(2214, 12, 6203);
INSERT INTO `spellbook_db` VALUES(2216, 12, 6202);
INSERT INTO `spellbook_db` VALUES(2217, 22, 6196);