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

--
-- Estrutura da tabela `quest_db`
--

CREATE TABLE IF NOT EXISTS `quest_db` (
  `QuestID` int(11) unsigned NOT NULL DEFAULT '0',
  `TimeLimit` int(11) unsigned NOT NULL DEFAULT '0',
  `Target1` int(11) unsigned NOT NULL DEFAULT '0',
  `Val1` int(11) unsigned NOT NULL DEFAULT '0',
  `Target2` int(11) unsigned NOT NULL DEFAULT '0',
  `Val2` int(11) unsigned NOT NULL DEFAULT '0',
  `Target3` int(11) unsigned NOT NULL DEFAULT '0',
  `Val3` int(11) unsigned NOT NULL DEFAULT '0',
  `QuestTitle` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

REPLACE INTO `quest_db` VALUES(1000, 0, 0, 0, 0, 0, 0, 0, '"Transclasse"\r\n');
REPLACE INTO `quest_db` VALUES(1001, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Noviço"\r\n');
REPLACE INTO `quest_db` VALUES(1002, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Noviço"\r\n');
REPLACE INTO `quest_db` VALUES(1003, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Noviço"\r\n');
REPLACE INTO `quest_db` VALUES(1004, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Arqueiro"\r\n');
REPLACE INTO `quest_db` VALUES(1005, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Mago"\r\n');
REPLACE INTO `quest_db` VALUES(1006, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Mago"\r\n');
REPLACE INTO `quest_db` VALUES(1007, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Mago"\r\n');
REPLACE INTO `quest_db` VALUES(1008, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Mago"\r\n');
REPLACE INTO `quest_db` VALUES(1009, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Mercador"\r\n');
REPLACE INTO `quest_db` VALUES(1010, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Mercador"\r\n');
REPLACE INTO `quest_db` VALUES(1011, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Mercador"\r\n');
REPLACE INTO `quest_db` VALUES(1012, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Mercador"\r\n');
REPLACE INTO `quest_db` VALUES(1013, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Gatuno"\r\n');
REPLACE INTO `quest_db` VALUES(1014, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Espadachim"\r\n');
REPLACE INTO `quest_db` VALUES(1015, 0, 0, 0, 0, 0, 0, 0, '"Seu primeiro desafio"\r\n');
REPLACE INTO `quest_db` VALUES(1016, 0, 0, 0, 0, 0, 0, 0, '"Ganhando níveis de base"\r\n');
REPLACE INTO `quest_db` VALUES(2000, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Ferreiro"\r\n');
REPLACE INTO `quest_db` VALUES(2001, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Ferreiro"\r\n');
REPLACE INTO `quest_db` VALUES(2002, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Ferreiro"\r\n');
REPLACE INTO `quest_db` VALUES(2003, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Ferreiro"\r\n');
REPLACE INTO `quest_db` VALUES(2004, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Ferreiro"\r\n');
REPLACE INTO `quest_db` VALUES(2005, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Ferreiro"\r\n');
REPLACE INTO `quest_db` VALUES(2006, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Ferreiro"\r\n');
REPLACE INTO `quest_db` VALUES(2007, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Ferreiro"\r\n');
REPLACE INTO `quest_db` VALUES(2008, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Ferreiro"\r\n');
REPLACE INTO `quest_db` VALUES(2009, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Ferreiro"\r\n');
REPLACE INTO `quest_db` VALUES(2010, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Ferreiro"\r\n');
REPLACE INTO `quest_db` VALUES(2011, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Ferreiro"\r\n');
REPLACE INTO `quest_db` VALUES(2012, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Ferreiro"\r\n');
REPLACE INTO `quest_db` VALUES(2013, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Ferreiro"\r\n');
REPLACE INTO `quest_db` VALUES(2014, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Ferreiro"\r\n');
REPLACE INTO `quest_db` VALUES(2015, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Ferreiro"\r\n');
REPLACE INTO `quest_db` VALUES(2016, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Ferreiro"\r\n');
REPLACE INTO `quest_db` VALUES(2017, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Arruaceiro"\r\n');
REPLACE INTO `quest_db` VALUES(2018, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Arruaceiro"\r\n');
REPLACE INTO `quest_db` VALUES(2019, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Arruaceiro"\r\n');
REPLACE INTO `quest_db` VALUES(2020, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Arruaceiro"\r\n');
REPLACE INTO `quest_db` VALUES(2021, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Arruaceiro"\r\n');
REPLACE INTO `quest_db` VALUES(2022, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Arruaceiro"\r\n');
REPLACE INTO `quest_db` VALUES(2023, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Arruaceiro"\r\n');
REPLACE INTO `quest_db` VALUES(2024, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Arruaceiro"\r\n');
REPLACE INTO `quest_db` VALUES(2025, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Arruaceiro"\r\n');
REPLACE INTO `quest_db` VALUES(2026, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Arruaceiro"\r\n');
REPLACE INTO `quest_db` VALUES(2027, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Arruaceiro"\r\n');
REPLACE INTO `quest_db` VALUES(2028, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Alquimista"\r\n');
REPLACE INTO `quest_db` VALUES(2029, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Alquimista"\r\n');
REPLACE INTO `quest_db` VALUES(2030, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Alquimista"\r\n');
REPLACE INTO `quest_db` VALUES(2031, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Alquimista"\r\n');
REPLACE INTO `quest_db` VALUES(2032, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Alquimista"\r\n');
REPLACE INTO `quest_db` VALUES(2033, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Alquimista"\r\n');
REPLACE INTO `quest_db` VALUES(2034, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Alquimista"\r\n');
REPLACE INTO `quest_db` VALUES(2035, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Alquimista"\r\n');
REPLACE INTO `quest_db` VALUES(2036, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Alquimista"\r\n');
REPLACE INTO `quest_db` VALUES(2037, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Alquimista"\r\n');
REPLACE INTO `quest_db` VALUES(2038, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Alquimista"\r\n');
REPLACE INTO `quest_db` VALUES(2039, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Alquimista"\r\n');
REPLACE INTO `quest_db` VALUES(2040, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Alquimista"\r\n');
REPLACE INTO `quest_db` VALUES(2041, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Sábio"\r\n');
REPLACE INTO `quest_db` VALUES(2042, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Sábio"\r\n');
REPLACE INTO `quest_db` VALUES(2043, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Sábio"\r\n');
REPLACE INTO `quest_db` VALUES(2044, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Sábio"\r\n');
REPLACE INTO `quest_db` VALUES(2045, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Sábio"\r\n');
REPLACE INTO `quest_db` VALUES(2046, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Sábio"\r\n');
REPLACE INTO `quest_db` VALUES(2047, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Sábio"\r\n');
REPLACE INTO `quest_db` VALUES(2048, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Sábio"\r\n');
REPLACE INTO `quest_db` VALUES(2049, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Sábio"\r\n');
REPLACE INTO `quest_db` VALUES(2050, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Sábio"\r\n');
REPLACE INTO `quest_db` VALUES(2051, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Sábio"\r\n');
REPLACE INTO `quest_db` VALUES(2052, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Sábio"\r\n');
REPLACE INTO `quest_db` VALUES(2053, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Sábio"\r\n');
REPLACE INTO `quest_db` VALUES(2054, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Sábio"\r\n');
REPLACE INTO `quest_db` VALUES(2055, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Sábio"\r\n');
REPLACE INTO `quest_db` VALUES(2056, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Sábio"\r\n');
REPLACE INTO `quest_db` VALUES(2057, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Sábio"\r\n');
REPLACE INTO `quest_db` VALUES(2058, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Sábio"\r\n');
REPLACE INTO `quest_db` VALUES(2059, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Sábio"\r\n');
REPLACE INTO `quest_db` VALUES(2060, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Sábio"\r\n');
REPLACE INTO `quest_db` VALUES(2061, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Sábio"\r\n');
REPLACE INTO `quest_db` VALUES(2062, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Sábio"\r\n');
REPLACE INTO `quest_db` VALUES(2063, 0, 0, 0, 0, 0, 0, 0, '"O Corvo do Destino"\r\n');
REPLACE INTO `quest_db` VALUES(2064, 0, 0, 0, 0, 0, 0, 0, '"O Corvo do Destino"\r\n');
REPLACE INTO `quest_db` VALUES(2065, 0, 0, 0, 0, 0, 0, 0, '"O Corvo do Destino"\r\n');
REPLACE INTO `quest_db` VALUES(2066, 0, 0, 0, 0, 0, 0, 0, '"O Corvo do Destino"\r\n');
REPLACE INTO `quest_db` VALUES(2067, 0, 0, 0, 0, 0, 0, 0, '"O Corvo do Destino"\r\n');
REPLACE INTO `quest_db` VALUES(2068, 0, 0, 0, 0, 0, 0, 0, '"O Corvo do Destino"\r\n');
REPLACE INTO `quest_db` VALUES(2069, 300, 0, 0, 0, 0, 0, 0, '"Desfiladeiro de Tierra"\r\n');
REPLACE INTO `quest_db` VALUES(2070, 300, 0, 0, 0, 0, 0, 0, '"Arena de Flavius"\r\n');
REPLACE INTO `quest_db` VALUES(2071, 0, 0, 0, 0, 0, 0, 0, '"Propriedade Maldita"\r\n');
REPLACE INTO `quest_db` VALUES(2072, 0, 0, 0, 0, 0, 0, 0, '"Propriedade Maldita"\r\n');
REPLACE INTO `quest_db` VALUES(2073, 0, 0, 0, 0, 0, 0, 0, '"Propriedade Maldita"\r\n');
REPLACE INTO `quest_db` VALUES(2074, 0, 0, 0, 0, 0, 0, 0, '"Propriedade Maldita"\r\n');
REPLACE INTO `quest_db` VALUES(2075, 0, 0, 0, 0, 0, 0, 0, '"Propriedade Maldita"\r\n');
REPLACE INTO `quest_db` VALUES(2076, 0, 0, 0, 0, 0, 0, 0, '"Propriedade Maldita"\r\n');
REPLACE INTO `quest_db` VALUES(2077, 0, 0, 0, 0, 0, 0, 0, '"Propriedade Maldita"\r\n');
REPLACE INTO `quest_db` VALUES(2078, 0, 0, 0, 0, 0, 0, 0, '"Herança Amaldiçoada"\r\n');
REPLACE INTO `quest_db` VALUES(2079, 0, 0, 0, 0, 0, 0, 0, '"O passado deu errado"\r\n');
REPLACE INTO `quest_db` VALUES(2080, 0, 0, 0, 0, 0, 0, 0, '"O passado deu errado"\r\n');
REPLACE INTO `quest_db` VALUES(2081, 0, 0, 0, 0, 0, 0, 0, '"O passado deu errado"\r\n');
REPLACE INTO `quest_db` VALUES(2082, 0, 0, 0, 0, 0, 0, 0, '"O passado deu errado"\r\n');
REPLACE INTO `quest_db` VALUES(2083, 0, 0, 0, 0, 0, 0, 0, '"O passado deu errado"\r\n');
REPLACE INTO `quest_db` VALUES(2084, 0, 0, 0, 0, 0, 0, 0, '"O passado deu errado"\r\n');
REPLACE INTO `quest_db` VALUES(2085, 0, 0, 0, 0, 0, 0, 0, '"O passado deu errado"\r\n');
REPLACE INTO `quest_db` VALUES(2086, 0, 0, 0, 0, 0, 0, 0, '"A Empresa"\r\n');
REPLACE INTO `quest_db` VALUES(2087, 0, 0, 0, 0, 0, 0, 0, '"A Empresa"\r\n');
REPLACE INTO `quest_db` VALUES(2088, 0, 0, 0, 0, 0, 0, 0, '"A Empresa"\r\n');
REPLACE INTO `quest_db` VALUES(2089, 0, 0, 0, 0, 0, 0, 0, '"A Empresa"\r\n');
REPLACE INTO `quest_db` VALUES(2090, 0, 0, 0, 0, 0, 0, 0, '"A Empresa"\r\n');
REPLACE INTO `quest_db` VALUES(2091, 0, 0, 0, 0, 0, 0, 0, '"A Empresa"\r\n');
REPLACE INTO `quest_db` VALUES(2092, 0, 0, 0, 0, 0, 0, 0, '"A Empresa"\r\n');
REPLACE INTO `quest_db` VALUES(2093, 0, 0, 0, 0, 0, 0, 0, '"A Empresa"\r\n');
REPLACE INTO `quest_db` VALUES(2094, 0, 0, 0, 0, 0, 0, 0, '"A Empresa"\r\n');
REPLACE INTO `quest_db` VALUES(2095, 0, 0, 0, 0, 0, 0, 0, '"A Empresa"\r\n');
REPLACE INTO `quest_db` VALUES(2109, 0, 0, 0, 0, 0, 0, 0, '"Mago na Caverna de Gelo"\r\n');
REPLACE INTO `quest_db` VALUES(2110, 0, 0, 0, 0, 0, 0, 0, '"Mago na Caverna de Gelo"\r\n');
REPLACE INTO `quest_db` VALUES(2111, 0, 0, 0, 0, 0, 0, 0, '"Mago na Caverna de Gelo"\r\n');
REPLACE INTO `quest_db` VALUES(2112, 0, 0, 0, 0, 0, 0, 0, '"Mago na Caverna de Gelo"\r\n');
REPLACE INTO `quest_db` VALUES(2113, 0, 0, 0, 0, 0, 0, 0, '"Mago na Caverna de Gelo"\r\n');
REPLACE INTO `quest_db` VALUES(2114, 0, 0, 0, 0, 0, 0, 0, '"A Base do Vulcão de Thor"\r\n');
REPLACE INTO `quest_db` VALUES(2115, 0, 0, 0, 0, 0, 0, 0, '"A Base do Vulcão de Thor"\r\n');
REPLACE INTO `quest_db` VALUES(2116, 0, 0, 0, 0, 0, 0, 0, '"A Base do Vulcão de Thor"\r\n');
REPLACE INTO `quest_db` VALUES(2117, 0, 0, 0, 0, 0, 0, 0, '"A Base do Vulcão de Thor"\r\n');
REPLACE INTO `quest_db` VALUES(2118, 0, 0, 0, 0, 0, 0, 0, '"A Base do Vulcão de Thor"\r\n');
REPLACE INTO `quest_db` VALUES(2119, 0, 0, 0, 0, 0, 0, 0, '"A Base do Vulcão de Thor"\r\n');
REPLACE INTO `quest_db` VALUES(2120, 0, 0, 0, 0, 0, 0, 0, '"A Base do Vulcão de Thor"\r\n');
REPLACE INTO `quest_db` VALUES(2121, 0, 0, 0, 0, 0, 0, 0, '"A Base do Vulcão de Thor"\r\n');
REPLACE INTO `quest_db` VALUES(2122, 0, 0, 0, 0, 0, 0, 0, '"A Base do Vulcão de Thor"\r\n');
REPLACE INTO `quest_db` VALUES(2123, 0, 0, 0, 0, 0, 0, 0, '"A Base do Vulcão de Thor"\r\n');
REPLACE INTO `quest_db` VALUES(2124, 0, 0, 0, 0, 0, 0, 0, '"A Base do Vulcão de Thor"\r\n');
REPLACE INTO `quest_db` VALUES(2125, 0, 0, 0, 0, 0, 0, 0, '"A Base do Vulcão de Thor"\r\n');
REPLACE INTO `quest_db` VALUES(2126, 0, 0, 0, 0, 0, 0, 0, '"A Base do Vulcão de Thor"\r\n');
REPLACE INTO `quest_db` VALUES(2127, 0, 0, 0, 0, 0, 0, 0, '"A Base do Vulcão de Thor"\r\n');
REPLACE INTO `quest_db` VALUES(2128, 0, 0, 0, 0, 0, 0, 0, '"A Base do Vulcão de Thor"\r\n');
REPLACE INTO `quest_db` VALUES(2129, 0, 0, 0, 0, 0, 0, 0, '"A Base do Vulcão de Thor"\r\n');
REPLACE INTO `quest_db` VALUES(2130, 0, 0, 0, 0, 0, 0, 0, '"A Base do Vulcão de Thor"\r\n');
REPLACE INTO `quest_db` VALUES(2131, 0, 0, 0, 0, 0, 0, 0, '"A Base do Vulcão de Thor"\r\n');
REPLACE INTO `quest_db` VALUES(2132, 0, 0, 0, 0, 0, 0, 0, '"Para Arunafeltz"\r\n');
REPLACE INTO `quest_db` VALUES(2133, 0, 0, 0, 0, 0, 0, 0, '"Para Arunafeltz"\r\n');
REPLACE INTO `quest_db` VALUES(2134, 0, 0, 0, 0, 0, 0, 0, '"Para Arunafeltz"\r\n');
REPLACE INTO `quest_db` VALUES(2135, 0, 0, 0, 0, 0, 0, 0, '"Para Arunafeltz"\r\n');
REPLACE INTO `quest_db` VALUES(2136, 0, 0, 0, 0, 0, 0, 0, '"Para Arunafeltz"\r\n');
REPLACE INTO `quest_db` VALUES(2137, 0, 0, 0, 0, 0, 0, 0, '"Para Arunafeltz"\r\n');
REPLACE INTO `quest_db` VALUES(2138, 0, 0, 0, 0, 0, 0, 0, '"Para Arunafeltz"\r\n');
REPLACE INTO `quest_db` VALUES(2139, 0, 0, 0, 0, 0, 0, 0, '"Para Arunafeltz"\r\n');
REPLACE INTO `quest_db` VALUES(2140, 0, 0, 0, 0, 0, 0, 0, '"Para Arunafeltz"\r\n');
REPLACE INTO `quest_db` VALUES(2141, 0, 0, 0, 0, 0, 0, 0, '"Para Arunafeltz"\r\n');
REPLACE INTO `quest_db` VALUES(2142, 0, 0, 0, 0, 0, 0, 0, '"Para Arunafeltz"\r\n');
REPLACE INTO `quest_db` VALUES(2143, 50, 0, 0, 0, 0, 0, 0, '"Calabouço de Clãs"\r\n');
REPLACE INTO `quest_db` VALUES(2144, 0, 0, 0, 0, 0, 0, 0, '"Calabouço de Clãs"\r\n');
REPLACE INTO `quest_db` VALUES(2147, 0, 0, 0, 0, 0, 0, 0, '"Nova Atitude"\r\n');
REPLACE INTO `quest_db` VALUES(2148, 0, 0, 0, 0, 0, 0, 0, '"Nova Atitude"\r\n');
REPLACE INTO `quest_db` VALUES(2149, 0, 0, 0, 0, 0, 0, 0, '"Nova Atitude"\r\n');
REPLACE INTO `quest_db` VALUES(2150, 0, 1995, 30, 0, 0, 0, 0, '"Nova Atitude"\r\n');
REPLACE INTO `quest_db` VALUES(2151, 0, 1992, 10, 0, 0, 0, 0, '"Nova Atitude"\r\n');
REPLACE INTO `quest_db` VALUES(2152, 0, 0, 0, 0, 0, 0, 0, '"Atitude Certa"\r\n');
REPLACE INTO `quest_db` VALUES(2153, 0, 0, 0, 0, 0, 0, 0, '"Atitude Certa"\r\n');
REPLACE INTO `quest_db` VALUES(2154, 0, 0, 0, 0, 0, 0, 0, '"Atitude Certa"\r\n');
REPLACE INTO `quest_db` VALUES(2155, 0, 0, 0, 0, 0, 0, 0, '"Atitude Certa"\r\n');
REPLACE INTO `quest_db` VALUES(2156, 0, 0, 0, 0, 0, 0, 0, '"Atitude Certa"\r\n');
REPLACE INTO `quest_db` VALUES(2157, 0, 1986, 10, 0, 0, 0, 0, '"Atitude Certa"\r\n');
REPLACE INTO `quest_db` VALUES(2158, 0, 0, 0, 0, 0, 0, 0, '"A Fada"\r\n');
REPLACE INTO `quest_db` VALUES(2159, 0, 0, 0, 0, 0, 0, 0, '"O Homem-Árvore"\r\n');
REPLACE INTO `quest_db` VALUES(2179, 0, 0, 0, 0, 0, 0, 0, '"A Pesquisa Continua"\r\n');
REPLACE INTO `quest_db` VALUES(2180, 0, 0, 0, 0, 0, 0, 0, '"A Pesquisa Continua"\r\n');
REPLACE INTO `quest_db` VALUES(2181, 0, 0, 0, 0, 0, 0, 0, '"A Pesquisa Continua"\r\n');
REPLACE INTO `quest_db` VALUES(2182, 64800, 0, 0, 0, 0, 0, 0, '"Minerais Brutos"\r\n');
REPLACE INTO `quest_db` VALUES(2183, 0, 0, 0, 0, 0, 0, 0, '"Perfume"\r\n');
REPLACE INTO `quest_db` VALUES(2184, 0, 0, 0, 0, 0, 0, 0, '"Perfume"\r\n');
REPLACE INTO `quest_db` VALUES(2185, 0, 0, 0, 0, 0, 0, 0, '"Perfume"\r\n');
REPLACE INTO `quest_db` VALUES(2186, 64800, 0, 0, 0, 0, 0, 0, '"Perfume"\r\n');
REPLACE INTO `quest_db` VALUES(2187, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Arcebispo"\r\n');
REPLACE INTO `quest_db` VALUES(2188, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Arcebispo"\r\n');
REPLACE INTO `quest_db` VALUES(2189, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Arcebispo"\r\n');
REPLACE INTO `quest_db` VALUES(2190, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Arcebispo"\r\n');
REPLACE INTO `quest_db` VALUES(2191, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Arcebispo"\r\n');
REPLACE INTO `quest_db` VALUES(2192, 0, 0, 0, 0, 0, 0, 0, '"Quest Guaraná"\r\n');
REPLACE INTO `quest_db` VALUES(2193, 0, 0, 0, 0, 0, 0, 0, '"Quest Guaraná"\r\n');
REPLACE INTO `quest_db` VALUES(2194, 0, 0, 0, 0, 0, 0, 0, '"Quest Guaraná"\r\n');
REPLACE INTO `quest_db` VALUES(2195, 0, 0, 0, 0, 0, 0, 0, '"Quest Guaraná"\r\n');
REPLACE INTO `quest_db` VALUES(2196, 0, 0, 0, 0, 0, 0, 0, '"Quest Guaraná"\r\n');
REPLACE INTO `quest_db` VALUES(2197, 0, 0, 0, 0, 0, 0, 0, '"Quest Guaraná"\r\n');
REPLACE INTO `quest_db` VALUES(2198, 0, 0, 0, 0, 0, 0, 0, '"Quest Guaraná"\r\n');
REPLACE INTO `quest_db` VALUES(2199, 0, 0, 0, 0, 0, 0, 0, '"Quest Guaraná"\r\n');
REPLACE INTO `quest_db` VALUES(2200, 0, 0, 0, 0, 0, 0, 0, '"Quest Guaraná"\r\n');
REPLACE INTO `quest_db` VALUES(2201, 0, 0, 0, 0, 0, 0, 0, '"Brasilis Vitória Régia"\r\n');
REPLACE INTO `quest_db` VALUES(2202, 0, 0, 0, 0, 0, 0, 0, '"Brasilis Vitória Régia"\r\n');
REPLACE INTO `quest_db` VALUES(2203, 0, 0, 0, 0, 0, 0, 0, '"Brasilis Vitória Régia"\r\n');
REPLACE INTO `quest_db` VALUES(2204, 0, 0, 0, 0, 0, 0, 0, '"Brasilis Vitória Régia"\r\n');
REPLACE INTO `quest_db` VALUES(2205, 0, 0, 0, 0, 0, 0, 0, '"Brasilis Vitória Régia"\r\n');
REPLACE INTO `quest_db` VALUES(2206, 0, 0, 0, 0, 0, 0, 0, '"Brasilis Vitória Régia"\r\n');
REPLACE INTO `quest_db` VALUES(2207, 0, 0, 0, 0, 0, 0, 0, '"Brasilis Vitória Régia"\r\n');
REPLACE INTO `quest_db` VALUES(2208, 0, 0, 0, 0, 0, 0, 0, '"Loira do Banheiro"\r\n');
REPLACE INTO `quest_db` VALUES(2209, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Bioquímico"\r\n');
REPLACE INTO `quest_db` VALUES(2210, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Bioquímico"\r\n');
REPLACE INTO `quest_db` VALUES(2211, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Bioquímico"\r\n');
REPLACE INTO `quest_db` VALUES(2212, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Bioquímico"\r\n');
REPLACE INTO `quest_db` VALUES(2213, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Bioquímico"\r\n');
REPLACE INTO `quest_db` VALUES(2214, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Bioquímico"\r\n');
REPLACE INTO `quest_db` VALUES(2215, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Bioquímico"\r\n');
REPLACE INTO `quest_db` VALUES(2216, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Bioquímico"\r\n');
REPLACE INTO `quest_db` VALUES(2217, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Bioquímico"\r\n');
REPLACE INTO `quest_db` VALUES(2218, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Musa"\r\n');
REPLACE INTO `quest_db` VALUES(2219, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Musa"\r\n');
REPLACE INTO `quest_db` VALUES(2220, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Musa"\r\n');
REPLACE INTO `quest_db` VALUES(2221, 600, 1718, 50, 0, 0, 0, 0, '"Mudança de Classe: Musa"\r\n');
REPLACE INTO `quest_db` VALUES(2222, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Musa\r\n');
REPLACE INTO `quest_db` VALUES(2223, 0, 1428, 100, 0, 0, 0, 0, '"Mudança de Classe: Bioquímico"\r\n');
REPLACE INTO `quest_db` VALUES(3000, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Bardo"\r\n');
REPLACE INTO `quest_db` VALUES(3001, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Bardo"\r\n');
REPLACE INTO `quest_db` VALUES(3002, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Bardo"\r\n');
REPLACE INTO `quest_db` VALUES(3003, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Bardo"\r\n');
REPLACE INTO `quest_db` VALUES(3004, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Bardo"\r\n');
REPLACE INTO `quest_db` VALUES(3006, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Templário"\r\n');
REPLACE INTO `quest_db` VALUES(3007, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Templário"\r\n');
REPLACE INTO `quest_db` VALUES(3008, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Templário"\r\n');
REPLACE INTO `quest_db` VALUES(3009, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Templário"\r\n');
REPLACE INTO `quest_db` VALUES(3010, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Templário"\r\n');
REPLACE INTO `quest_db` VALUES(3011, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Templário"\r\n');
REPLACE INTO `quest_db` VALUES(3012, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Templário"\r\n');
REPLACE INTO `quest_db` VALUES(3013, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Templário"\r\n');
REPLACE INTO `quest_db` VALUES(3014, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Templário"\r\n');
REPLACE INTO `quest_db` VALUES(3015, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Templário"\r\n');
REPLACE INTO `quest_db` VALUES(3016, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Monge"\r\n');
REPLACE INTO `quest_db` VALUES(3017, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Monge"\r\n');
REPLACE INTO `quest_db` VALUES(3018, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Monge"\r\n');
REPLACE INTO `quest_db` VALUES(3019, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Monge"\r\n');
REPLACE INTO `quest_db` VALUES(3020, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Monge"\r\n');
REPLACE INTO `quest_db` VALUES(3021, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Monge"\r\n');
REPLACE INTO `quest_db` VALUES(3022, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Monge"\r\n');
REPLACE INTO `quest_db` VALUES(3023, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Monge"\r\n');
REPLACE INTO `quest_db` VALUES(3024, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Monge"\r\n');
REPLACE INTO `quest_db` VALUES(3025, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Monge"\r\n');
REPLACE INTO `quest_db` VALUES(3026, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Monge"\r\n');
REPLACE INTO `quest_db` VALUES(3027, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Monge"\r\n');
REPLACE INTO `quest_db` VALUES(3028, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Monge"\r\n');
REPLACE INTO `quest_db` VALUES(3029, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Monge"\r\n');
REPLACE INTO `quest_db` VALUES(3031, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Monge"\r\n');
REPLACE INTO `quest_db` VALUES(3032, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Monge"\r\n');
REPLACE INTO `quest_db` VALUES(3040, 43200, 0, 0, 0, 0, 0, 0, '"A Maldição do Bafomé"\r\n');
REPLACE INTO `quest_db` VALUES(3041, 180, 0, 0, 0, 0, 0, 0, '"A Maldição do Bafomé"\r\n');
REPLACE INTO `quest_db` VALUES(3042, 0, 0, 0, 0, 0, 0, 0, '"O Boneco de Bafomé Maldito"\r\n');
REPLACE INTO `quest_db` VALUES(3043, 0, 0, 0, 0, 0, 0, 0, '"Os Chifres Místicos de Bafomé"\r\n');
REPLACE INTO `quest_db` VALUES(3044, 0, 0, 0, 0, 0, 0, 0, '"Os Chifres Majestosos Gigantes"\r\n');
REPLACE INTO `quest_db` VALUES(3045, 7200, 0, 0, 0, 0, 0, 0, '"Santuário Selado"\r\n');
REPLACE INTO `quest_db` VALUES(3046, 0, 0, 0, 0, 0, 0, 0, '"Santuário Selado depois do Efeito"\r\n');
REPLACE INTO `quest_db` VALUES(3050, 0, 0, 0, 0, 0, 0, 0, '"Ressurreição de Morroc"\r\n');
REPLACE INTO `quest_db` VALUES(3051, 0, 0, 0, 0, 0, 0, 0, '"Ressurreição de Morroc"\r\n');
REPLACE INTO `quest_db` VALUES(3052, 0, 0, 0, 0, 0, 0, 0, '"Ressurreição de Morroc"\r\n');
REPLACE INTO `quest_db` VALUES(3053, 0, 0, 0, 0, 0, 0, 0, '"Ressurreição de Morroc"\r\n');
REPLACE INTO `quest_db` VALUES(3054, 0, 0, 0, 0, 0, 0, 0, '"Ressurreição de Morroc"\r\n');
REPLACE INTO `quest_db` VALUES(3055, 0, 0, 0, 0, 0, 0, 0, '"Ressurreição de Morroc"\r\n');
REPLACE INTO `quest_db` VALUES(3056, 0, 0, 0, 0, 0, 0, 0, '"Ressurreição de Morroc"\r\n');
REPLACE INTO `quest_db` VALUES(3060, 0, 0, 0, 0, 0, 0, 0, '"Irmãos em Veins"\r\n');
REPLACE INTO `quest_db` VALUES(3061, 0, 0, 0, 0, 0, 0, 0, '"Irmãos em Veins"\r\n');
REPLACE INTO `quest_db` VALUES(3062, 0, 0, 0, 0, 0, 0, 0, '"Irmãos em Veins"\r\n');
REPLACE INTO `quest_db` VALUES(3063, 0, 0, 0, 0, 0, 0, 0, '"Irmãos em Veins"\r\n');
REPLACE INTO `quest_db` VALUES(3064, 0, 0, 0, 0, 0, 0, 0, '"Irmãos em Veins"\r\n');
REPLACE INTO `quest_db` VALUES(3065, 0, 0, 0, 0, 0, 0, 0, '"Irmãos em Veins"\r\n');
REPLACE INTO `quest_db` VALUES(3066, 0, 0, 0, 0, 0, 0, 0, '"Irmãos em Veins"\r\n');
REPLACE INTO `quest_db` VALUES(3067, 0, 0, 0, 0, 0, 0, 0, '"Irmãos em Veins"\r\n');
REPLACE INTO `quest_db` VALUES(3068, 0, 0, 0, 0, 0, 0, 0, '"Irmãos em Veins"\r\n');
REPLACE INTO `quest_db` VALUES(3069, 0, 0, 0, 0, 0, 0, 0, '"Irmãos em Veins"\r\n');
REPLACE INTO `quest_db` VALUES(3070, 0, 0, 0, 0, 0, 0, 0, '"Irmãos em Veins"\r\n');
REPLACE INTO `quest_db` VALUES(3071, 0, 0, 0, 0, 0, 0, 0, '"Irmãos em Veins"\r\n');
REPLACE INTO `quest_db` VALUES(3072, 0, 0, 0, 0, 0, 0, 0, '"Irmãos em Veins"\r\n');
REPLACE INTO `quest_db` VALUES(3073, 0, 0, 0, 0, 0, 0, 0, '"Irmãos em Veins"\r\n');
REPLACE INTO `quest_db` VALUES(3074, 0, 0, 0, 0, 0, 0, 0, '"Irmãos em Veins"\r\n');
REPLACE INTO `quest_db` VALUES(3075, 0, 0, 0, 0, 0, 0, 0, '"Irmãos em Veins"\r\n');
REPLACE INTO `quest_db` VALUES(3076, 0, 0, 0, 0, 0, 0, 0, '"Irmãos em Veins"\r\n');
REPLACE INTO `quest_db` VALUES(3077, 0, 0, 0, 0, 0, 0, 0, '"Irmãos em Veins"\r\n');
REPLACE INTO `quest_db` VALUES(3078, 0, 0, 0, 0, 0, 0, 0, '"Irmãos em Veins"\r\n');
REPLACE INTO `quest_db` VALUES(3079, 0, 0, 0, 0, 0, 0, 0, '"Irmãos em Veins"\r\n');
REPLACE INTO `quest_db` VALUES(3080, 0, 0, 0, 0, 0, 0, 0, '"Irmãos em Veins"\r\n');
REPLACE INTO `quest_db` VALUES(3081, 0, 0, 0, 0, 0, 0, 0, '"Irmãos em Veins"\r\n');
REPLACE INTO `quest_db` VALUES(3082, 0, 0, 0, 0, 0, 0, 0, '"Irmãos em Veins"\r\n');
REPLACE INTO `quest_db` VALUES(3083, 0, 0, 0, 0, 0, 0, 0, '"Irmãos em Veins"\r\n');
REPLACE INTO `quest_db` VALUES(3085, 0, 0, 0, 0, 0, 0, 0, '"Relatório ao Velho Mundo"\r\n');
REPLACE INTO `quest_db` VALUES(3086, 0, 0, 0, 0, 0, 0, 0, '"Relatório ao Velho Mundo"\r\n');
REPLACE INTO `quest_db` VALUES(3087, 0, 0, 0, 0, 0, 0, 0, '"Relatório ao Velho Mundo"\r\n');
REPLACE INTO `quest_db` VALUES(3088, 0, 0, 0, 0, 0, 0, 0, '"Relatório ao Velho Mundo"\r\n');
REPLACE INTO `quest_db` VALUES(3089, 0, 0, 0, 0, 0, 0, 0, '"Relatório ao Velho Mundo"\r\n');
REPLACE INTO `quest_db` VALUES(3090, 0, 0, 0, 0, 0, 0, 0, '"Relatório ao Velho Mundo"\r\n');
REPLACE INTO `quest_db` VALUES(3091, 0, 0, 0, 0, 0, 0, 0, '"Relatório ao Velho Mundo"\r\n');
REPLACE INTO `quest_db` VALUES(3092, 0, 0, 0, 0, 0, 0, 0, '"Relatório ao Velho Mundo"\r\n');
REPLACE INTO `quest_db` VALUES(3093, 0, 0, 0, 0, 0, 0, 0, '"Relatório ao Velho Mundo"\r\n');
REPLACE INTO `quest_db` VALUES(3094, 0, 0, 0, 0, 0, 0, 0, '"Relatório ao Velho Mundo"\r\n');
REPLACE INTO `quest_db` VALUES(3100, 0, 0, 0, 0, 0, 0, 0, '"Consolidação da dívida - vínculo de dívida"\r\n');
REPLACE INTO `quest_db` VALUES(3101, 0, 0, 0, 0, 0, 0, 0, '"Consolidação da dívida - Monte de Terra"\r\n');
REPLACE INTO `quest_db` VALUES(3102, 0, 0, 0, 0, 0, 0, 0, '"Consolidação da dívida - Carta encontrada');
REPLACE INTO `quest_db` VALUES(3103, 0, 0, 0, 0, 0, 0, 0, '"Consolidação da dívida - Inventor Dorian"\r\n');
REPLACE INTO `quest_db` VALUES(3104, 0, 0, 0, 0, 0, 0, 0, '"Consolidação da dívida - Materiais de Reparo"\r\n');
REPLACE INTO `quest_db` VALUES(3105, 0, 0, 0, 0, 0, 0, 0, '"Consolidação da dívida - Reparando o secador"\r\n');
REPLACE INTO `quest_db` VALUES(3106, 0, 0, 0, 0, 0, 0, 0, '"Consolidação da dívida - O reparo falhou"\r\n');
REPLACE INTO `quest_db` VALUES(3107, 0, 0, 0, 0, 0, 0, 0, '"Consolidação da dívida - O reparo deu certo"\r\n');
REPLACE INTO `quest_db` VALUES(3108, 0, 0, 0, 0, 0, 0, 0, '"Consolidação da dívida - Vamos correr com esse secador"\r\n');
REPLACE INTO `quest_db` VALUES(3109, 0, 0, 0, 0, 0, 0, 0, '"Consolidação da dívida - Restaurando a Carta de Fiança"\r\n');
REPLACE INTO `quest_db` VALUES(3110, 0, 0, 0, 0, 0, 0, 0, '"Diamante Roubado - Perseguição"\r\n');
REPLACE INTO `quest_db` VALUES(3111, 0, 0, 0, 0, 0, 0, 0, '"Diamante Roubado - Favor para Leblo"\r\n');
REPLACE INTO `quest_db` VALUES(3112, 0, 0, 0, 0, 0, 0, 0, '"Diamante Roubado - Dr. Wola"\r\n');
REPLACE INTO `quest_db` VALUES(3113, 0, 0, 0, 0, 0, 0, 0, '"Diamante Roubado - Dr. Wola"\r\n');
REPLACE INTO `quest_db` VALUES(3114, 0, 0, 0, 0, 0, 0, 0, '"Diamante Roubado - Dr. Wola"\r\n');
REPLACE INTO `quest_db` VALUES(3115, 0, 0, 0, 0, 0, 0, 0, '"Diamante Roubado - Informação de Leblo"\r\n');
REPLACE INTO `quest_db` VALUES(3116, 0, 0, 0, 0, 0, 0, 0, '"Diamante Roubado - Informação obtida na guilda"\r\n');
REPLACE INTO `quest_db` VALUES(3117, 0, 0, 0, 0, 0, 0, 0, '"Diamante Roubado - Interruptores estranhos"\r\n');
REPLACE INTO `quest_db` VALUES(3118, 0, 0, 0, 0, 0, 0, 0, '"Diamante Roubado - Diamante encontrado!"\r\n');
REPLACE INTO `quest_db` VALUES(3119, 0, 0, 0, 0, 0, 0, 0, '"Procura-se ''Gangue Z'' - Notícia de busca"\r\n');
REPLACE INTO `quest_db` VALUES(3120, 0, 0, 0, 0, 0, 0, 0, '"Procura-se ''Gangue Z''- Sobre a Gangue Z"\r\n');
REPLACE INTO `quest_db` VALUES(3121, 0, 0, 0, 0, 0, 0, 0, '"Procura-se ''Gangue Z'' - Informação de Valdes"\r\n');
REPLACE INTO `quest_db` VALUES(3122, 0, 0, 0, 0, 0, 0, 0, '"Procura-se ''Gangue Z'' - Informação de Valdes"\r\n');
REPLACE INTO `quest_db` VALUES(3123, 0, 0, 0, 0, 0, 0, 0, '"Procura-se ''Gangue Z'' - Teste de Marybell"\r\n');
REPLACE INTO `quest_db` VALUES(3124, 0, 0, 0, 0, 0, 0, 0, '"Procura-se ''Gangue Z'' - Desafiando Moonho Ahn"\r\n');
REPLACE INTO `quest_db` VALUES(3125, 0, 0, 0, 0, 0, 0, 0, '"Procura-se ''Gangue Z'' - Desafiando Moonho Ahn"\r\n');
REPLACE INTO `quest_db` VALUES(3126, 0, 0, 0, 0, 0, 0, 0, '"Procura-se ''Gangue Z'' - informação de Marybell"\r\n');
REPLACE INTO `quest_db` VALUES(3127, 0, 0, 0, 0, 0, 0, 0, '"Procura-se ''Gangue Z'' - O ataque da Gangueue"\r\n');
REPLACE INTO `quest_db` VALUES(3128, 0, 0, 0, 0, 0, 0, 0, '"Procura-se ''Gangue Z'' - O ataque da Gangueue"\r\n');
REPLACE INTO `quest_db` VALUES(3129, 0, 0, 0, 0, 0, 0, 0, '"Procura-se ''Gangue Z'' - Estranha carta"\r\n');
REPLACE INTO `quest_db` VALUES(3130, 0, 0, 0, 0, 0, 0, 0, '"Procura-se ''Gangue Z'' - Decifrando......"\r\n');
REPLACE INTO `quest_db` VALUES(3131, 0, 0, 0, 0, 0, 0, 0, '"Procura-se ''Gangue Z'' - Decifrado!"\r\n');
REPLACE INTO `quest_db` VALUES(3132, 0, 0, 0, 0, 0, 0, 0, '"Procura-se ''Gangue Z'' - Encontrando a Gangue Z"\r\n');
REPLACE INTO `quest_db` VALUES(3133, 0, 0, 0, 0, 0, 0, 0, '"Procura-se ''Gangue Z'' - Esconderijo Encontrado!"\r\n');
REPLACE INTO `quest_db` VALUES(3134, 0, 0, 0, 0, 0, 0, 0, '"Procura-se ''Gangue Z'' - Limpando a Gangue Z"\r\n');
REPLACE INTO `quest_db` VALUES(3135, 259200, 0, 0, 0, 0, 0, 0, '"Ninho de Nidhogg"\r\n');
REPLACE INTO `quest_db` VALUES(3136, 14400, 0, 0, 0, 0, 0, 0, '"Ninho de Nidhogg Limite de Tempo"\r\n');
REPLACE INTO `quest_db` VALUES(3200, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Cavaleiro Rúnico - Recomendação para um Cavaleiro Rúnico"\r\n');
REPLACE INTO `quest_db` VALUES(3201, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Cavaleiro Rúnico - Encontro secreto de Cavaleiro Rúnico"\r\n');
REPLACE INTO `quest_db` VALUES(3202, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Cavaleiro Rúnico - O primeiro teste"\r\n');
REPLACE INTO `quest_db` VALUES(3203, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Cavaleiro Rúnico - O primeiro teste"\r\n');
REPLACE INTO `quest_db` VALUES(3204, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Cavaleiro Rúnico - Conclua o primeiro teste"\r\n');
REPLACE INTO `quest_db` VALUES(3205, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Cavaleiro Rúnico - O segundo teste"\r\n');
REPLACE INTO `quest_db` VALUES(3206, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Cavaleiro Rúnico - O segundo teste"\r\n');
REPLACE INTO `quest_db` VALUES(3207, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Cavaleiro Rúnico - O segundo teste"\r\n');
REPLACE INTO `quest_db` VALUES(3208, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Cavaleiro Rúnico - O segundo teste"\r\n');
REPLACE INTO `quest_db` VALUES(3209, 0, 1504, 10, 0, 0, 0, 0, '"Mudança de Classe: Cavaleiro Rúnico - Acumulando energia mágica 1"\r\n');
REPLACE INTO `quest_db` VALUES(3210, 0, 1506, 10, 0, 0, 0, 0, '"Mudança de Classe: Cavaleiro Rúnico - Acumulando energia mágica 2"\r\n');
REPLACE INTO `quest_db` VALUES(3211, 0, 1508, 10, 0, 0, 0, 0, '"Mudança de Classe: Cavaleiro Rúnico - Acumulando energia mágica 3"\r\n');
REPLACE INTO `quest_db` VALUES(3212, 0, 1510, 10, 0, 0, 0, 0, '"Mudança de Classe: Cavaleiro Rúnico - Acumulando energia mágica 4"\r\n');
REPLACE INTO `quest_db` VALUES(3213, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Cavaleiro Rúnico - O segundo teste"\r\n');
REPLACE INTO `quest_db` VALUES(3214, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Cavaleiro Rúnico - O segundo teste"\r\n');
REPLACE INTO `quest_db` VALUES(3215, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Cavaleiro Rúnico - Conclua o segundo teste"\r\n');
REPLACE INTO `quest_db` VALUES(3216, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Cavaleiro Rúnico - O teste final"\r\n');
REPLACE INTO `quest_db` VALUES(3217, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Cavaleiro Rúnico - O teste final"\r\n');
REPLACE INTO `quest_db` VALUES(3218, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Cavaleiro Rúnico - Conclua o teste final"\r\n');
REPLACE INTO `quest_db` VALUES(3219, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Cavaleiro Rúnico - O final de todos os testes"\r\n');
REPLACE INTO `quest_db` VALUES(3220, 600, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Cavaleiro Rúnico - Tempo de espera do teste"\r\n');
REPLACE INTO `quest_db` VALUES(3250, 0, 1041, 30, 0, 0, 0, 0, '"Pedidos - Essa bandana serve para?"\r\n');
REPLACE INTO `quest_db` VALUES(3251, 0, 1271, 30, 0, 0, 0, 0, '"Pedidos - O crocodilo do contra-ataque"\r\n');
REPLACE INTO `quest_db` VALUES(3252, 0, 1264, 30, 0, 0, 0, 0, '"Pedidos - Minha sereia não gosta assim!"\r\n');
REPLACE INTO `quest_db` VALUES(3253, 0, 0, 0, 0, 0, 0, 0, '"Pedidos - Está faltando uma obsessão"\r\n');
REPLACE INTO `quest_db` VALUES(3254, 0, 0, 0, 0, 0, 0, 0, '"Pedidos - Um país precisa de você"\r\n');
REPLACE INTO `quest_db` VALUES(3255, 0, 1166, 30, 0, 0, 0, 0, '"Pedidos - Uma operação de subjulgar javali"\r\n');
REPLACE INTO `quest_db` VALUES(3256, 0, 0, 0, 0, 0, 0, 0, '"Pedidos - Pronto esperando pelo verão"\r\n');
REPLACE INTO `quest_db` VALUES(3257, 0, 1170, 30, 0, 0, 0, 0, '"Pedidos - Um rancor das mulheres"\r\n');
REPLACE INTO `quest_db` VALUES(3258, 0, 0, 0, 0, 0, 0, 0, '"Pedidos - Material de delicadeza"\r\n');
REPLACE INTO `quest_db` VALUES(3259, 0, 1143, 30, 0, 0, 0, 0, '"Pedidos - A agonia do mestre de bonecos"\r\n');
REPLACE INTO `quest_db` VALUES(3260, 0, 1035, 30, 0, 0, 0, 0, '"Pedidos - Moscas cansativas"\r\n');
REPLACE INTO `quest_db` VALUES(3261, 0, 1026, 30, 0, 0, 0, 0, '"Pedidos - Menina suja"\r\n');
REPLACE INTO `quest_db` VALUES(3262, 0, 0, 0, 0, 0, 0, 0, '"Pedidos - Estranho passa-tempo"\r\n');
REPLACE INTO `quest_db` VALUES(3263, 0, 0, 0, 0, 0, 0, 0, '"Pedidos - Um martelo de goblin"\r\n');
REPLACE INTO `quest_db` VALUES(3265, 0, 0, 0, 0, 0, 0, 0, '"Pedidos - Está faltando uma obsessão"\r\n');
REPLACE INTO `quest_db` VALUES(4000, 0, 0, 0, 0, 0, 0, 0, '"Sherin entrevista para mudança de classe."\r\n');
REPLACE INTO `quest_db` VALUES(4001, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Caçador"\r\n');
REPLACE INTO `quest_db` VALUES(4002, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Caçador"\r\n');
REPLACE INTO `quest_db` VALUES(4003, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Caçador"\r\n');
REPLACE INTO `quest_db` VALUES(4004, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Caçador"\r\n');
REPLACE INTO `quest_db` VALUES(4005, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Caçador"\r\n');
REPLACE INTO `quest_db` VALUES(4006, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Caçador"\r\n');
REPLACE INTO `quest_db` VALUES(4007, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Caçador"\r\n');
REPLACE INTO `quest_db` VALUES(4008, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Caçador"\r\n');
REPLACE INTO `quest_db` VALUES(4009, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Caçador"\r\n');
REPLACE INTO `quest_db` VALUES(4010, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Caçador"\r\n');
REPLACE INTO `quest_db` VALUES(4011, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Caçador - Teste"\r\n');
REPLACE INTO `quest_db` VALUES(4012, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Caçador"\r\n');
REPLACE INTO `quest_db` VALUES(4013, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Caçador"\r\n');
REPLACE INTO `quest_db` VALUES(4133, 0, 0, 0, 0, 0, 0, 0, '"Iara"\r\n');
REPLACE INTO `quest_db` VALUES(4134, 0, 0, 0, 0, 0, 0, 0, '"Iara"\r\n');
REPLACE INTO `quest_db` VALUES(4135, 86400, 0, 0, 0, 0, 0, 0, '"Iara"\r\n');
REPLACE INTO `quest_db` VALUES(4167, 0, 1321, 30, 0, 0, 0, 0, '"Eden: Cauda de Dragão"\r\n');
REPLACE INTO `quest_db` VALUES(4168, 0, 1322, 30, 0, 0, 0, 0, '"Eden: Coelho"\r\n');
REPLACE INTO `quest_db` VALUES(4169, 0, 1256, 30, 0, 0, 0, 0, '"Eden: Peste"\r\n');
REPLACE INTO `quest_db` VALUES(4170, 0, 1102, 30, 0, 0, 0, 0, '"Eden: Bathory"\r\n');
REPLACE INTO `quest_db` VALUES(4171, 0, 1193, 30, 0, 0, 0, 0, '"Eden: Alarme"\r\n');
REPLACE INTO `quest_db` VALUES(4172, 0, 1882, 30, 0, 0, 0, 0, '"Eden: Baba-Yaga"\r\n');
REPLACE INTO `quest_db` VALUES(4173, 0, 1512, 30, 0, 0, 0, 0, '"Eden: Hyegun"\r\n');
REPLACE INTO `quest_db` VALUES(4174, 0, 1403, 30, 0, 0, 0, 0, '"Eden: Soldado Atirador"\r\n');
REPLACE INTO `quest_db` VALUES(4175, 0, 1417, 30, 0, 0, 0, 0, '"Eden: Ursinho"\r\n');
REPLACE INTO `quest_db` VALUES(4176, 0, 1155, 30, 0, 0, 0, 0, '"Eden: Petite"\r\n');
REPLACE INTO `quest_db` VALUES(4177, 0, 1162, 30, 0, 0, 0, 0, '"Eden: Rafflesia"\r\n');
REPLACE INTO `quest_db` VALUES(4178, 0, 1621, 30, 0, 0, 0, 0, '"Eden: Nuvem "\r\n');
REPLACE INTO `quest_db` VALUES(4179, 0, 1616, 30, 0, 0, 0, 0, '"Eden: Minérios"\r\n');
REPLACE INTO `quest_db` VALUES(4180, 0, 1718, 30, 0, 0, 0, 0, '"Eden: Novus"\r\n');
REPLACE INTO `quest_db` VALUES(4181, 0, 1316, 30, 0, 0, 0, 0, '"Eden: Soldado"\r\n');
REPLACE INTO `quest_db` VALUES(4182, 0, 1319, 30, 0, 0, 0, 0, '"Eden: Congelador"\r\n');
REPLACE INTO `quest_db` VALUES(4183, 0, 1318, 30, 0, 0, 0, 0, '"Eden: Aquecedor"\r\n');
REPLACE INTO `quest_db` VALUES(4184, 0, 1257, 30, 0, 0, 0, 0, '"Eden: Injustiçado"\r\n');
REPLACE INTO `quest_db` VALUES(4185, 0, 1201, 30, 0, 0, 0, 0, '"Eden: Rybio"\r\n');
REPLACE INTO `quest_db` VALUES(4186, 0, 1198, 30, 0, 0, 0, 0, '"Eden: Sacerdote Maldito"\r\n');
REPLACE INTO `quest_db` VALUES(4187, 0, 1784, 30, 0, 0, 0, 0, '"Eden: Stapo"\r\n');
REPLACE INTO `quest_db` VALUES(4188, 0, 1782, 30, 0, 0, 0, 0, '"Eden: Roween"\r\n');
REPLACE INTO `quest_db` VALUES(4189, 0, 1776, 30, 0, 0, 0, 0, '"Eden: Siroma"\r\n');
REPLACE INTO `quest_db` VALUES(4190, 0, 1401, 30, 0, 0, 0, 0, '"Eden: Shinobi "\r\n');
REPLACE INTO `quest_db` VALUES(4191, 0, 1416, 30, 0, 0, 0, 0, '"Eden: Ninfa Perversa"\r\n');
REPLACE INTO `quest_db` VALUES(4192, 0, 1109, 30, 0, 0, 0, 0, '"Eden: Deviruchi"\r\n');
REPLACE INTO `quest_db` VALUES(4193, 0, 1614, 30, 0, 0, 0, 0, '"Eden: Mineral"\r\n');
REPLACE INTO `quest_db` VALUES(4194, 0, 1072, 30, 0, 0, 0, 0, '"Eden: Kaho"\r\n');
REPLACE INTO `quest_db` VALUES(4195, 0, 1255, 30, 0, 0, 0, 0, '"Eden: Nereida"\r\n');
REPLACE INTO `quest_db` VALUES(4196, 0, 1506, 30, 0, 0, 0, 0, '"Eden: Mascarado"\r\n');
REPLACE INTO `quest_db` VALUES(5000, 0, 0, 0, 0, 0, 0, 0, '"O Corvo do Destino - 7"\r\n');
REPLACE INTO `quest_db` VALUES(5035, 0, 0, 0, 0, 0, 0, 0, '"Ajude o Velho Homem!"\r\n');
REPLACE INTO `quest_db` VALUES(5036, 0, 0, 0, 0, 0, 0, 0, '"Ajude o Velho Homem!"\r\n');
REPLACE INTO `quest_db` VALUES(5037, 0, 0, 0, 0, 0, 0, 0, '"Ajude o Velho Homem!"\r\n');
REPLACE INTO `quest_db` VALUES(5038, 0, 0, 0, 0, 0, 0, 0, '"Ajude o Velho Homem!"\r\n');
REPLACE INTO `quest_db` VALUES(5039, 0, 0, 0, 0, 0, 0, 0, '"Ajude o Velho Homem!"\r\n');
REPLACE INTO `quest_db` VALUES(5040, 0, 0, 0, 0, 0, 0, 0, '"Ajude o Velho Homem!"\r\n');
REPLACE INTO `quest_db` VALUES(5041, 0, 0, 0, 0, 0, 0, 0, '"Ajude o Velho Homem!"\r\n');
REPLACE INTO `quest_db` VALUES(5042, 0, 0, 0, 0, 0, 0, 0, '"Ajude o Velho Homem!"\r\n');
REPLACE INTO `quest_db` VALUES(5043, 300, 0, 0, 0, 0, 0, 0, '"Ajude o Velho Homem!"\r\n');
REPLACE INTO `quest_db` VALUES(5044, 86400, 0, 0, 0, 0, 0, 0, '"Ajude o Velho Homem!"\r\n');
REPLACE INTO `quest_db` VALUES(5045, 0, 0, 0, 0, 0, 0, 0, '"Ajude o Velho Homem!"\r\n');
REPLACE INTO `quest_db` VALUES(5046, 0, 0, 0, 0, 0, 0, 0, '"Ajude o Velho Homem!"\r\n');
REPLACE INTO `quest_db` VALUES(5047, 0, 0, 0, 0, 0, 0, 0, '"Ajude o Velho Homem!"\r\n');
REPLACE INTO `quest_db` VALUES(5048, 0, 0, 0, 0, 0, 0, 0, '"Ajude o Velho Homem!"\r\n');
REPLACE INTO `quest_db` VALUES(5049, 0, 0, 0, 0, 0, 0, 0, '"Ajude o Velho Homem!"\r\n');
REPLACE INTO `quest_db` VALUES(5050, 0, 0, 0, 0, 0, 0, 0, '"Ajude o Velho Homem!"\r\n');
REPLACE INTO `quest_db` VALUES(5051, 0, 0, 0, 0, 0, 0, 0, '"Ajude o Velho Homem!"\r\n');
REPLACE INTO `quest_db` VALUES(5052, 0, 0, 0, 0, 0, 0, 0, '"Arma tradicional"\r\n');
REPLACE INTO `quest_db` VALUES(5053, 0, 0, 0, 0, 0, 0, 0, '"Arma tradicional"\r\n');
REPLACE INTO `quest_db` VALUES(5054, 0, 0, 0, 0, 0, 0, 0, '"Arma tradicional"\r\n');
REPLACE INTO `quest_db` VALUES(5092, 0, 0, 0, 0, 0, 0, 0, '"Acima do limite dos Aprendizes"\r\n');
REPLACE INTO `quest_db` VALUES(5093, 0, 0, 0, 0, 0, 0, 0, '"Acima do limite dos Aprendizes"\r\n');
REPLACE INTO `quest_db` VALUES(5094, 0, 1002, 1000, 0, 0, 0, 0, '"Acima do limite dos Aprendizes"\r\n');
REPLACE INTO `quest_db` VALUES(5095, 0, 1063, 1000, 0, 0, 0, 0, '"Acima do limite dos Aprendizes"\r\n');
REPLACE INTO `quest_db` VALUES(5096, 0, 1007, 1000, 0, 0, 0, 0, '"Acima do limite dos Aprendizes"\r\n');
REPLACE INTO `quest_db` VALUES(5097, 0, 1049, 1000, 0, 0, 0, 0, '"Acima do limite dos Aprendizes"\r\n');
REPLACE INTO `quest_db` VALUES(5098, 0, 0, 0, 0, 0, 0, 0, '"Acima do limite dos Aprendizes"\r\n');
REPLACE INTO `quest_db` VALUES(5099, 0, 0, 0, 0, 0, 0, 0, '"Acima do limite dos Aprendizes"\r\n');
REPLACE INTO `quest_db` VALUES(5100, 0, 0, 0, 0, 0, 0, 0, '"Acima do limite dos Aprendizes"\r\n');
REPLACE INTO `quest_db` VALUES(6000, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Taekwon"\r\n');
REPLACE INTO `quest_db` VALUES(6001, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Taekwon"\r\n');
REPLACE INTO `quest_db` VALUES(6002, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Taekwon"\r\n');
REPLACE INTO `quest_db` VALUES(6005, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Espiritualista"\r\n');
REPLACE INTO `quest_db` VALUES(6006, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Espiritualista"\r\n');
REPLACE INTO `quest_db` VALUES(6007, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Espiritualista"\r\n');
REPLACE INTO `quest_db` VALUES(6008, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Espiritualista"\r\n');
REPLACE INTO `quest_db` VALUES(6010, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Super Aprendiz\r\n');
REPLACE INTO `quest_db` VALUES(6015, 0, 0, 0, 0, 0, 0, 0, '"Um favor para Cougar"\r\n');
REPLACE INTO `quest_db` VALUES(6016, 0, 0, 0, 0, 0, 0, 0, '"Um favor para o Homem Suspeito"\r\n');
REPLACE INTO `quest_db` VALUES(6017, 0, 0, 0, 0, 0, 0, 0, '"Respostas ao Leopardo Vermelho Joe"\r\n');
REPLACE INTO `quest_db` VALUES(6018, 0, 0, 0, 0, 0, 0, 0, '"A Loucura de Cougar"\r\n');
REPLACE INTO `quest_db` VALUES(6020, 0, 0, 0, 0, 0, 0, 0, '"Carta do Mestre Miller"\r\n');
REPLACE INTO `quest_db` VALUES(6021, 0, 0, 0, 0, 0, 0, 0, '"Prova - Touro Inteligente Chifrudo"\r\n');
REPLACE INTO `quest_db` VALUES(6022, 0, 0, 0, 0, 0, 0, 0, '"Fazendo um comprovante"\r\n');
REPLACE INTO `quest_db` VALUES(6023, 0, 0, 0, 0, 0, 0, 0, '"Favor ao Touro Inteligente Chifrudo"\r\n');
REPLACE INTO `quest_db` VALUES(6024, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Justiceiro!"\r\n');
REPLACE INTO `quest_db` VALUES(6025, 300, 0, 0, 0, 0, 0, 0, '"KVM Guillaume"\r\n');
REPLACE INTO `quest_db` VALUES(6026, 300, 0, 0, 0, 0, 0, 0, '"KVM Croix"\r\n');
REPLACE INTO `quest_db` VALUES(6027, 300, 0, 0, 0, 0, 0, 0, '"KVM Indicador"\r\n');
REPLACE INTO `quest_db` VALUES(7000, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Odalisca!"\r\n');
REPLACE INTO `quest_db` VALUES(7001, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Odalisca!"\r\n');
REPLACE INTO `quest_db` VALUES(7002, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Odalisca!"\r\n');
REPLACE INTO `quest_db` VALUES(7003, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Odalisca!"\r\n');
REPLACE INTO `quest_db` VALUES(7004, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Odalisca!"\r\n');
REPLACE INTO `quest_db` VALUES(7005, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Odalisca!"\r\n');
REPLACE INTO `quest_db` VALUES(7006, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Odalisca!"\r\n');
REPLACE INTO `quest_db` VALUES(7007, 0, 0, 0, 0, 0, 0, 0, '"Guerreiro Solar');
REPLACE INTO `quest_db` VALUES(7008, 0, 0, 0, 0, 0, 0, 0, '"Guerreiro Solar');
REPLACE INTO `quest_db` VALUES(7009, 0, 0, 0, 0, 0, 0, 0, '"Guerreiro Solar');
REPLACE INTO `quest_db` VALUES(7010, 0, 0, 0, 0, 0, 0, 0, '"Guerreiro Solar');
REPLACE INTO `quest_db` VALUES(7011, 0, 0, 0, 0, 0, 0, 0, '"Guerreiro Solar');
REPLACE INTO `quest_db` VALUES(7012, 0, 0, 0, 0, 0, 0, 0, '"Caça ao Culto de Morroc"\r\n');
REPLACE INTO `quest_db` VALUES(7013, 0, 0, 0, 0, 0, 0, 0, '"Caça ao Culto de Morroc"\r\n');
REPLACE INTO `quest_db` VALUES(7014, 0, 0, 0, 0, 0, 0, 0, '"Caça ao Culto de Morroc"\r\n');
REPLACE INTO `quest_db` VALUES(7015, 0, 0, 0, 0, 0, 0, 0, '"Caça ao Culto de Morroc"\r\n');
REPLACE INTO `quest_db` VALUES(7016, 0, 0, 0, 0, 0, 0, 0, '"Caça ao Culto de Morroc"\r\n');
REPLACE INTO `quest_db` VALUES(7017, 0, 0, 0, 0, 0, 0, 0, '"Caça ao Culto de Morroc"\r\n');
REPLACE INTO `quest_db` VALUES(7018, 0, 0, 0, 0, 0, 0, 0, '"Caça ao Culto de Morroc"\r\n');
REPLACE INTO `quest_db` VALUES(7019, 0, 0, 0, 0, 0, 0, 0, '"Caça ao Culto de Morroc"\r\n');
REPLACE INTO `quest_db` VALUES(7020, 0, 0, 0, 0, 0, 0, 0, '"Caça ao Culto de Morroc"\r\n');
REPLACE INTO `quest_db` VALUES(7021, 0, 0, 0, 0, 0, 0, 0, '"Caça ao Culto de Morroc"\r\n');
REPLACE INTO `quest_db` VALUES(7022, 0, 0, 0, 0, 0, 0, 0, '"Caça ao Culto de Morroc"\r\n');
REPLACE INTO `quest_db` VALUES(7023, 0, 0, 0, 0, 0, 0, 0, '"Caça ao Culto de Morroc"\r\n');
REPLACE INTO `quest_db` VALUES(7024, 0, 0, 0, 0, 0, 0, 0, '"Caça ao Culto de Morroc"\r\n');
REPLACE INTO `quest_db` VALUES(7025, 0, 0, 0, 0, 0, 0, 0, '"Caça ao Culto de Morroc"\r\n');
REPLACE INTO `quest_db` VALUES(7026, 0, 0, 0, 0, 0, 0, 0, '"Caça ao Culto de Morroc"\r\n');
REPLACE INTO `quest_db` VALUES(7027, 0, 0, 0, 0, 0, 0, 0, '"Caça ao Culto de Morroc"\r\n');
REPLACE INTO `quest_db` VALUES(7028, 0, 0, 0, 0, 0, 0, 0, '"Caça ao Culto de Morroc"\r\n');
REPLACE INTO `quest_db` VALUES(7029, 0, 0, 0, 0, 0, 0, 0, '"Caça ao Culto de Morroc"\r\n');
REPLACE INTO `quest_db` VALUES(7030, 0, 0, 0, 0, 0, 0, 0, '"Caça ao Culto de Morroc"\r\n');
REPLACE INTO `quest_db` VALUES(7031, 0, 0, 0, 0, 0, 0, 0, '"Caça ao Culto de Morroc"\r\n');
REPLACE INTO `quest_db` VALUES(7032, 0, 0, 0, 0, 0, 0, 0, '"Caça ao Culto de Morroc"\r\n');
REPLACE INTO `quest_db` VALUES(7033, 0, 0, 0, 0, 0, 0, 0, '"Caça ao Culto de Morroc"\r\n');
REPLACE INTO `quest_db` VALUES(7034, 0, 0, 0, 0, 0, 0, 0, '"Caça ao Culto de Morroc"\r\n');
REPLACE INTO `quest_db` VALUES(7035, 0, 0, 0, 0, 0, 0, 0, '"Caça ao Culto de Morroc"\r\n');
REPLACE INTO `quest_db` VALUES(7036, 0, 0, 0, 0, 0, 0, 0, '"Caça ao Culto de Morroc"\r\n');
REPLACE INTO `quest_db` VALUES(7037, 0, 0, 0, 0, 0, 0, 0, '"Caso encerrado?"\r\n');
REPLACE INTO `quest_db` VALUES(7038, 0, 0, 0, 0, 0, 0, 0, '"Paixão por batatas cozidas doces"\r\n');
REPLACE INTO `quest_db` VALUES(7039, 0, 0, 0, 0, 0, 0, 0, '"Fugindo da conversa"\r\n');
REPLACE INTO `quest_db` VALUES(7040, 0, 0, 0, 0, 0, 0, 0, '"Fugindo da conversa"\r\n');
REPLACE INTO `quest_db` VALUES(7041, 0, 0, 0, 0, 0, 0, 0, '"A política é para os políticos"\r\n');
REPLACE INTO `quest_db` VALUES(7042, 0, 0, 0, 0, 0, 0, 0, '"Meio-Expediente - comida de Tatacho"\r\n');
REPLACE INTO `quest_db` VALUES(7043, 0, 0, 0, 0, 0, 0, 0, '"Meio-Expediente - comida de Cornus"\r\n');
REPLACE INTO `quest_db` VALUES(7044, 0, 0, 0, 0, 0, 0, 0, '"Meio-Expediente - comida de Hillthrion"\r\n');
REPLACE INTO `quest_db` VALUES(7045, 0, 0, 0, 0, 0, 0, 0, '"Meio-Expediente - comida de Hillthrion"\r\n');
REPLACE INTO `quest_db` VALUES(7046, 0, 0, 0, 0, 0, 0, 0, '"Meio-Expediente - tapetes quentes"\r\n');
REPLACE INTO `quest_db` VALUES(7047, 18000, 0, 0, 0, 0, 0, 0, '"Meio-Expediente - Vamos chamá-lo de um dia!"\r\n');
REPLACE INTO `quest_db` VALUES(7048, 0, 0, 0, 0, 0, 0, 0, '"Torre de Thanatos - Favor a Burled"\r\n');
REPLACE INTO `quest_db` VALUES(7049, 0, 0, 0, 0, 0, 0, 0, '"Torre de Thanatos - Torre Selada"\r\n');
REPLACE INTO `quest_db` VALUES(7050, 0, 0, 0, 0, 0, 0, 0, '"Torre de Thanatos - Torre Selada"\r\n');
REPLACE INTO `quest_db` VALUES(7051, 0, 0, 0, 0, 0, 0, 0, '"Torre de Thanatos - Torre Selada"\r\n');
REPLACE INTO `quest_db` VALUES(7052, 0, 0, 0, 0, 0, 0, 0, '"Torre de Thanatos - Torre Selada"\r\n');
REPLACE INTO `quest_db` VALUES(7053, 0, 0, 0, 0, 0, 0, 0, '"Torre de Thanatos - O que eles querem é.."\r\n');
REPLACE INTO `quest_db` VALUES(7054, 0, 1282, 1000, 0, 0, 0, 0, '"Um favor a Myu - Ensinar-lhes uma lição!"\r\n');
REPLACE INTO `quest_db` VALUES(7055, 0, 1261, 1, 0, 0, 0, 0, '"Um favor a Myu - O gato não!"\r\n');
REPLACE INTO `quest_db` VALUES(7056, 0, 0, 0, 0, 0, 0, 0, '"Mensageiro - Um favor a Arc"\r\n');
REPLACE INTO `quest_db` VALUES(7057, 0, 0, 0, 0, 0, 0, 0, '"Mensageiro - Um favor a Arc"\r\n');
REPLACE INTO `quest_db` VALUES(7058, 0, 0, 0, 0, 0, 0, 0, '"Mensageiro - Um favor a Arc"\r\n');
REPLACE INTO `quest_db` VALUES(7059, 0, 0, 0, 0, 0, 0, 0, '"Mensageiro - Paradeiro de Terra"\r\n');
REPLACE INTO `quest_db` VALUES(7060, 0, 0, 0, 0, 0, 0, 0, '"Mensageiro - Paradeiro de Terra"\r\n');
REPLACE INTO `quest_db` VALUES(7061, 0, 0, 0, 0, 0, 0, 0, '"Mensageiro - Paradeiro de Terra"\r\n');
REPLACE INTO `quest_db` VALUES(7062, 0, 0, 0, 0, 0, 0, 0, '"Mensageiro - Paradeiro de Terra"\r\n');
REPLACE INTO `quest_db` VALUES(7063, 0, 0, 0, 0, 0, 0, 0, '"Mensageiro - Paradeiro de Terra"\r\n');
REPLACE INTO `quest_db` VALUES(7064, 0, 0, 0, 0, 0, 0, 0, '"Mensageiro - Paradeiro de Terra"\r\n');
REPLACE INTO `quest_db` VALUES(7065, 0, 0, 0, 0, 0, 0, 0, '"Mensageiro - Paradeiro de Terra"\r\n');
REPLACE INTO `quest_db` VALUES(7066, 0, 0, 0, 0, 0, 0, 0, '"Mensageiro - Prove a verdade"\r\n');
REPLACE INTO `quest_db` VALUES(7067, 0, 0, 0, 0, 0, 0, 0, '"Mensageiro - Prove a verdade"\r\n');
REPLACE INTO `quest_db` VALUES(7068, 0, 0, 0, 0, 0, 0, 0, '"Mensageiro - Prove a verdade"\r\n');
REPLACE INTO `quest_db` VALUES(7069, 0, 0, 0, 0, 0, 0, 0, '"Mensageiro - Tarde demais!"\r\n');
REPLACE INTO `quest_db` VALUES(7070, 0, 0, 0, 0, 0, 0, 0, '"Mensageiro - O retorno de Terra"\r\n');
REPLACE INTO `quest_db` VALUES(7071, 0, 0, 0, 0, 0, 0, 0, '"Mensageiro - Convite"\r\n');
REPLACE INTO `quest_db` VALUES(7074, 0, 2017, 1, 0, 0, 0, 0, '"Caçando Rata"\r\n');
REPLACE INTO `quest_db` VALUES(7075, 0, 2018, 1, 0, 0, 0, 0, '"Caçando Duneyrr"\r\n');
REPLACE INTO `quest_db` VALUES(7076, 0, 2026, 1, 0, 0, 0, 0, '"Procurando: Dandelion"\r\n');
REPLACE INTO `quest_db` VALUES(7077, 0, 0, 0, 0, 0, 0, 0, '"Coletando Ovos de Dragões"\r\n');
REPLACE INTO `quest_db` VALUES(7078, 86400, 0, 0, 0, 0, 0, 0, '"Coletando Ovos de Dragões"\r\n');
REPLACE INTO `quest_db` VALUES(7079, 0, 0, 0, 0, 0, 0, 0, '"Encontrando Bradium Refinado"\r\n');
REPLACE INTO `quest_db` VALUES(7080, 86400, 0, 0, 0, 0, 0, 0, '"Encontrando Bradium Refinado"\r\n');
REPLACE INTO `quest_db` VALUES(7081, 0, 0, 0, 0, 0, 0, 0, '"Ajudando o Artesão - Laphine"\r\n');
REPLACE INTO `quest_db` VALUES(7082, 86400, 0, 0, 0, 0, 0, 0, '"Ajudando o Artesão - Laphine"\r\n');
REPLACE INTO `quest_db` VALUES(7091, 0, 0, 0, 0, 0, 0, 0, '"Um conselho de Diora 01"\r\n');
REPLACE INTO `quest_db` VALUES(7092, 0, 0, 0, 0, 0, 0, 0, '"Um conselho de Diora 02"\r\n');
REPLACE INTO `quest_db` VALUES(7093, 0, 0, 0, 0, 0, 0, 0, '"Um conselho de Diora 03"\r\n');
REPLACE INTO `quest_db` VALUES(7094, 0, 0, 0, 0, 0, 0, 0, '"Um conselho de Diora 04"\r\n');
REPLACE INTO `quest_db` VALUES(7095, 0, 0, 0, 0, 0, 0, 0, '"Um conselho de Diora 05"\r\n');
REPLACE INTO `quest_db` VALUES(7096, 0, 0, 0, 0, 0, 0, 0, '"Uma prova da nova exigência"\r\n');
REPLACE INTO `quest_db` VALUES(7097, 0, 0, 0, 0, 0, 0, 0, '"Uma prova da nova exigência"\r\n');
REPLACE INTO `quest_db` VALUES(7098, 0, 0, 0, 0, 0, 0, 0, '"Uma prova da nova exigência"\r\n');
REPLACE INTO `quest_db` VALUES(7099, 0, 0, 0, 0, 0, 0, 0, '"Uma prova da nova exigência"\r\n');
REPLACE INTO `quest_db` VALUES(7100, 0, 0, 0, 0, 0, 0, 0, '"Uma mensagem de Bercascell"\r\n');
REPLACE INTO `quest_db` VALUES(7101, 0, 0, 0, 0, 0, 0, 0, '"Tarefa especial da guilda de assassinos  1"\r\n');
REPLACE INTO `quest_db` VALUES(7102, 0, 0, 0, 0, 0, 0, 0, '"Tarefa especial da guilda de assassinos  2"\r\n');
REPLACE INTO `quest_db` VALUES(7103, 0, 0, 0, 0, 0, 0, 0, '"Tarefa especial da guilda de assassinos  3"\r\n');
REPLACE INTO `quest_db` VALUES(7104, 0, 0, 0, 0, 0, 0, 0, '"Tarefa especial da guilda de assassinos  4"\r\n');
REPLACE INTO `quest_db` VALUES(7105, 0, 0, 0, 0, 0, 0, 0, '"Tarefa especial da guilda de assassinos  4"\r\n');
REPLACE INTO `quest_db` VALUES(7106, 0, 0, 0, 0, 0, 0, 0, '"Tarefa especial da guilda de assassinos  5"\r\n');
REPLACE INTO `quest_db` VALUES(7107, 0, 0, 0, 0, 0, 0, 0, '"Tarefa especial da guilda de assassinos  6"\r\n');
REPLACE INTO `quest_db` VALUES(7108, 0, 0, 0, 0, 0, 0, 0, '"Tarefa especial da guilda de assassinos  7"\r\n');
REPLACE INTO `quest_db` VALUES(7109, 0, 0, 0, 0, 0, 0, 0, '"Tarefa especial da guilda de assassinos  8"\r\n');
REPLACE INTO `quest_db` VALUES(7110, 0, 0, 0, 0, 0, 0, 0, '"Tarefa especial da guilda de assassinos  9"\r\n');
REPLACE INTO `quest_db` VALUES(7111, 0, 0, 0, 0, 0, 0, 0, '"Tarefa especial da guilda de assassinos  10"\r\n');
REPLACE INTO `quest_db` VALUES(7112, 0, 0, 0, 0, 0, 0, 0, '"Informações de Madelle"\r\n');
REPLACE INTO `quest_db` VALUES(7113, 0, 0, 0, 0, 0, 0, 0, '"Informações de Crave"\r\n');
REPLACE INTO `quest_db` VALUES(7114, 0, 0, 0, 0, 0, 0, 0, '"Informações de Trovan"\r\n');
REPLACE INTO `quest_db` VALUES(7115, 0, 0, 0, 0, 0, 0, 0, '"Informações de um Vendedor"\r\n');
REPLACE INTO `quest_db` VALUES(7116, 0, 0, 0, 0, 0, 0, 0, '"Informações do Velho Homem"\r\n');
REPLACE INTO `quest_db` VALUES(7117, 0, 0, 0, 0, 0, 0, 0, '"Sua primeira quest!"\r\n');
REPLACE INTO `quest_db` VALUES(7118, 0, 0, 0, 0, 0, 0, 0, '"Treinamento de Aprendiz"\r\n');
REPLACE INTO `quest_db` VALUES(7119, 0, 0, 0, 0, 0, 0, 0, '"Treinamento de Aprendiz"\r\n');
REPLACE INTO `quest_db` VALUES(7120, 0, 0, 0, 0, 0, 0, 0, '"Treinamento de Aprendiz"\r\n');
REPLACE INTO `quest_db` VALUES(7121, 0, 0, 0, 0, 0, 0, 0, '"Treinamento de Aprendiz"\r\n');
REPLACE INTO `quest_db` VALUES(7122, 0, 1002, 1, 0, 0, 0, 0, '"Primeira batalha - Caçando Porings"\r\n');
REPLACE INTO `quest_db` VALUES(7123, 0, 1050, 2, 0, 0, 0, 0, '"Batalhas Básicas - Espadachim"\r\n');
REPLACE INTO `quest_db` VALUES(7124, 0, 1063, 5, 0, 0, 0, 0, '"Batalhas Básicas - Mago"\r\n');
REPLACE INTO `quest_db` VALUES(7126, 0, 0, 0, 0, 0, 0, 0, '"Vendendo items"\r\n');
REPLACE INTO `quest_db` VALUES(7127, 0, 1010, 5, 0, 0, 0, 0, '"Batalhas Básicas - Gatuno"\r\n');
REPLACE INTO `quest_db` VALUES(7128, 0, 0, 0, 0, 0, 0, 0, '"O Treinamento ''conquistando o deserto!'' -Início"\r\n');
REPLACE INTO `quest_db` VALUES(7129, 0, 1009, 10, 0, 0, 0, 0, '"O Treinamento ''conquistando o deserto!'' - A batalha real 1"\r\n');
REPLACE INTO `quest_db` VALUES(7130, 0, 1107, 10, 0, 0, 0, 0, '"O Treinamento ''conquistando o deserto!'' - A batalha real 2"\r\n');
REPLACE INTO `quest_db` VALUES(7131, 0, 1001, 5, 0, 0, 0, 0, '"O Treinamento ''conquistando o deserto!'' - A batalha real 3"\r\n');
REPLACE INTO `quest_db` VALUES(7132, 0, 0, 0, 0, 0, 0, 0, '"O Treinamento ''conquistando o deserto!'' - Complete a quest"\r\n');
REPLACE INTO `quest_db` VALUES(7133, 0, 0, 0, 0, 0, 0, 0, '"O Treinamento ''conquistando o esgoto!'' - Início"\r\n');
REPLACE INTO `quest_db` VALUES(7134, 0, 1051, 10, 0, 0, 0, 0, '"O Treinamento ''conquistando o esgoto!'' - A batalha real 1"\r\n');
REPLACE INTO `quest_db` VALUES(7135, 0, 1175, 10, 0, 0, 0, 0, '"O Treinamento ''conquistando o esgoto!'' - A batalha real 2"\r\n');
REPLACE INTO `quest_db` VALUES(7136, 0, 1005, 5, 0, 0, 0, 0, '"O Treinamento ''conquistando o esgoto!'' - A batalha real 3"\r\n');
REPLACE INTO `quest_db` VALUES(7137, 0, 0, 0, 0, 0, 0, 0, '"O Treinamento ''conquistando o esgoto!'' - Complete a quest"\r\n');
REPLACE INTO `quest_db` VALUES(7138, 0, 0, 0, 0, 0, 0, 0, '"O Treinamento ''conquistando a caverna assombrada!'' - Início"\r\n');
REPLACE INTO `quest_db` VALUES(7139, 0, 1076, 15, 0, 0, 0, 0, '"O Treinamento ''conquistando a caverna assombrada!'' - A batalha real 1"\r\n');
REPLACE INTO `quest_db` VALUES(7140, 0, 1031, 10, 0, 0, 0, 0, '"O Treinamento ''conquistando a caverna assombrada!'' - A batalha real 2"\r\n');
REPLACE INTO `quest_db` VALUES(7141, 0, 0, 0, 0, 0, 0, 0, '"O Treinamento ''conquistando a caverna assombrada!'' - Complete a quest"\r\n');
REPLACE INTO `quest_db` VALUES(7142, 0, 0, 0, 0, 0, 0, 0, '"O Treinamento ''conquistando o formigueiro!'' - Início"\r\n');
REPLACE INTO `quest_db` VALUES(7143, 0, 1160, 15, 0, 0, 0, 0, '"O Treinamento ''conquistando o formigueiro!'' - A batalha real 1"\r\n');
REPLACE INTO `quest_db` VALUES(7144, 0, 1095, 15, 0, 0, 0, 0, '"O Treinamento ''conquistando o formigueiro!'' - A batalha real 2"\r\n');
REPLACE INTO `quest_db` VALUES(7145, 0, 1176, 10, 0, 0, 0, 0, '"O Treinamento ''conquistando o formigueiro!'' - A batalha real 3"\r\n');
REPLACE INTO `quest_db` VALUES(7146, 0, 0, 0, 0, 0, 0, 0, '"O Treinamento ''conquistando o formigueiro!'' - Complete a quest"\r\n');
REPLACE INTO `quest_db` VALUES(7147, 0, 0, 0, 0, 0, 0, 0, '"O Treinamento ''conquistando o vilarejo dos orcs!'' - Início"\r\n');
REPLACE INTO `quest_db` VALUES(7148, 0, 1686, 10, 0, 0, 0, 0, '"O Treinamento ''conquistando o vilarejo dos orcs!'' - A batalha real 1"\r\n');
REPLACE INTO `quest_db` VALUES(7149, 0, 1023, 10, 0, 0, 0, 0, '"O Treinamento ''conquistando o vilarejo dos orcs!'' - A batalha real 2"\r\n');
REPLACE INTO `quest_db` VALUES(7150, 0, 1273, 10, 0, 0, 0, 0, '"O Treinamento ''conquistando o vilarejo dos orcs!'' - A batalha real 3"\r\n');
REPLACE INTO `quest_db` VALUES(7151, 0, 0, 0, 0, 0, 0, 0, '"O Treinamento ''conquistando o vilarejo dos orcs!'' - Complete a quest"\r\n');
REPLACE INTO `quest_db` VALUES(7152, 0, 0, 0, 0, 0, 0, 0, '"bO Treinamento ''conquistando a caverna dos orcs!'' - Início"\r\n');
REPLACE INTO `quest_db` VALUES(7153, 0, 1153, 20, 0, 0, 0, 0, '"O Treinamento ''conquistando a caverna dos orcs!'' - A batalha real 1"\r\n');
REPLACE INTO `quest_db` VALUES(7154, 0, 1152, 20, 0, 0, 0, 0, '"O Treinamento ''conquistando a caverna dos orcs!''- A batalha real 2"\r\n');
REPLACE INTO `quest_db` VALUES(7155, 0, 0, 0, 0, 0, 0, 0, '"O Treinamento ''conquistando a caverna dos orcs!'' - Complete a quest"\r\n');
REPLACE INTO `quest_db` VALUES(7156, 0, 0, 0, 0, 0, 0, 0, '"O Treinamento ''conquistando a cidade submarina!'' - Início"\r\n');
REPLACE INTO `quest_db` VALUES(7157, 0, 1264, 15, 0, 0, 0, 0, '"O Treinamento ''conquistando a cidade submarina!'' - A batalha real 1"\r\n');
REPLACE INTO `quest_db` VALUES(7158, 0, 1065, 10, 0, 0, 0, 0, '0');
REPLACE INTO `quest_db` VALUES(7159, 0, 0, 0, 0, 0, 0, 0, '"O Treinamento ''conquistando a cidade submarina!'' - Complete a quest"\r\n');
REPLACE INTO `quest_db` VALUES(7160, 0, 0, 0, 0, 0, 0, 0, '"O Criptograma Misterioso"\r\n');
REPLACE INTO `quest_db` VALUES(7161, 0, 0, 0, 0, 0, 0, 0, '"O Criptograma Misterioso - 2"\r\n');
REPLACE INTO `quest_db` VALUES(7162, 0, 0, 0, 0, 0, 0, 0, '"O Criptograma Misterioso - 2"\r\n');
REPLACE INTO `quest_db` VALUES(7163, 0, 0, 0, 0, 0, 0, 0, '"O Criptograma Misterioso - 2"\r\n');
REPLACE INTO `quest_db` VALUES(7164, 0, 0, 0, 0, 0, 0, 0, '"Caçando a Sombra da Decepção"\r\n');
REPLACE INTO `quest_db` VALUES(7165, 0, 0, 0, 0, 0, 0, 0, '"Chave da Decepção"\r\n');
REPLACE INTO `quest_db` VALUES(7166, 0, 0, 0, 0, 0, 0, 0, '"Atelier de Rachel"\r\n');
REPLACE INTO `quest_db` VALUES(7167, 0, 0, 0, 0, 0, 0, 0, '"O Criptograma Misterioso - 3"\r\n');
REPLACE INTO `quest_db` VALUES(7168, 0, 0, 0, 0, 0, 0, 0, '"O Criptograma Misterioso - 3"\r\n');
REPLACE INTO `quest_db` VALUES(7169, 0, 0, 0, 0, 0, 0, 0, '"O Criptograma Misterioso - 3"\r\n');
REPLACE INTO `quest_db` VALUES(7170, 0, 0, 0, 0, 0, 0, 0, '"O Criptograma Misterioso - 3"\r\n');
REPLACE INTO `quest_db` VALUES(7171, 0, 0, 0, 0, 0, 0, 0, '"Procurando pela chave da Ilusão"\r\n');
REPLACE INTO `quest_db` VALUES(7172, 0, 0, 0, 0, 0, 0, 0, '"Chave da Ilusão"\r\n');
REPLACE INTO `quest_db` VALUES(7173, 0, 0, 0, 0, 0, 0, 0, '"Mensagem de Haled a Paul"\r\n');
REPLACE INTO `quest_db` VALUES(7174, 0, 0, 0, 0, 0, 0, 0, '"O Criptograma Misterioso - 4"\r\n');
REPLACE INTO `quest_db` VALUES(7175, 0, 0, 0, 0, 0, 0, 0, '"Caçando a Sombra da Diversão"\r\n');
REPLACE INTO `quest_db` VALUES(7176, 0, 0, 0, 0, 0, 0, 0, '"Chave da Diversão"\r\n');
REPLACE INTO `quest_db` VALUES(7177, 0, 0, 0, 0, 0, 0, 0, '"Um jovem rapaz em Lighthalzen"\r\n');
REPLACE INTO `quest_db` VALUES(7178, 0, 0, 0, 0, 0, 0, 0, '"Destino da Ilusão');
REPLACE INTO `quest_db` VALUES(7179, 0, 0, 0, 0, 0, 0, 0, '"Vicente');
REPLACE INTO `quest_db` VALUES(7180, 0, 0, 0, 0, 0, 0, 0, '"Mensagem de Doomk"\r\n');
REPLACE INTO `quest_db` VALUES(7181, 0, 0, 0, 0, 0, 0, 0, '"Anel de Karakas"\r\n');
REPLACE INTO `quest_db` VALUES(7182, 0, 0, 0, 0, 0, 0, 0, '"Visita a Sapha"\r\n');
REPLACE INTO `quest_db` VALUES(7183, 0, 0, 0, 0, 0, 0, 0, '"O convite de Sapha"\r\n');
REPLACE INTO `quest_db` VALUES(7184, 0, 0, 0, 0, 0, 0, 0, '"Para El Dicastes!"\r\n');
REPLACE INTO `quest_db` VALUES(7185, 0, 0, 0, 0, 0, 0, 0, '"Inspetor Doha"\r\n');
REPLACE INTO `quest_db` VALUES(7186, 0, 0, 0, 0, 0, 0, 0, '"Doha - Sobrevivente"\r\n');
REPLACE INTO `quest_db` VALUES(7187, 0, 0, 0, 0, 0, 0, 0, '"Doha Ordem Secreta - Condado"\r\n');
REPLACE INTO `quest_db` VALUES(7188, 0, 0, 0, 0, 0, 0, 0, '"Coleta de Informações - na Praça"\r\n');
REPLACE INTO `quest_db` VALUES(7189, 0, 0, 0, 0, 0, 0, 0, '"Coleta de Informações - na Fábrica"\r\n');
REPLACE INTO `quest_db` VALUES(7190, 0, 0, 0, 0, 0, 0, 0, '"Coleta de Informações - Para Segurança"\r\n');
REPLACE INTO `quest_db` VALUES(7191, 0, 0, 0, 0, 0, 0, 0, '"Nomeação de Shire - BK"\r\n');
REPLACE INTO `quest_db` VALUES(7192, 0, 0, 0, 0, 0, 0, 0, '"Informação de BK"\r\n');
REPLACE INTO `quest_db` VALUES(7193, 0, 0, 0, 0, 0, 0, 0, '"Investigação da Fenda Dimensional"\r\n');
REPLACE INTO `quest_db` VALUES(7194, 0, 0, 0, 0, 0, 0, 0, '"O que é esse sangue pisado?"\r\n');
REPLACE INTO `quest_db` VALUES(7195, 0, 0, 0, 0, 0, 0, 0, '"O que é esse pedaço de pele?"\r\n');
REPLACE INTO `quest_db` VALUES(7196, 0, 0, 0, 0, 0, 0, 0, '"O que é esse poder mágico?"\r\n');
REPLACE INTO `quest_db` VALUES(7197, 0, 0, 0, 0, 0, 0, 0, '"Cerficações de Sapha?"\r\n');
REPLACE INTO `quest_db` VALUES(7198, 0, 0, 0, 0, 0, 0, 0, '"Audiencia com Ahat"\r\n');
REPLACE INTO `quest_db` VALUES(7199, 0, 0, 0, 0, 0, 0, 0, '"Ordem Secreta de Ahat"\r\n');
REPLACE INTO `quest_db` VALUES(7200, 82800, 0, 0, 0, 0, 0, 0, '"Chamado de Cheshire"\r\n');
REPLACE INTO `quest_db` VALUES(7201, 0, 0, 0, 0, 0, 0, 0, '"Limpando a ''Rachadura''"\r\n');
REPLACE INTO `quest_db` VALUES(7202, 0, 0, 0, 0, 0, 0, 0, '"Ordem Secreta de Doha - Coleta de provas"\r\n');
REPLACE INTO `quest_db` VALUES(7203, 0, 0, 0, 0, 0, 0, 0, '"Ordem Secreta de Doha - Relatório Final"\r\n');
REPLACE INTO `quest_db` VALUES(7214, 0, 0, 0, 0, 0, 0, 0, '"Eden Avançado:: Treinamento"\r\n');
REPLACE INTO `quest_db` VALUES(7215, 0, 1278, 3, 0, 0, 0, 0, '"Eden Avançado:: Cace - Romeo 1"\r\n');
REPLACE INTO `quest_db` VALUES(7216, 0, 1278, 10, 0, 0, 0, 0, '"Eden Avançado:: Cace - Romeo 2"\r\n');
REPLACE INTO `quest_db` VALUES(7217, 0, 0, 0, 0, 0, 0, 0, '"Eden Avançado:: Cace - Romeo 3"\r\n');
REPLACE INTO `quest_db` VALUES(7218, 0, 0, 0, 0, 0, 0, 0, '"Eden Avançado:: Treinamento de Romeo Completo"\r\n');
REPLACE INTO `quest_db` VALUES(7219, 0, 0, 0, 0, 0, 0, 0, '"Eden Avançado:: Treinamento de Johan"\r\n');
REPLACE INTO `quest_db` VALUES(7220, 0, 1192, 20, 0, 0, 0, 0, '"Eden Avançado:: Cace - Johan 1"\r\n');
REPLACE INTO `quest_db` VALUES(7221, 0, 1117, 10, 0, 0, 0, 0, '"Eden Avançado:: Cace - Johan 2"\r\n');
REPLACE INTO `quest_db` VALUES(7222, 0, 0, 0, 0, 0, 0, 0, '"Eden Avançado:: Treinamento de Johan Completo"\r\n');
REPLACE INTO `quest_db` VALUES(7223, 0, 0, 0, 0, 0, 0, 0, '"Eden Avançado:: Treinamento de Kiren"\r\n');
REPLACE INTO `quest_db` VALUES(7224, 0, 1619, 30, 0, 0, 0, 0, '"Eden Avançado:: Cace - Kiren 1"\r\n');
REPLACE INTO `quest_db` VALUES(7225, 0, 1620, 30, 0, 0, 0, 0, '"Eden Avançado:: Afastado"\r\n');
REPLACE INTO `quest_db` VALUES(7226, 0, 1621, 30, 0, 0, 0, 0, '"Eden Avançado:: Cace - Kiren 2 (Parte A)"\r\n');
REPLACE INTO `quest_db` VALUES(7227, 0, 1622, 5, 0, 0, 0, 0, '"Eden Avançado:: Cace - Kiren 2 (Parte B)"\r\n');
REPLACE INTO `quest_db` VALUES(7228, 0, 0, 0, 0, 0, 0, 0, '"Eden Avançado:: Treinamento de Kiren Completo"\r\n');
REPLACE INTO `quest_db` VALUES(7229, 0, 0, 0, 0, 0, 0, 0, '"Eden Avançado:: Treinamento de Naomi"\r\n');
REPLACE INTO `quest_db` VALUES(7230, 0, 1776, 30, 0, 0, 0, 0, '"Eden Avançado:: Cace - Naomi 1"\r\n');
REPLACE INTO `quest_db` VALUES(7231, 0, 1776, 30, 0, 0, 0, 0, '"Eden Avançado:: Cace - Naomi 2"\r\n');
REPLACE INTO `quest_db` VALUES(7232, 0, 0, 0, 0, 0, 0, 0, '"Eden Avançado:: Treinamento de Naomi Completo"\r\n');
REPLACE INTO `quest_db` VALUES(7233, 0, 0, 0, 0, 0, 0, 0, '"Eden Avançado:: Treinamento de Margaret"\r\n');
REPLACE INTO `quest_db` VALUES(7234, 0, 0, 0, 0, 0, 0, 0, '"Eden Avançado:: Favor para Margaret"\r\n');
REPLACE INTO `quest_db` VALUES(7235, 0, 1988, 1, 0, 0, 0, 0, '"Eden Avançado:: Cace- Margaret 1"\r\n');
REPLACE INTO `quest_db` VALUES(7236, 0, 1995, 5, 0, 0, 0, 0, '"Eden Avançado:: Cace- Margaret 2"\r\n');
REPLACE INTO `quest_db` VALUES(7237, 0, 0, 0, 0, 0, 0, 0, '"Eden Avançado:: Teste de Margaret Completo"\r\n');
REPLACE INTO `quest_db` VALUES(7238, 0, 0, 0, 0, 0, 0, 0, '"Recados de Toren (Fácil)"\r\n');
REPLACE INTO `quest_db` VALUES(7239, 0, 0, 0, 0, 0, 0, 0, '"Recados de Toren (Normal)"\r\n');
REPLACE INTO `quest_db` VALUES(7240, 0, 0, 0, 0, 0, 0, 0, '"Fortalecendo Equipamento"\r\n');
REPLACE INTO `quest_db` VALUES(7241, 86400, 0, 0, 0, 0, 0, 0, '"Recados de Toren - Amanhã"\r\n');
REPLACE INTO `quest_db` VALUES(8000, 0, 0, 0, 0, 0, 0, 0, '"Parar de mudança de classe"\r\n');
REPLACE INTO `quest_db` VALUES(8001, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Assassino"\r\n');
REPLACE INTO `quest_db` VALUES(8002, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Assassino"\r\n');
REPLACE INTO `quest_db` VALUES(8003, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Assassino"\r\n');
REPLACE INTO `quest_db` VALUES(8004, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Assassino"\r\n');
REPLACE INTO `quest_db` VALUES(8005, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Assassino"\r\n');
REPLACE INTO `quest_db` VALUES(8006, 0, 0, 0, 0, 0, 0, 0, '"Encontre o Líder da Guilda!"\r\n');
REPLACE INTO `quest_db` VALUES(8007, 0, 0, 0, 0, 0, 0, 0, '"Aceitação do Líder da Guilda"\r\n');
REPLACE INTO `quest_db` VALUES(8008, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Assassino"\r\n');
REPLACE INTO `quest_db` VALUES(8009, 0, 0, 0, 0, 0, 0, 0, '"Registro para a mudança de classe: Sacerdote"\r\n');
REPLACE INTO `quest_db` VALUES(8010, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Sacerdote"\r\n');
REPLACE INTO `quest_db` VALUES(8011, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Sacerdote"\r\n');
REPLACE INTO `quest_db` VALUES(8012, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Sacerdote"\r\n');
REPLACE INTO `quest_db` VALUES(8013, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Sacerdote"\r\n');
REPLACE INTO `quest_db` VALUES(8014, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Sacerdote"\r\n');
REPLACE INTO `quest_db` VALUES(8015, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Sacerdote"\r\n');
REPLACE INTO `quest_db` VALUES(8016, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Sacerdote"\r\n');
REPLACE INTO `quest_db` VALUES(8017, 0, 0, 0, 0, 0, 0, 0, '"Inspeção de Fábrica"\r\n');
REPLACE INTO `quest_db` VALUES(8018, 0, 0, 0, 0, 0, 0, 0, '"Inspeção de Fábrica"\r\n');
REPLACE INTO `quest_db` VALUES(8019, 0, 0, 0, 0, 0, 0, 0, '"Inspeção de Fábrica"\r\n');
REPLACE INTO `quest_db` VALUES(8020, 0, 0, 0, 0, 0, 0, 0, '"Inspeção de Fábrica"\r\n');
REPLACE INTO `quest_db` VALUES(8021, 0, 0, 0, 0, 0, 0, 0, '"Inspeção de Fábrica"\r\n');
REPLACE INTO `quest_db` VALUES(8022, 0, 0, 0, 0, 0, 0, 0, '"Inspeção de Fábrica"\r\n');
REPLACE INTO `quest_db` VALUES(8023, 0, 0, 0, 0, 0, 0, 0, '"Inspeção de Fábrica"\r\n');
REPLACE INTO `quest_db` VALUES(8024, 0, 0, 0, 0, 0, 0, 0, '"Inspeção de Fábrica"\r\n');
REPLACE INTO `quest_db` VALUES(8025, 0, 0, 0, 0, 0, 0, 0, '"Inspeção de Fábrica"\r\n');
REPLACE INTO `quest_db` VALUES(8026, 0, 0, 0, 0, 0, 0, 0, '"Inspeção de Fábrica"\r\n');
REPLACE INTO `quest_db` VALUES(8027, 0, 0, 0, 0, 0, 0, 0, '"Inspeção de Fábrica"\r\n');
REPLACE INTO `quest_db` VALUES(8028, 0, 0, 0, 0, 0, 0, 0, '"Inspeção de Fábrica"\r\n');
REPLACE INTO `quest_db` VALUES(8029, 0, 0, 0, 0, 0, 0, 0, '"Inspeção de Fábrica"\r\n');
REPLACE INTO `quest_db` VALUES(8030, 0, 0, 0, 0, 0, 0, 0, '"Inspeção de Fábrica"\r\n');
REPLACE INTO `quest_db` VALUES(8031, 0, 0, 0, 0, 0, 0, 0, '"Inspeção de Fábrica"\r\n');
REPLACE INTO `quest_db` VALUES(8032, 0, 0, 0, 0, 0, 0, 0, '"Favor a Tarlock"\r\n');
REPLACE INTO `quest_db` VALUES(8033, 0, 0, 0, 0, 0, 0, 0, '"Favor a Terlock"\r\n');
REPLACE INTO `quest_db` VALUES(8034, 0, 0, 0, 0, 0, 0, 0, '"Favor a Ferlock"\r\n');
REPLACE INTO `quest_db` VALUES(8035, 0, 0, 0, 0, 0, 0, 0, '"Como funciona o Dirigível"\r\n');
REPLACE INTO `quest_db` VALUES(8036, 0, 0, 0, 0, 0, 0, 0, '"Favor a Hallen"\r\n');
REPLACE INTO `quest_db` VALUES(8037, 0, 0, 0, 0, 0, 0, 0, '"O dado rola"\r\n');
REPLACE INTO `quest_db` VALUES(8038, 0, 0, 0, 0, 0, 0, 0, '"O dado rola"\r\n');
REPLACE INTO `quest_db` VALUES(8039, 0, 0, 0, 0, 0, 0, 0, '"O Segredo do Aeroplano"\r\n');
REPLACE INTO `quest_db` VALUES(8040, 0, 0, 0, 0, 0, 0, 0, '"O Segredo do Aeroplano"\r\n');
REPLACE INTO `quest_db` VALUES(8041, 0, 0, 0, 0, 0, 0, 0, '"O Segredo do Aeroplano"\r\n');
REPLACE INTO `quest_db` VALUES(8042, 0, 0, 0, 0, 0, 0, 0, '"O Segredo do Aeroplano"\r\n');
REPLACE INTO `quest_db` VALUES(8043, 0, 0, 0, 0, 0, 0, 0, '"O Segredo do Aeroplano"\r\n');
REPLACE INTO `quest_db` VALUES(8044, 0, 0, 0, 0, 0, 0, 0, '"A Fiança de Euslan"\r\n');
REPLACE INTO `quest_db` VALUES(8045, 0, 0, 0, 0, 0, 0, 0, '"Dicas de Kaci"\r\n');
REPLACE INTO `quest_db` VALUES(8046, 0, 0, 0, 0, 0, 0, 0, '"Ferlock lista de passageiros"\r\n');
REPLACE INTO `quest_db` VALUES(8047, 0, 0, 0, 0, 0, 0, 0, '"Favor a Euslan"\r\n');
REPLACE INTO `quest_db` VALUES(8048, 0, 0, 0, 0, 0, 0, 0, '"Testemunho de Eukran"\r\n');
REPLACE INTO `quest_db` VALUES(8049, 0, 0, 0, 0, 0, 0, 0, '"Favor a Thierry"\r\n');
REPLACE INTO `quest_db` VALUES(8050, 0, 0, 0, 0, 0, 0, 0, '"Perigo vindo de Thierry"\r\n');
REPLACE INTO `quest_db` VALUES(8051, 0, 0, 0, 0, 0, 0, 0, '"Remédio de Euslan"\r\n');
REPLACE INTO `quest_db` VALUES(8052, 0, 0, 0, 0, 0, 0, 0, '"Favor a Thierry"\r\n');
REPLACE INTO `quest_db` VALUES(8053, 0, 0, 0, 0, 0, 0, 0, '"Encontre Postell"\r\n');
REPLACE INTO `quest_db` VALUES(8054, 0, 0, 0, 0, 0, 0, 0, '"Mensagem a Postell"\r\n');
REPLACE INTO `quest_db` VALUES(8055, 0, 0, 0, 0, 0, 0, 0, '"Cura de Allen"\r\n');
REPLACE INTO `quest_db` VALUES(8056, 0, 0, 0, 0, 0, 0, 0, '"Alguma coisa em troca"\r\n');
REPLACE INTO `quest_db` VALUES(8057, 0, 0, 0, 0, 0, 0, 0, '"Reclamação de Manainne"\r\n');
REPLACE INTO `quest_db` VALUES(8058, 0, 0, 0, 0, 0, 0, 0, '"Conversa com El Schatt"\r\n');
REPLACE INTO `quest_db` VALUES(8059, 0, 0, 0, 0, 0, 0, 0, '"Conversa com Perfitz"\r\n');
REPLACE INTO `quest_db` VALUES(8060, 0, 0, 0, 0, 0, 0, 0, '"El Schatt teimoso"\r\n');
REPLACE INTO `quest_db` VALUES(8061, 0, 0, 0, 0, 0, 0, 0, '"Histórias do passado"\r\n');
REPLACE INTO `quest_db` VALUES(8062, 0, 0, 0, 0, 0, 0, 0, '"Kanainne"\r\n');
REPLACE INTO `quest_db` VALUES(8063, 0, 0, 0, 0, 0, 0, 0, '"Espírito de Kanainne"\r\n');
REPLACE INTO `quest_db` VALUES(8064, 0, 0, 0, 0, 0, 0, 0, '"Celette - Sopa de Bolinhos de Peixe"\r\n');
REPLACE INTO `quest_db` VALUES(8065, 0, 0, 0, 0, 0, 0, 0, '"Celette - Sopa de Bolinhos de Peixe"\r\n');
REPLACE INTO `quest_db` VALUES(8066, 0, 0, 0, 0, 0, 0, 0, '"Celette - Sopa de Bolinhos de Peixe"\r\n');
REPLACE INTO `quest_db` VALUES(8067, 0, 0, 0, 0, 0, 0, 0, '"Celette - Sopa de Bolinhos de Peixe"\r\n');
REPLACE INTO `quest_db` VALUES(8068, 0, 0, 0, 0, 0, 0, 0, '"Celette - Sopa de Bolinhos de Peixe"\r\n');
REPLACE INTO `quest_db` VALUES(8069, 0, 0, 0, 0, 0, 0, 0, '"Celette - Sopa de Bolinhos de Peixe"\r\n');
REPLACE INTO `quest_db` VALUES(8070, 0, 0, 0, 0, 0, 0, 0, '"Celette - Sopa de Bolinhos de Peixe"\r\n');
REPLACE INTO `quest_db` VALUES(8071, 0, 0, 0, 0, 0, 0, 0, '"Celette - Sopa de Bolinhos de Peixe"\r\n');
REPLACE INTO `quest_db` VALUES(8072, 0, 0, 0, 0, 0, 0, 0, '"Celette - Sopa de Bolinhos de Peixe"\r\n');
REPLACE INTO `quest_db` VALUES(8073, 0, 0, 0, 0, 0, 0, 0, '"Celette - Sopa de Bolinhos de Peixe"\r\n');
REPLACE INTO `quest_db` VALUES(8074, 0, 0, 0, 0, 0, 0, 0, '"Celette - Sopa de Bolinhos de Peixe"\r\n');
REPLACE INTO `quest_db` VALUES(8075, 0, 0, 0, 0, 0, 0, 0, '"Celette - Sopa de Bolinhos de Peixe"\r\n');
REPLACE INTO `quest_db` VALUES(8076, 0, 0, 0, 0, 0, 0, 0, '"Klitzer e Calla"\r\n');
REPLACE INTO `quest_db` VALUES(8077, 0, 0, 0, 0, 0, 0, 0, '"Klitzer e Calla"\r\n');
REPLACE INTO `quest_db` VALUES(8078, 0, 0, 0, 0, 0, 0, 0, '"Klitzer e Calla"\r\n');
REPLACE INTO `quest_db` VALUES(8079, 0, 0, 0, 0, 0, 0, 0, '"Klitzer e Calla"\r\n');
REPLACE INTO `quest_db` VALUES(8080, 0, 0, 0, 0, 0, 0, 0, '"Klitzer e Calla"\r\n');
REPLACE INTO `quest_db` VALUES(8081, 0, 0, 0, 0, 0, 0, 0, '"Klitzer e Calla"\r\n');
REPLACE INTO `quest_db` VALUES(8082, 0, 0, 0, 0, 0, 0, 0, '"Klitzer e Calla"\r\n');
REPLACE INTO `quest_db` VALUES(8083, 0, 0, 0, 0, 0, 0, 0, '"Klitzer e Calla"\r\n');
REPLACE INTO `quest_db` VALUES(8084, 0, 0, 0, 0, 0, 0, 0, '"Klitzer e Calla"\r\n');
REPLACE INTO `quest_db` VALUES(8085, 0, 0, 0, 0, 0, 0, 0, '"Klitzer e Calla"\r\n');
REPLACE INTO `quest_db` VALUES(8086, 0, 0, 0, 0, 0, 0, 0, '"Klitzer e Calla"\r\n');
REPLACE INTO `quest_db` VALUES(8087, 0, 0, 0, 0, 0, 0, 0, '"Klitzer e Calla"\r\n');
REPLACE INTO `quest_db` VALUES(8088, 0, 0, 0, 0, 0, 0, 0, '"Klitzer e Calla"\r\n');
REPLACE INTO `quest_db` VALUES(8089, 0, 0, 0, 0, 0, 0, 0, '"Gema Roubada"\r\n');
REPLACE INTO `quest_db` VALUES(8090, 0, 0, 0, 0, 0, 0, 0, '"Sr. Manson"\r\n');
REPLACE INTO `quest_db` VALUES(8091, 0, 0, 0, 0, 0, 0, 0, '"Jenny a jardineira"\r\n');
REPLACE INTO `quest_db` VALUES(8092, 0, 0, 0, 0, 0, 0, 0, '"Pesquisando o Mercado"\r\n');
REPLACE INTO `quest_db` VALUES(8093, 0, 0, 0, 0, 0, 0, 0, '"Mensagem Misteriosa"\r\n');
REPLACE INTO `quest_db` VALUES(8094, 0, 0, 0, 0, 0, 0, 0, '"Dupla Cruzada?"\r\n');
REPLACE INTO `quest_db` VALUES(8095, 0, 0, 0, 0, 0, 0, 0, '"Encontre Phobe"\r\n');
REPLACE INTO `quest_db` VALUES(8096, 0, 0, 0, 0, 0, 0, 0, '"A Gema Roubada foi encontrada"\r\n');
REPLACE INTO `quest_db` VALUES(8097, 0, 0, 0, 0, 0, 0, 0, '"Informando Jenny"\r\n');
REPLACE INTO `quest_db` VALUES(8098, 0, 0, 0, 0, 0, 0, 0, '"Mantendo o Segredo"\r\n');
REPLACE INTO `quest_db` VALUES(8099, 0, 0, 0, 0, 0, 0, 0, '"Recomendação de Vicente"\r\n');
REPLACE INTO `quest_db` VALUES(8100, 0, 0, 0, 0, 0, 0, 0, '"Recomendação do Sumo Sacerdote Zhed"\r\n');
REPLACE INTO `quest_db` VALUES(8101, 0, 0, 0, 0, 0, 0, 0, '"Recomendação do Sumo Sacerdote Zhed"\r\n');
REPLACE INTO `quest_db` VALUES(8102, 0, 0, 0, 0, 0, 0, 0, '"Recomendação do Sumo Sacerdote Zhed"\r\n');
REPLACE INTO `quest_db` VALUES(8103, 0, 0, 0, 0, 0, 0, 0, '"Recomendação do Sumo Sacerdote Zhed"\r\n');
REPLACE INTO `quest_db` VALUES(8104, 0, 0, 0, 0, 0, 0, 0, '"Recomendação do Sumo Sacerdote Zhed"\r\n');
REPLACE INTO `quest_db` VALUES(8105, 0, 0, 0, 0, 0, 0, 0, '"Recomendação do Sumo Sacerdote Zhed"\r\n');
REPLACE INTO `quest_db` VALUES(8106, 0, 0, 0, 0, 0, 0, 0, '"Filha do Sr. Shendar"\r\n');
REPLACE INTO `quest_db` VALUES(8107, 0, 0, 0, 0, 0, 0, 0, '"Testemunho de Lachellen"\r\n');
REPLACE INTO `quest_db` VALUES(8108, 0, 0, 0, 0, 0, 0, 0, '"Um estrangeiro');
REPLACE INTO `quest_db` VALUES(8109, 0, 0, 0, 0, 0, 0, 0, '"Cheiro de Bruspetti"\r\n');
REPLACE INTO `quest_db` VALUES(8110, 0, 0, 0, 0, 0, 0, 0, '"Cheiro de Bruspetti"\r\n');
REPLACE INTO `quest_db` VALUES(8111, 0, 0, 0, 0, 0, 0, 0, '"Testemunho de Lachelle"\r\n');
REPLACE INTO `quest_db` VALUES(8112, 0, 0, 0, 0, 0, 0, 0, '"Nascente de Freya"\r\n');
REPLACE INTO `quest_db` VALUES(8113, 0, 0, 0, 0, 0, 0, 0, '"Diário de Bruspetti"\r\n');
REPLACE INTO `quest_db` VALUES(8114, 0, 0, 0, 0, 0, 0, 0, '"Diário de Bruspetti"\r\n');
REPLACE INTO `quest_db` VALUES(8115, 0, 0, 0, 0, 0, 0, 0, '"Katinshuell o Suspeito"\r\n');
REPLACE INTO `quest_db` VALUES(8116, 0, 0, 0, 0, 0, 0, 0, '"Testemunho de Lachellen"\r\n');
REPLACE INTO `quest_db` VALUES(8117, 0, 0, 0, 0, 0, 0, 0, '"Nascente de Freya"\r\n');
REPLACE INTO `quest_db` VALUES(8118, 0, 0, 0, 0, 0, 0, 0, '"Conversando com o Sr. Shendar"\r\n');
REPLACE INTO `quest_db` VALUES(8119, 0, 0, 0, 0, 0, 0, 0, '"Diário de Bruspetti"\r\n');
REPLACE INTO `quest_db` VALUES(8120, 0, 0, 0, 0, 0, 0, 0, '"Conversando com Katinshuell"\r\n');
REPLACE INTO `quest_db` VALUES(8121, 0, 0, 0, 0, 0, 0, 0, '"Conversando com Katinshuell"\r\n');
REPLACE INTO `quest_db` VALUES(8122, 0, 0, 0, 0, 0, 0, 0, '"Lugar de descanso de Bruspetti"\r\n');
REPLACE INTO `quest_db` VALUES(8123, 0, 0, 0, 0, 0, 0, 0, '"O prato mais famosa de Ayotaya');
REPLACE INTO `quest_db` VALUES(8124, 0, 0, 0, 0, 0, 0, 0, '"O prato mais famosa de Ayotaya');
REPLACE INTO `quest_db` VALUES(8125, 0, 0, 0, 0, 0, 0, 0, '"O prato mais famosa de Ayotaya');
REPLACE INTO `quest_db` VALUES(8126, 0, 0, 0, 0, 0, 0, 0, '"O prato mais famosa de Ayotaya');
REPLACE INTO `quest_db` VALUES(8127, 0, 0, 0, 0, 0, 0, 0, '"Momotaro - Viagem de Campo"\r\n');
REPLACE INTO `quest_db` VALUES(8128, 0, 0, 0, 0, 0, 0, 0, '"Momotaro - Viagem de Campo"\r\n');
REPLACE INTO `quest_db` VALUES(8129, 0, 0, 0, 0, 0, 0, 0, '"Momotaro - Viagem de Campo"\r\n');
REPLACE INTO `quest_db` VALUES(8130, 0, 0, 0, 0, 0, 0, 0, '"Momotaro - Viagem de Campo"\r\n');
REPLACE INTO `quest_db` VALUES(8131, 0, 0, 0, 0, 0, 0, 0, '"A mãe do senhor de Amatsu"\r\n');
REPLACE INTO `quest_db` VALUES(8132, 0, 0, 0, 0, 0, 0, 0, '"A mãe do senhor de Amatsu"\r\n');
REPLACE INTO `quest_db` VALUES(8133, 0, 0, 0, 0, 0, 0, 0, '"Canção da raposa"\r\n');
REPLACE INTO `quest_db` VALUES(8134, 0, 0, 0, 0, 0, 0, 0, '"Garoto do Santuário do Norte"\r\n');
REPLACE INTO `quest_db` VALUES(8135, 0, 0, 0, 0, 0, 0, 0, '"Expulsão da Raposa"\r\n');
REPLACE INTO `quest_db` VALUES(8136, 0, 0, 0, 0, 0, 0, 0, '"Aviso do Lobo Cinzento"\r\n');
REPLACE INTO `quest_db` VALUES(8137, 0, 0, 0, 0, 0, 0, 0, '"Encontre o Chaveiro"\r\n');
REPLACE INTO `quest_db` VALUES(8138, 0, 0, 0, 0, 0, 0, 0, '"O pedido do ferreiro"\r\n');
REPLACE INTO `quest_db` VALUES(8139, 0, 0, 0, 0, 0, 0, 0, '"A Chave Dourada"\r\n');
REPLACE INTO `quest_db` VALUES(8140, 0, 0, 0, 0, 0, 0, 0, '"O Anel Vermelho"\r\n');
REPLACE INTO `quest_db` VALUES(8141, 0, 0, 0, 0, 0, 0, 0, '"O Anel Vermelho de Mashenka"\r\n');
REPLACE INTO `quest_db` VALUES(8142, 0, 0, 0, 0, 0, 0, 0, '"Procurando o Pântano"\r\n');
REPLACE INTO `quest_db` VALUES(8143, 0, 0, 0, 0, 0, 0, 0, '"A Voz da Flauta"\r\n');
REPLACE INTO `quest_db` VALUES(8144, 0, 0, 0, 0, 0, 0, 0, '"A Confição de Ryubaba"\r\n');
REPLACE INTO `quest_db` VALUES(8145, 0, 0, 0, 0, 0, 0, 0, '"Pedido da mãe preocupada"\r\n');
REPLACE INTO `quest_db` VALUES(8146, 0, 0, 0, 0, 0, 0, 0, '"Encontrando Lusalka"\r\n');
REPLACE INTO `quest_db` VALUES(8147, 0, 0, 0, 0, 0, 0, 0, '"Querido Lusalka"\r\n');
REPLACE INTO `quest_db` VALUES(8148, 0, 0, 0, 0, 0, 0, 0, '"Querido Lusalka"\r\n');
REPLACE INTO `quest_db` VALUES(8149, 0, 0, 0, 0, 0, 0, 0, '"Procurando por Igor"\r\n');
REPLACE INTO `quest_db` VALUES(8150, 0, 0, 0, 0, 0, 0, 0, '"Mensagem de Igor"\r\n');
REPLACE INTO `quest_db` VALUES(8151, 0, 0, 0, 0, 0, 0, 0, '"Caverna de Marozka"\r\n');
REPLACE INTO `quest_db` VALUES(8152, 0, 0, 0, 0, 0, 0, 0, '"O Fio de Ouro"\r\n');
REPLACE INTO `quest_db` VALUES(8153, 0, 0, 0, 0, 0, 0, 0, '"Teste da mente e da sabedoria"\r\n');
REPLACE INTO `quest_db` VALUES(8154, 0, 0, 0, 0, 0, 0, 0, '"O Chaveiro"\r\n');
REPLACE INTO `quest_db` VALUES(8155, 0, 0, 0, 0, 0, 0, 0, '"Favor a Baba-Yaga"\r\n');
REPLACE INTO `quest_db` VALUES(8156, 0, 0, 0, 0, 0, 0, 0, '"Favor a Baba-Yaga"\r\n');
REPLACE INTO `quest_db` VALUES(8157, 0, 0, 0, 0, 0, 0, 0, '"Favor a Baba-Yaga"\r\n');
REPLACE INTO `quest_db` VALUES(8158, 0, 0, 0, 0, 0, 0, 0, '"Favor a Baba-Yaga"\r\n');
REPLACE INTO `quest_db` VALUES(8159, 0, 0, 0, 0, 0, 0, 0, '"Favor a Baba-Yaga"\r\n');
REPLACE INTO `quest_db` VALUES(8160, 0, 0, 0, 0, 0, 0, 0, '"Favor a Baba-Yaga"\r\n');
REPLACE INTO `quest_db` VALUES(8161, 0, 0, 0, 0, 0, 0, 0, '"Favor a Baba-Yaga"\r\n');
REPLACE INTO `quest_db` VALUES(8162, 0, 0, 0, 0, 0, 0, 0, '"Favor a Baba-Yaga"\r\n');
REPLACE INTO `quest_db` VALUES(8163, 0, 0, 0, 0, 0, 0, 0, '"Favor a Baba-Yaga"\r\n');
REPLACE INTO `quest_db` VALUES(8164, 0, 0, 0, 0, 0, 0, 0, '"Favor a Baba-Yaga"\r\n');
REPLACE INTO `quest_db` VALUES(8165, 0, 0, 0, 0, 0, 0, 0, '"Favor a Baba-Yaga"\r\n');
REPLACE INTO `quest_db` VALUES(8166, 0, 0, 0, 0, 0, 0, 0, '"Favor a Baba-Yaga"\r\n');
REPLACE INTO `quest_db` VALUES(8167, 0, 0, 0, 0, 0, 0, 0, '"A Chave Dourada"\r\n');
REPLACE INTO `quest_db` VALUES(8168, 0, 0, 0, 0, 0, 0, 0, '"Koshei');
REPLACE INTO `quest_db` VALUES(8169, 0, 0, 0, 0, 0, 0, 0, '"Água da Vida e da Morte"\r\n');
REPLACE INTO `quest_db` VALUES(8170, 0, 0, 0, 0, 0, 0, 0, '"Água da Vida e da Morte"\r\n');
REPLACE INTO `quest_db` VALUES(8171, 0, 0, 0, 0, 0, 0, 0, '"Água da Vida e da Morte"\r\n');
REPLACE INTO `quest_db` VALUES(8181, 0, 0, 0, 0, 0, 0, 0, '"Explosão Protetora"\r\n');
REPLACE INTO `quest_db` VALUES(8182, 0, 0, 0, 0, 0, 0, 0, '"Teoria do Empurrão"\r\n');
REPLACE INTO `quest_db` VALUES(8183, 0, 0, 0, 0, 0, 0, 0, '"Explosão Protetora"\r\n');
REPLACE INTO `quest_db` VALUES(8184, 0, 0, 0, 0, 0, 0, 0, '"Conversão Elemental"\r\n');
REPLACE INTO `quest_db` VALUES(8185, 0, 0, 0, 0, 0, 0, 0, '"Mudança Elemental"\r\n');
REPLACE INTO `quest_db` VALUES(8186, 0, 0, 0, 0, 0, 0, 0, '"Conversor Elemental: Fogo"\r\n');
REPLACE INTO `quest_db` VALUES(8187, 0, 0, 0, 0, 0, 0, 0, '"Conversor Elemental: Terra"\r\n');
REPLACE INTO `quest_db` VALUES(8188, 0, 0, 0, 0, 0, 0, 0, '"Conversor Elemental: Vento"\r\n');
REPLACE INTO `quest_db` VALUES(8189, 0, 0, 0, 0, 0, 0, 0, '"Conversor Elemental: Água"\r\n');
REPLACE INTO `quest_db` VALUES(8190, 0, 0, 0, 0, 0, 0, 0, '"Piscadela Encantadora"\r\n');
REPLACE INTO `quest_db` VALUES(8191, 0, 0, 0, 0, 0, 0, 0, '"Assessor Charmoso"\r\n');
REPLACE INTO `quest_db` VALUES(8192, 0, 0, 0, 0, 0, 0, 0, '"Assessor Egoísta"\r\n');
REPLACE INTO `quest_db` VALUES(8193, 0, 0, 0, 0, 0, 0, 0, '"Assessor Egoísta"\r\n');
REPLACE INTO `quest_db` VALUES(8194, 0, 0, 0, 0, 0, 0, 0, '"Assessor Bêbado"\r\n');
REPLACE INTO `quest_db` VALUES(8195, 0, 0, 0, 0, 0, 0, 0, '"Doce Canell"\r\n');
REPLACE INTO `quest_db` VALUES(8196, 0, 0, 0, 0, 0, 0, 0, '"Rivalidade na Aliança"\r\n');
REPLACE INTO `quest_db` VALUES(8197, 0, 0, 0, 0, 0, 0, 0, '"Entrega de Documento"\r\n');
REPLACE INTO `quest_db` VALUES(8198, 0, 0, 0, 0, 0, 0, 0, '"Relatório ao Oficial de Pesquisa"\r\n');
REPLACE INTO `quest_db` VALUES(8199, 0, 0, 0, 0, 0, 0, 0, '"Favor ao Oficial de Pesquisa"\r\n');
REPLACE INTO `quest_db` VALUES(8200, 0, 0, 0, 0, 0, 0, 0, '"Pedido de Documento de Ryosen"\r\n');
REPLACE INTO `quest_db` VALUES(8201, 0, 0, 0, 0, 0, 0, 0, '"Documento Perdido"\r\n');
REPLACE INTO `quest_db` VALUES(8202, 0, 0, 0, 0, 0, 0, 0, '"Documento Restaurado"\r\n');
REPLACE INTO `quest_db` VALUES(8203, 0, 0, 0, 0, 0, 0, 0, '"Documento Restaurado"\r\n');
REPLACE INTO `quest_db` VALUES(8204, 0, 0, 0, 0, 0, 0, 0, '"Ryosen"\r\n');
REPLACE INTO `quest_db` VALUES(8205, 0, 0, 0, 0, 0, 0, 0, '"Relatório ao Reino de Pesquisa Oficial"\r\n');
REPLACE INTO `quest_db` VALUES(8206, 0, 0, 0, 0, 0, 0, 0, '"Encontro de Pesquisadores"\r\n');
REPLACE INTO `quest_db` VALUES(8207, 0, 0, 0, 0, 0, 0, 0, '"Hansenne não é culpado."\r\n');
REPLACE INTO `quest_db` VALUES(8208, 0, 0, 0, 0, 0, 0, 0, '"Favor a Hansenne"\r\n');
REPLACE INTO `quest_db` VALUES(8209, 0, 0, 0, 0, 0, 0, 0, '"Relatória a Hue"\r\n');
REPLACE INTO `quest_db` VALUES(8210, 0, 0, 0, 0, 0, 0, 0, '"Relatório ao Reino de Pesquisa Oficial"\r\n');
REPLACE INTO `quest_db` VALUES(8211, 0, 0, 0, 0, 0, 0, 0, '"Palestra do Shurank"\r\n');
REPLACE INTO `quest_db` VALUES(8212, 0, 0, 0, 0, 0, 0, 0, '"Palestra do Shurank"\r\n');
REPLACE INTO `quest_db` VALUES(8213, 0, 0, 0, 0, 0, 0, 0, '"Palestra do Shurank"\r\n');
REPLACE INTO `quest_db` VALUES(8214, 0, 0, 0, 0, 0, 0, 0, '"Palestra do Shurank"\r\n');
REPLACE INTO `quest_db` VALUES(8215, 0, 0, 0, 0, 0, 0, 0, '"Palestra do Shurank"\r\n');
REPLACE INTO `quest_db` VALUES(8216, 0, 0, 0, 0, 0, 0, 0, '"Ordem do Shurank"\r\n');
REPLACE INTO `quest_db` VALUES(8217, 0, 0, 0, 0, 0, 0, 0, '"Mensagem do Dequee"\r\n');
REPLACE INTO `quest_db` VALUES(8218, 0, 0, 0, 0, 0, 0, 0, '"Palestra do Shurank"\r\n');
REPLACE INTO `quest_db` VALUES(8219, 0, 0, 0, 0, 0, 0, 0, '"Palestra do Shurank"\r\n');
REPLACE INTO `quest_db` VALUES(8220, 0, 0, 0, 0, 0, 0, 0, '"Palestra do Shurank"\r\n');
REPLACE INTO `quest_db` VALUES(8221, 0, 0, 0, 0, 0, 0, 0, '"Palestra do Shurank"\r\n');
REPLACE INTO `quest_db` VALUES(8222, 0, 0, 0, 0, 0, 0, 0, '"Ordem de Shurank"\r\n');
REPLACE INTO `quest_db` VALUES(8223, 0, 0, 0, 0, 0, 0, 0, '"Ordem de Dequee"\r\n');
REPLACE INTO `quest_db` VALUES(8224, 0, 0, 0, 0, 0, 0, 0, '"A dica"\r\n');
REPLACE INTO `quest_db` VALUES(8225, 0, 0, 0, 0, 0, 0, 0, '"Raciocínio de Dequee"\r\n');
REPLACE INTO `quest_db` VALUES(8226, 0, 0, 0, 0, 0, 0, 0, '"Morte de Bankley"\r\n');
REPLACE INTO `quest_db` VALUES(8227, 0, 0, 0, 0, 0, 0, 0, '"Retorno de Shurank"\r\n');
REPLACE INTO `quest_db` VALUES(8228, 0, 0, 0, 0, 0, 0, 0, '"Palestra de Shurank"\r\n');
REPLACE INTO `quest_db` VALUES(8229, 0, 0, 0, 0, 0, 0, 0, '"Palestra de Guarnien"\r\n');
REPLACE INTO `quest_db` VALUES(8230, 0, 0, 0, 0, 0, 0, 0, '"Palestra de Guarnien"\r\n');
REPLACE INTO `quest_db` VALUES(8231, 0, 0, 0, 0, 0, 0, 0, '"Palestra de Guarnien"\r\n');
REPLACE INTO `quest_db` VALUES(8232, 0, 0, 0, 0, 0, 0, 0, '"Palestra de Guarnien"\r\n');
REPLACE INTO `quest_db` VALUES(8233, 0, 0, 0, 0, 0, 0, 0, '"Palestra de Guarnien"\r\n');
REPLACE INTO `quest_db` VALUES(8234, 0, 0, 0, 0, 0, 0, 0, '"Prontera - Pesquisa de Mercado"\r\n');
REPLACE INTO `quest_db` VALUES(8235, 0, 0, 0, 0, 0, 0, 0, '"Palestra de Guarnien"\r\n');
REPLACE INTO `quest_db` VALUES(8236, 0, 0, 0, 0, 0, 0, 0, '"Palestra de Guarnien"\r\n');
REPLACE INTO `quest_db` VALUES(8237, 0, 0, 0, 0, 0, 0, 0, '"Palestra de Guarnien"\r\n');
REPLACE INTO `quest_db` VALUES(8238, 0, 0, 0, 0, 0, 0, 0, '"Palestra de Guarnien"\r\n');
REPLACE INTO `quest_db` VALUES(8239, 0, 0, 0, 0, 0, 0, 0, '"Palestra de Guarnien"\r\n');
REPLACE INTO `quest_db` VALUES(8240, 0, 0, 0, 0, 0, 0, 0, '"Palestra de Guarnien"\r\n');
REPLACE INTO `quest_db` VALUES(8241, 0, 0, 0, 0, 0, 0, 0, '"Coleção de jóias vermelhas"\r\n');
REPLACE INTO `quest_db` VALUES(8242, 0, 0, 0, 0, 0, 0, 0, '"Coleção de jóias azuis"\r\n');
REPLACE INTO `quest_db` VALUES(8243, 0, 0, 0, 0, 0, 0, 0, '"Aprendendo novas línguas"\r\n');
REPLACE INTO `quest_db` VALUES(8244, 0, 0, 0, 0, 0, 0, 0, '"Fadas e Árvores Gigantes"\r\n');
REPLACE INTO `quest_db` VALUES(8245, 0, 0, 0, 0, 0, 0, 0, '"Investigação - Modelo de linguagem"\r\n');
REPLACE INTO `quest_db` VALUES(8246, 0, 0, 0, 0, 0, 0, 0, '"Investigação - Modelo de linguagem"\r\n');
REPLACE INTO `quest_db` VALUES(8247, 0, 0, 0, 0, 0, 0, 0, '"Progresso da pesquisa"\r\n');
REPLACE INTO `quest_db` VALUES(8248, 0, 0, 0, 0, 0, 0, 0, '"Progresso da pesquisa"\r\n');
REPLACE INTO `quest_db` VALUES(8249, 0, 0, 0, 0, 0, 0, 0, '"Informação Compressa"\r\n');
REPLACE INTO `quest_db` VALUES(8250, 0, 0, 0, 0, 0, 0, 0, '"Gema de Armazenamento"\r\n');
REPLACE INTO `quest_db` VALUES(8251, 0, 0, 0, 0, 0, 0, 0, '"Injeção de Magia"\r\n');
REPLACE INTO `quest_db` VALUES(8252, 0, 0, 0, 0, 0, 0, 0, '"Jóias Trabalhadas a Mão"\r\n');
REPLACE INTO `quest_db` VALUES(8253, 3600, 0, 0, 0, 0, 0, 0, '"Dispositivo de tradução de idiomas"\r\n');
REPLACE INTO `quest_db` VALUES(8254, 0, 0, 0, 0, 0, 0, 0, '"Com o corpo e o coração leve"\r\n');
REPLACE INTO `quest_db` VALUES(8255, 0, 0, 0, 0, 0, 0, 0, '"O teste do poder pela existência"\r\n');
REPLACE INTO `quest_db` VALUES(8256, 0, 0, 0, 0, 0, 0, 0, '"O teste do poder pela existência"\r\n');
REPLACE INTO `quest_db` VALUES(8257, 0, 0, 0, 0, 0, 0, 0, '"Fornecimento de alimentos de lágrima"\r\n');
REPLACE INTO `quest_db` VALUES(8258, 0, 0, 0, 0, 0, 0, 0, '"Fornecimento de alimentos de lágrima"\r\n');
REPLACE INTO `quest_db` VALUES(8259, 0, 0, 0, 0, 0, 0, 0, '"a um lugar para fazer um teste de técnica prática"\r\n');
REPLACE INTO `quest_db` VALUES(8260, 0, 0, 0, 0, 0, 0, 0, '"Missão! Entregar documentos"\r\n');
REPLACE INTO `quest_db` VALUES(8261, 0, 0, 0, 0, 0, 0, 0, '"Quando você tocar a flauta');
REPLACE INTO `quest_db` VALUES(8262, 0, 0, 0, 0, 0, 0, 0, '"Mestre Sentinela nunca mais"\r\n');
REPLACE INTO `quest_db` VALUES(8265, 0, 0, 0, 0, 0, 0, 0, '"Uma vez por hora!"\r\n');
REPLACE INTO `quest_db` VALUES(8266, 0, 1077, 10, 0, 0, 0, 0, '"Caçando Esporo Venenoso!"\r\n');
REPLACE INTO `quest_db` VALUES(8267, 0, 1056, 10, 0, 0, 0, 0, '"Caçando Fumacento!"\r\n');
REPLACE INTO `quest_db` VALUES(8268, 0, 1033, 10, 0, 0, 0, 0, '"Caçando Salgueiro Ancião!"\r\n');
REPLACE INTO `quest_db` VALUES(8269, 0, 1104, 10, 0, 0, 0, 0, '"Caçando Coco!"\r\n');
REPLACE INTO `quest_db` VALUES(8270, 0, 1034, 10, 0, 0, 0, 0, '"Caçando Sapo de Thara!"\r\n');
REPLACE INTO `quest_db` VALUES(8271, 0, 0, 0, 0, 0, 0, 0, '"Entregue os sprays tóxicos!"\r\n');
REPLACE INTO `quest_db` VALUES(8272, 0, 0, 0, 0, 0, 0, 0, '"Entregue o Mel!"\r\n');
REPLACE INTO `quest_db` VALUES(8273, 0, 0, 0, 0, 0, 0, 0, '"Entregue a Manta!"\r\n');
REPLACE INTO `quest_db` VALUES(8274, 0, 0, 0, 0, 0, 0, 0, '"Colete Ossos!"\r\n');
REPLACE INTO `quest_db` VALUES(8275, 0, 0, 0, 0, 0, 0, 0, '"Colete Patas!"\r\n');
REPLACE INTO `quest_db` VALUES(8276, 0, 0, 0, 0, 0, 0, 0, '"Colete Scell!"\r\n');
REPLACE INTO `quest_db` VALUES(8277, 0, 0, 0, 0, 0, 0, 0, '"Colete Caudas!"\r\n');
REPLACE INTO `quest_db` VALUES(8278, 0, 0, 0, 0, 0, 0, 0, '"Colete Biscoitos!"\r\n');
REPLACE INTO `quest_db` VALUES(8279, 0, 0, 0, 0, 0, 0, 0, '"Colete Bigode!"\r\n');
REPLACE INTO `quest_db` VALUES(9000, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Cavaleiro"\r\n');
REPLACE INTO `quest_db` VALUES(9001, 0, 0, 0, 0, 0, 0, 0, '"Lealdade de um Cavaleiro"\r\n');
REPLACE INTO `quest_db` VALUES(9002, 0, 0, 0, 0, 0, 0, 0, '"Lealdade de um Cavaleiro"\r\n');
REPLACE INTO `quest_db` VALUES(9003, 0, 0, 0, 0, 0, 0, 0, '"Honra de um Cavaleiro"\r\n');
REPLACE INTO `quest_db` VALUES(9004, 0, 0, 0, 0, 0, 0, 0, '"Honra de um Cavaleiro"\r\n');
REPLACE INTO `quest_db` VALUES(9005, 0, 0, 0, 0, 0, 0, 0, '"Tenacidade de um Cavaleiro"\r\n');
REPLACE INTO `quest_db` VALUES(9006, 0, 0, 0, 0, 0, 0, 0, '"Tenacidade de um Cavaleiro"\r\n');
REPLACE INTO `quest_db` VALUES(9007, 0, 0, 0, 0, 0, 0, 0, '"A Honra do Cavaleiro"\r\n');
REPLACE INTO `quest_db` VALUES(9008, 0, 0, 0, 0, 0, 0, 0, '"Etiqueta de um Cavaleiro"\r\n');
REPLACE INTO `quest_db` VALUES(9009, 0, 0, 0, 0, 0, 0, 0, '"Vida de um Cavaleiro"\r\n');
REPLACE INTO `quest_db` VALUES(9010, 0, 0, 0, 0, 0, 0, 0, '"Qualidade da reverência"\r\n');
REPLACE INTO `quest_db` VALUES(9011, 0, 0, 0, 0, 0, 0, 0, '"Vida de um Caveleiro"\r\n');
REPLACE INTO `quest_db` VALUES(9012, 0, 0, 0, 0, 0, 0, 0, '"Glória de um Cavaleiro!"\r\n');
REPLACE INTO `quest_db` VALUES(9013, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Bruxo"\r\n');
REPLACE INTO `quest_db` VALUES(9014, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Bruxo"\r\n');
REPLACE INTO `quest_db` VALUES(9015, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Bruxo"\r\n');
REPLACE INTO `quest_db` VALUES(9016, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Bruxo"\r\n');
REPLACE INTO `quest_db` VALUES(9017, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Bruxo"\r\n');
REPLACE INTO `quest_db` VALUES(9018, 0, 0, 0, 0, 0, 0, 0, '"Certificado de Bruxo!"\r\n');
REPLACE INTO `quest_db` VALUES(9024, 0, 0, 0, 0, 0, 0, 0, '"O garoto de recados de Einbroch"\r\n');
REPLACE INTO `quest_db` VALUES(9028, 0, 0, 0, 0, 0, 0, 0, '"Hidra"\r\n');
REPLACE INTO `quest_db` VALUES(9029, 86400, 0, 0, 0, 0, 0, 0, '"Hidra : condições atuais"\r\n');
REPLACE INTO `quest_db` VALUES(9030, 0, 0, 0, 0, 0, 0, 0, '"Encontre um filhote de cachorro"\r\n');
REPLACE INTO `quest_db` VALUES(9031, 0, 0, 0, 0, 0, 0, 0, '"Encontre um filhote de cachorro"\r\n');
REPLACE INTO `quest_db` VALUES(9032, 86400, 0, 0, 0, 0, 0, 0, '"Encontre um filhote de cachorro"\r\n');
REPLACE INTO `quest_db` VALUES(9058, 0, 0, 0, 0, 0, 0, 0, '"O Pedido de Riley"\r\n');
REPLACE INTO `quest_db` VALUES(9059, 0, 0, 0, 0, 0, 0, 0, '"Feliz dia de São Patrício"\r\n');
REPLACE INTO `quest_db` VALUES(9117, 0, 0, 0, 0, 0, 0, 0, '"Maldição de Lina"\r\n');
REPLACE INTO `quest_db` VALUES(9118, 0, 0, 0, 0, 0, 0, 0, '"Maldição de Lina - Caçando Deviruchi"\r\n');
REPLACE INTO `quest_db` VALUES(9119, 0, 0, 0, 0, 0, 0, 0, '"Maldição de Lina - Caçando Aparição"\r\n');
REPLACE INTO `quest_db` VALUES(9120, 0, 0, 0, 0, 0, 0, 0, '"Maldição de Lina - Caçando Dullahan"\r\n');
REPLACE INTO `quest_db` VALUES(9121, 0, 0, 0, 0, 0, 0, 0, '"Maldição de Lina - Caçando Pesadelo Sombrio"\r\n');
REPLACE INTO `quest_db` VALUES(9122, 0, 0, 0, 0, 0, 0, 0, '"Maldição de Lina"\r\n');
REPLACE INTO `quest_db` VALUES(9123, 0, 0, 0, 0, 0, 0, 0, '"Maldição de Lina"\r\n');
REPLACE INTO `quest_db` VALUES(9155, 0, 0, 0, 0, 0, 0, 0, '"Obtendo materiais para a Coroa Jaty"\r\n');
REPLACE INTO `quest_db` VALUES(9156, 0, 0, 0, 0, 0, 0, 0, '"Criando a Coroa de Jaty"\r\n');
REPLACE INTO `quest_db` VALUES(9157, 0, 0, 0, 0, 0, 0, 0, '"Premiando o Sábio');
REPLACE INTO `quest_db` VALUES(9158, 0, 0, 0, 0, 0, 0, 0, '"Dando Boas Notícias(1)"\r\n');
REPLACE INTO `quest_db` VALUES(9159, 0, 0, 0, 0, 0, 0, 0, '"Volte até Paiko"\r\n');
REPLACE INTO `quest_db` VALUES(9160, 0, 0, 0, 0, 0, 0, 0, '"Dando Boas Notícias(2)"\r\n');
REPLACE INTO `quest_db` VALUES(9161, 0, 0, 0, 0, 0, 0, 0, '"Volte até Paiko"\r\n');
REPLACE INTO `quest_db` VALUES(9162, 0, 0, 0, 0, 0, 0, 0, '"Dando Boas Notícias(3)"\r\n');
REPLACE INTO `quest_db` VALUES(9163, 0, 0, 0, 0, 0, 0, 0, '"Volte até Paiko"\r\n');
REPLACE INTO `quest_db` VALUES(9164, 0, 0, 0, 0, 0, 0, 0, '"Dando Boas Notícias(4)"\r\n');
REPLACE INTO `quest_db` VALUES(9165, 0, 0, 0, 0, 0, 0, 0, '"Prêmio de Paiko pelo sucesso da Coroa Jaty"\r\n');
REPLACE INTO `quest_db` VALUES(10000, 0, 0, 0, 0, 0, 0, 0, '"Para a Corte Real de Prontera"\r\n');
REPLACE INTO `quest_db` VALUES(10001, 0, 0, 0, 0, 0, 0, 0, '"Teste de Qualificação"\r\n');
REPLACE INTO `quest_db` VALUES(10002, 0, 0, 0, 0, 0, 0, 0, '"Avaliação de Qualificação"\r\n');
REPLACE INTO `quest_db` VALUES(10003, 0, 0, 0, 0, 0, 0, 0, '"Instruções sobre o que fazer"\r\n');
REPLACE INTO `quest_db` VALUES(10004, 0, 0, 0, 0, 0, 0, 0, '"Relatório Provisório"\r\n');
REPLACE INTO `quest_db` VALUES(10005, 0, 0, 0, 0, 0, 0, 0, '"Príncipe Eigen Ahrum"\r\n');
REPLACE INTO `quest_db` VALUES(10006, 0, 0, 0, 0, 0, 0, 0, '"Príncipe Ernst"\r\n');
REPLACE INTO `quest_db` VALUES(10007, 0, 0, 0, 0, 0, 0, 0, '"Príncipe Poe"\r\n');
REPLACE INTO `quest_db` VALUES(10008, 0, 0, 0, 0, 0, 0, 0, '"Príncipe Peter"\r\n');
REPLACE INTO `quest_db` VALUES(10009, 0, 0, 0, 0, 0, 0, 0, '"Príncipe Urugen"\r\n');
REPLACE INTO `quest_db` VALUES(10010, 0, 0, 0, 0, 0, 0, 0, '"Príncipe Helmut"\r\n');
REPLACE INTO `quest_db` VALUES(10011, 0, 0, 0, 0, 0, 0, 0, '"Príncipe Erich"\r\n');
REPLACE INTO `quest_db` VALUES(10012, 0, 0, 0, 0, 0, 0, 0, '"Conversa dos dois príncipes"\r\n');
REPLACE INTO `quest_db` VALUES(10013, 0, 0, 0, 0, 0, 0, 0, '"Procurando a garota desconhecida"\r\n');
REPLACE INTO `quest_db` VALUES(10014, 0, 0, 0, 0, 0, 0, 0, '"Volte a Peter"\r\n');
REPLACE INTO `quest_db` VALUES(10015, 0, 0, 0, 0, 0, 0, 0, '"Teste 15"\r\n');
REPLACE INTO `quest_db` VALUES(10016, 0, 0, 0, 0, 0, 0, 0, '"Um Convidado da Família Walter"\r\n');
REPLACE INTO `quest_db` VALUES(10017, 0, 0, 0, 0, 0, 0, 0, '"Conspiração"\r\n');
REPLACE INTO `quest_db` VALUES(10018, 0, 0, 0, 0, 0, 0, 0, '"Vilão Ahrum - Poe"\r\n');
REPLACE INTO `quest_db` VALUES(10019, 0, 0, 0, 0, 0, 0, 0, '"Vilão Ahrum - Peter"\r\n');
REPLACE INTO `quest_db` VALUES(10020, 0, 0, 0, 0, 0, 0, 0, '"Vilão Ahrum - Erich"\r\n');
REPLACE INTO `quest_db` VALUES(10021, 0, 0, 0, 0, 0, 0, 0, '"Vilão Ahrum - Urugen"\r\n');
REPLACE INTO `quest_db` VALUES(10022, 0, 0, 0, 0, 0, 0, 0, '"Vilão Ahrum - Helmut"\r\n');
REPLACE INTO `quest_db` VALUES(10023, 0, 0, 0, 0, 0, 0, 0, '"De Eigen Ahrum e Ernst - Primeiro -"\r\n');
REPLACE INTO `quest_db` VALUES(10024, 0, 0, 0, 0, 0, 0, 0, '"De Eigen Ahrum e Ernst - Segundo -"\r\n');
REPLACE INTO `quest_db` VALUES(10025, 0, 0, 0, 0, 0, 0, 0, '"Adeus');
REPLACE INTO `quest_db` VALUES(10026, 0, 0, 0, 0, 0, 0, 0, '"Reformando Meto"\r\n');
REPLACE INTO `quest_db` VALUES(10027, 0, 0, 0, 0, 0, 0, 0, '"Reformando Meto"\r\n');
REPLACE INTO `quest_db` VALUES(10028, 0, 0, 0, 0, 0, 0, 0, '"Reformando Meto"\r\n');
REPLACE INTO `quest_db` VALUES(10029, 0, 0, 0, 0, 0, 0, 0, '"Reformando Meto"\r\n');
REPLACE INTO `quest_db` VALUES(10030, 0, 0, 0, 0, 0, 0, 0, '"Reformando Meto"\r\n');
REPLACE INTO `quest_db` VALUES(10031, 0, 0, 0, 0, 0, 0, 0, '"Reformando Meto"\r\n');
REPLACE INTO `quest_db` VALUES(10032, 0, 0, 0, 0, 0, 0, 0, '"Reformando Meto"\r\n');
REPLACE INTO `quest_db` VALUES(10033, 0, 0, 0, 0, 0, 0, 0, '"Reformando Meto"\r\n');
REPLACE INTO `quest_db` VALUES(10034, 0, 0, 0, 0, 0, 0, 0, '"Procure a Faca"\r\n');
REPLACE INTO `quest_db` VALUES(10035, 0, 0, 0, 0, 0, 0, 0, '"Entregue a faca"\r\n');
REPLACE INTO `quest_db` VALUES(10036, 0, 0, 0, 0, 0, 0, 0, '"Fornecimento de Material - Doce"\r\n');
REPLACE INTO `quest_db` VALUES(10037, 0, 0, 0, 0, 0, 0, 0, '"Fornecimento de Material - Ruim"\r\n');
REPLACE INTO `quest_db` VALUES(10038, 0, 0, 0, 0, 0, 0, 0, '"Fornecimento de Material - Búzio"\r\n');
REPLACE INTO `quest_db` VALUES(10039, 0, 0, 0, 0, 0, 0, 0, '"Fornecimento de Material - Cauda de Peixe"\r\n');
REPLACE INTO `quest_db` VALUES(10040, 0, 0, 0, 0, 0, 0, 0, '"Fornecimento de Material - Prato Branco"\r\n');
REPLACE INTO `quest_db` VALUES(10041, 0, 0, 0, 0, 0, 0, 0, '"Fornecimento de Material-?"\r\n');
REPLACE INTO `quest_db` VALUES(10042, 0, 0, 0, 0, 0, 0, 0, '"Encontre as teclas do piano - faltam 5 "\r\n');
REPLACE INTO `quest_db` VALUES(10043, 0, 0, 0, 0, 0, 0, 0, '"Encontre as teclas do piano - faltam 5"\r\n');
REPLACE INTO `quest_db` VALUES(10044, 0, 0, 0, 0, 0, 0, 0, '"Encontre as teclas do piano - faltam 4"\r\n');
REPLACE INTO `quest_db` VALUES(10045, 0, 0, 0, 0, 0, 0, 0, '"Encontre as teclas do piano - faltam 4"\r\n');
REPLACE INTO `quest_db` VALUES(10046, 0, 0, 0, 0, 0, 0, 0, '"Encontre as teclas do piano - faltam 3"\r\n');
REPLACE INTO `quest_db` VALUES(10047, 0, 0, 0, 0, 0, 0, 0, '"Encontre as teclas do piano - faltam 3"\r\n');
REPLACE INTO `quest_db` VALUES(10048, 0, 0, 0, 0, 0, 0, 0, '"Encontre as teclas do piano - faltam 2"\r\n');
REPLACE INTO `quest_db` VALUES(10049, 0, 0, 0, 0, 0, 0, 0, '"Encontre as teclas do piano - faltam 2"\r\n');
REPLACE INTO `quest_db` VALUES(10050, 0, 0, 0, 0, 0, 0, 0, '"Encontre as teclas do piano - falta 1"\r\n');
REPLACE INTO `quest_db` VALUES(10051, 0, 0, 0, 0, 0, 0, 0, '"Encontre as teclas do piano - falta 1"\r\n');
REPLACE INTO `quest_db` VALUES(10052, 0, 0, 0, 0, 0, 0, 0, '"Encontre as teclas do piano - Para o piano"\r\n');
REPLACE INTO `quest_db` VALUES(10053, 0, 0, 0, 0, 0, 0, 0, '"Encontre as teclas do piano - Preencha o lugar vazio"\r\n');
REPLACE INTO `quest_db` VALUES(10054, 0, 0, 0, 0, 0, 0, 0, '"Á Beira da Fuga"\r\n');
REPLACE INTO `quest_db` VALUES(10055, 0, 0, 0, 0, 0, 0, 0, '"Compreendendo a cultura de Utan"\r\n');
REPLACE INTO `quest_db` VALUES(10056, 0, 0, 0, 0, 0, 0, 0, '"Aprendendo a Língua Utan"\r\n');
REPLACE INTO `quest_db` VALUES(10057, 0, 0, 0, 0, 0, 0, 0, '"Indo para o Outro Mundo"\r\n');
REPLACE INTO `quest_db` VALUES(10058, 0, 0, 0, 0, 0, 0, 0, '"Indo para o Outro Mundo"\r\n');
REPLACE INTO `quest_db` VALUES(10059, 0, 0, 0, 0, 0, 0, 0, '"Indo para o Outro Mundo"\r\n');
REPLACE INTO `quest_db` VALUES(10060, 0, 0, 0, 0, 0, 0, 0, '"Indo para o Outro Mundo"\r\n');
REPLACE INTO `quest_db` VALUES(10061, 0, 0, 0, 0, 0, 0, 0, '"Indo para o Outro Mundo"\r\n');
REPLACE INTO `quest_db` VALUES(10062, 0, 0, 0, 0, 0, 0, 0, '"Indo para o Outro Mundo"\r\n');
REPLACE INTO `quest_db` VALUES(10063, 0, 0, 0, 0, 0, 0, 0, '"Indo para o Outro Mundo"\r\n');
REPLACE INTO `quest_db` VALUES(10064, 0, 0, 0, 0, 0, 0, 0, '"Indo para o Outro Mundo"\r\n');
REPLACE INTO `quest_db` VALUES(10065, 0, 0, 0, 0, 0, 0, 0, '"Indo para o Outro Mundo"\r\n');
REPLACE INTO `quest_db` VALUES(10066, 0, 0, 0, 0, 0, 0, 0, '"Indo para o Outro Mundo"\r\n');
REPLACE INTO `quest_db` VALUES(10067, 0, 0, 0, 0, 0, 0, 0, '"Indo para o Outro Mundo"\r\n');
REPLACE INTO `quest_db` VALUES(10068, 0, 0, 0, 0, 0, 0, 0, '"Indo para o Outro Mundo"\r\n');
REPLACE INTO `quest_db` VALUES(10069, 0, 0, 0, 0, 0, 0, 0, '"Indo para o Outro Mundo"\r\n');
REPLACE INTO `quest_db` VALUES(10070, 0, 0, 0, 0, 0, 0, 0, '"Indo para o Outro Mundo"\r\n');
REPLACE INTO `quest_db` VALUES(10071, 0, 0, 0, 0, 0, 0, 0, '"Indo para o Outro Mundo"\r\n');
REPLACE INTO `quest_db` VALUES(10072, 0, 0, 0, 0, 0, 0, 0, '"Indo para o Outro Mundo"\r\n');
REPLACE INTO `quest_db` VALUES(10073, 0, 0, 0, 0, 0, 0, 0, '"Indo para o Outro Mundo"\r\n');
REPLACE INTO `quest_db` VALUES(10074, 0, 0, 0, 0, 0, 0, 0, '"Indo para o Outro Mundo"\r\n');
REPLACE INTO `quest_db` VALUES(10075, 0, 0, 0, 0, 0, 0, 0, '"Indo para o Outro Mundo"\r\n');
REPLACE INTO `quest_db` VALUES(10076, 0, 0, 0, 0, 0, 0, 0, '"Indo para o Outro Mundo"\r\n');
REPLACE INTO `quest_db` VALUES(10077, 0, 0, 0, 0, 0, 0, 0, '"Indo para o Outro Mundo"\r\n');
REPLACE INTO `quest_db` VALUES(10078, 0, 0, 0, 0, 0, 0, 0, '"Indo para o Outro Mundo"\r\n');
REPLACE INTO `quest_db` VALUES(10079, 0, 0, 0, 0, 0, 0, 0, '"Fuja da realidade');
REPLACE INTO `quest_db` VALUES(10080, 0, 0, 0, 0, 0, 0, 0, '"Fuja da realidade');
REPLACE INTO `quest_db` VALUES(10081, 0, 0, 0, 0, 0, 0, 0, '"Fuja da realidade');
REPLACE INTO `quest_db` VALUES(10082, 0, 0, 0, 0, 0, 0, 0, '"Fuja da realidade');
REPLACE INTO `quest_db` VALUES(10083, 0, 0, 0, 0, 0, 0, 0, '"Fuja da realidade');
REPLACE INTO `quest_db` VALUES(10084, 0, 0, 0, 0, 0, 0, 0, '"Fuja da realidade');
REPLACE INTO `quest_db` VALUES(10085, 86400, 0, 0, 0, 0, 0, 0, '"Fuja da realidade');
REPLACE INTO `quest_db` VALUES(10086, 0, 0, 0, 0, 0, 0, 0, '"Fuja da realidade');
REPLACE INTO `quest_db` VALUES(10087, 0, 0, 0, 0, 0, 0, 0, '"Fuja da realidade');
REPLACE INTO `quest_db` VALUES(10088, 0, 0, 0, 0, 0, 0, 0, '"Fuja da realidade');
REPLACE INTO `quest_db` VALUES(10089, 0, 0, 0, 0, 0, 0, 0, '"Fuja da realidade');
REPLACE INTO `quest_db` VALUES(10090, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Mecânico"\r\n');
REPLACE INTO `quest_db` VALUES(10091, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Mecânico"\r\n');
REPLACE INTO `quest_db` VALUES(10092, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Mecânico"\r\n');
REPLACE INTO `quest_db` VALUES(10093, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Mecânico"\r\n');
REPLACE INTO `quest_db` VALUES(10094, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Mecânico"\r\n');
REPLACE INTO `quest_db` VALUES(10095, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Mecânico"\r\n');
REPLACE INTO `quest_db` VALUES(10096, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Mecânico"\r\n');
REPLACE INTO `quest_db` VALUES(10097, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Mecânico"\r\n');
REPLACE INTO `quest_db` VALUES(10098, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Mecânico"\r\n');
REPLACE INTO `quest_db` VALUES(10099, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Mecânico"\r\n');
REPLACE INTO `quest_db` VALUES(10100, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Mecânico"\r\n');
REPLACE INTO `quest_db` VALUES(10101, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Mecânico"\r\n');
REPLACE INTO `quest_db` VALUES(10102, 0, 0, 0, 0, 0, 0, 0, '"Para o cliente - o capítulo da esfinge"\r\n');
REPLACE INTO `quest_db` VALUES(10103, 0, 0, 0, 0, 0, 0, 0, '"Para o cliente - o capítulo de Glast heim"\r\n');
REPLACE INTO `quest_db` VALUES(10104, 0, 0, 0, 0, 0, 0, 0, '"Para o cliente - o capítulo de Yuno"\r\n');
REPLACE INTO `quest_db` VALUES(10105, 0, 0, 0, 0, 0, 0, 0, '"Para o cliente - o capítulo da Torre do Relógio"\r\n');
REPLACE INTO `quest_db` VALUES(10106, 0, 0, 0, 0, 0, 0, 0, '"Para o cliente - o capítulo da Localização "\r\n');
REPLACE INTO `quest_db` VALUES(10107, 0, 1164, 10, 0, 0, 0, 0, '"Esfinge - Réquiem"\r\n');
REPLACE INTO `quest_db` VALUES(10108, 0, 1140, 10, 0, 0, 0, 0, '"Esfinge - Marduk"\r\n');
REPLACE INTO `quest_db` VALUES(10109, 0, 1154, 10, 0, 0, 0, 0, '"Esfinge - Pasana"\r\n');
REPLACE INTO `quest_db` VALUES(10110, 0, 1260, 10, 0, 0, 0, 0, '"Glast Heim - Moldura Maldita"\r\n');
REPLACE INTO `quest_db` VALUES(10111, 0, 1117, 10, 0, 0, 0, 0, '"Glast Heim - Druída Maligno"\r\n');
REPLACE INTO `quest_db` VALUES(10112, 0, 1192, 10, 0, 0, 0, 0, '"Glast Heim - Alma Penada"\r\n');
REPLACE INTO `quest_db` VALUES(10113, 0, 1276, 10, 0, 0, 0, 0, '"Glast Heim - Raydric Arqueiro"\r\n');
REPLACE INTO `quest_db` VALUES(10114, 0, 1369, 20, 0, 0, 0, 0, '"Juno - Grande Peco"\r\n');
REPLACE INTO `quest_db` VALUES(10115, 0, 1386, 20, 0, 0, 0, 0, '"Juno - Rochoso"\r\n');
REPLACE INTO `quest_db` VALUES(10116, 0, 1372, 20, 0, 0, 0, 0, '"Juno - Bode"\r\n');
REPLACE INTO `quest_db` VALUES(10117, 0, 1376, 20, 0, 0, 0, 0, '"Juno - Harpia"\r\n');
REPLACE INTO `quest_db` VALUES(10118, 0, 1269, 10, 0, 0, 0, 0, '"Torre do Relógio - Relógio"\r\n');
REPLACE INTO `quest_db` VALUES(10119, 0, 1199, 15, 0, 0, 0, 0, '"Torre do Relógio - Punk"\r\n');
REPLACE INTO `quest_db` VALUES(10120, 0, 1195, 15, 0, 0, 0, 0, '"Torre do Relógio - Rideword"\r\n');
REPLACE INTO `quest_db` VALUES(10121, 0, 1883, 15, 0, 0, 0, 0, '"Localizando - Uzhas"\r\n');
REPLACE INTO `quest_db` VALUES(10122, 0, 1404, 15, 0, 0, 0, 0, '"Localizando - Boneco de Miyabi"\r\n');
REPLACE INTO `quest_db` VALUES(10123, 0, 1516, 15, 0, 0, 0, 0, '"Localizando - Mi Gao"\r\n');
REPLACE INTO `quest_db` VALUES(11000, 0, 0, 0, 0, 0, 0, 0, '"Inspeção do Templo de Odin"\r\n');
REPLACE INTO `quest_db` VALUES(11001, 0, 0, 0, 0, 0, 0, 0, '"Inspeção do Templo de Odin"\r\n');
REPLACE INTO `quest_db` VALUES(11002, 0, 0, 0, 0, 0, 0, 0, '"Inspeção do Templo de Odin"\r\n');
REPLACE INTO `quest_db` VALUES(11003, 0, 0, 0, 0, 0, 0, 0, '"Inspeção do Templo de Odin"\r\n');
REPLACE INTO `quest_db` VALUES(11004, 0, 0, 0, 0, 0, 0, 0, '"Inspeção do Templo de Odin"\r\n');
REPLACE INTO `quest_db` VALUES(11005, 0, 0, 0, 0, 0, 0, 0, '"Inspeção do Templo de Odin"\r\n');
REPLACE INTO `quest_db` VALUES(11006, 0, 0, 0, 0, 0, 0, 0, '"Inspeção do Templo de Odin"\r\n');
REPLACE INTO `quest_db` VALUES(11007, 0, 0, 0, 0, 0, 0, 0, '"Inspeção do Templo de Odin"\r\n');
REPLACE INTO `quest_db` VALUES(11008, 0, 0, 0, 0, 0, 0, 0, '"Inspeção do Templo de Odin"\r\n');
REPLACE INTO `quest_db` VALUES(11009, 0, 0, 0, 0, 0, 0, 0, '"Pedido de Morriphen"\r\n');
REPLACE INTO `quest_db` VALUES(11010, 0, 0, 0, 0, 0, 0, 0, '"Conseguindo o medicamento"\r\n');
REPLACE INTO `quest_db` VALUES(11011, 0, 0, 0, 0, 0, 0, 0, '"Medicina para dois"\r\n');
REPLACE INTO `quest_db` VALUES(11012, 0, 0, 0, 0, 0, 0, 0, '"Encontrando Makkie"\r\n');
REPLACE INTO `quest_db` VALUES(11013, 0, 0, 0, 0, 0, 0, 0, '"Biopesquisador"\r\n');
REPLACE INTO `quest_db` VALUES(11014, 0, 0, 0, 0, 0, 0, 0, '"A pesquisa do remédio"\r\n');
REPLACE INTO `quest_db` VALUES(11015, 0, 0, 0, 0, 0, 0, 0, '"A Cura de Siria"\r\n');
REPLACE INTO `quest_db` VALUES(11016, 0, 0, 0, 0, 0, 0, 0, '"A história de Morriphen"\r\n');
REPLACE INTO `quest_db` VALUES(11017, 0, 0, 0, 0, 0, 0, 0, '"Explorando Juperos"\r\n');
REPLACE INTO `quest_db` VALUES(11018, 0, 0, 0, 0, 0, 0, 0, '"Explorando Juperos"\r\n');
REPLACE INTO `quest_db` VALUES(11019, 0, 0, 0, 0, 0, 0, 0, '"Explorando Juperos"\r\n');
REPLACE INTO `quest_db` VALUES(11020, 0, 0, 0, 0, 0, 0, 0, '"Explorando Juperos"\r\n');
REPLACE INTO `quest_db` VALUES(11021, 0, 0, 0, 0, 0, 0, 0, '"Explorando Juperos"\r\n');
REPLACE INTO `quest_db` VALUES(11022, 0, 0, 0, 0, 0, 0, 0, '"Explorando Juperos"\r\n');
REPLACE INTO `quest_db` VALUES(11029, 0, 0, 0, 0, 0, 0, 0, '"Indo para a Ilha da Tartaruga.."\r\n');
REPLACE INTO `quest_db` VALUES(11030, 0, 0, 0, 0, 0, 0, 0, '"Indo para a Ilha da Tartaruga.."\r\n');
REPLACE INTO `quest_db` VALUES(11031, 0, 0, 0, 0, 0, 0, 0, '"Indo para a Ilha da Tartaruga.."\r\n');
REPLACE INTO `quest_db` VALUES(11032, 0, 0, 0, 0, 0, 0, 0, '"Indo para a Ilha da Tartaruga.."\r\n');
REPLACE INTO `quest_db` VALUES(11033, 0, 0, 0, 0, 0, 0, 0, '"Indo para a Ilha da Tartaruga.."\r\n');
REPLACE INTO `quest_db` VALUES(11034, 0, 0, 0, 0, 0, 0, 0, '"Indo para a Ilha da Tartaruga.."\r\n');
REPLACE INTO `quest_db` VALUES(11035, 0, 0, 0, 0, 0, 0, 0, '"Indo para a Ilha da Tartaruga.."\r\n');
REPLACE INTO `quest_db` VALUES(11036, 0, 0, 0, 0, 0, 0, 0, '"Indo para a Ilha da Tartaruga.."\r\n');
REPLACE INTO `quest_db` VALUES(11037, 0, 0, 0, 0, 0, 0, 0, '"Indo para a Ilha da Tartaruga.."\r\n');
REPLACE INTO `quest_db` VALUES(11038, 0, 0, 0, 0, 0, 0, 0, '"Conhecendo o Morto"\r\n');
REPLACE INTO `quest_db` VALUES(11039, 0, 0, 0, 0, 0, 0, 0, '"Conhecendo o Morto"\r\n');
REPLACE INTO `quest_db` VALUES(11040, 0, 0, 0, 0, 0, 0, 0, '"Conhecendo o Morto"\r\n');
REPLACE INTO `quest_db` VALUES(11041, 0, 0, 0, 0, 0, 0, 0, '"Conhecendo o Morto"\r\n');
REPLACE INTO `quest_db` VALUES(11042, 0, 0, 0, 0, 0, 0, 0, '"Conhecendo o Morto"\r\n');
REPLACE INTO `quest_db` VALUES(11043, 0, 0, 0, 0, 0, 0, 0, '"Conhecendo o Morto"\r\n');
REPLACE INTO `quest_db` VALUES(11044, 0, 0, 0, 0, 0, 0, 0, '"Erva Medicinal - Assistência Médica"\r\n');
REPLACE INTO `quest_db` VALUES(11045, 0, 0, 0, 0, 0, 0, 0, '"Erva Medicinal - Assistência Médica"\r\n');
REPLACE INTO `quest_db` VALUES(11046, 0, 0, 0, 0, 0, 0, 0, '"Erva Medicinal - Assistência Médica"\r\n');
REPLACE INTO `quest_db` VALUES(11047, 0, 0, 0, 0, 0, 0, 0, '"Erva Medicinal - Assistência Médica"\r\n');
REPLACE INTO `quest_db` VALUES(11048, 0, 0, 0, 0, 0, 0, 0, '"Erva Medicinal - Assistência Médica"\r\n');
REPLACE INTO `quest_db` VALUES(11049, 0, 0, 0, 0, 0, 0, 0, '"Erva Medicinal - Assistência Médica"\r\n');
REPLACE INTO `quest_db` VALUES(11050, 0, 0, 0, 0, 0, 0, 0, '"Erva Medicinal - Assistência Médica"\r\n');
REPLACE INTO `quest_db` VALUES(11051, 0, 0, 0, 0, 0, 0, 0, '"Erva Medicinal - Assistência Médica"\r\n');
REPLACE INTO `quest_db` VALUES(11052, 0, 0, 0, 0, 0, 0, 0, '"Erva Medicinal - Assistência Médica"\r\n');
REPLACE INTO `quest_db` VALUES(11053, 0, 0, 0, 0, 0, 0, 0, '"Erva Medicinal - Assistência Médica"\r\n');
REPLACE INTO `quest_db` VALUES(11054, 0, 0, 0, 0, 0, 0, 0, '"Erva Medicinal - Assistência Médica"\r\n');
REPLACE INTO `quest_db` VALUES(11055, 0, 0, 0, 0, 0, 0, 0, '"Erva Medicinal - Assistência Médica"\r\n');
REPLACE INTO `quest_db` VALUES(11056, 0, 0, 0, 0, 0, 0, 0, '"Erva Medicinal - Assistência Médica"\r\n');
REPLACE INTO `quest_db` VALUES(11057, 0, 0, 0, 0, 0, 0, 0, '"Erva Medicinal - Assistência Médica"\r\n');
REPLACE INTO `quest_db` VALUES(11070, 0, 0, 0, 0, 0, 0, 0, '"Rei Venenoso"\r\n');
REPLACE INTO `quest_db` VALUES(11071, 0, 0, 0, 0, 0, 0, 0, '"Rei Venenoso"\r\n');
REPLACE INTO `quest_db` VALUES(11072, 0, 0, 0, 0, 0, 0, 0, '"Rei Venenoso"\r\n');
REPLACE INTO `quest_db` VALUES(11073, 0, 0, 0, 0, 0, 0, 0, '"Rei Venenoso"\r\n');
REPLACE INTO `quest_db` VALUES(11074, 0, 0, 0, 0, 0, 0, 0, '"Rei Venenoso"\r\n');
REPLACE INTO `quest_db` VALUES(11075, 0, 0, 0, 0, 0, 0, 0, '"Rei Venenoso"\r\n');
REPLACE INTO `quest_db` VALUES(11076, 0, 0, 0, 0, 0, 0, 0, '"Rei Venenoso"\r\n');
REPLACE INTO `quest_db` VALUES(11077, 0, 0, 0, 0, 0, 0, 0, '"Rei Venenoso"\r\n');
REPLACE INTO `quest_db` VALUES(11078, 0, 0, 0, 0, 0, 0, 0, '"Rei Venenoso"\r\n');
REPLACE INTO `quest_db` VALUES(11079, 0, 0, 0, 0, 0, 0, 0, '"Rei Venenoso"\r\n');
REPLACE INTO `quest_db` VALUES(11080, 0, 0, 0, 0, 0, 0, 0, '"Rei Venenoso"\r\n');
REPLACE INTO `quest_db` VALUES(11081, 0, 0, 0, 0, 0, 0, 0, '"Rei Venenoso"\r\n');
REPLACE INTO `quest_db` VALUES(11082, 0, 0, 0, 0, 0, 0, 0, '"Rei Venenoso"\r\n');
REPLACE INTO `quest_db` VALUES(11083, 0, 0, 0, 0, 0, 0, 0, '"Rei Venenoso"\r\n');
REPLACE INTO `quest_db` VALUES(11084, 0, 0, 0, 0, 0, 0, 0, '"Novos Ambientes"\r\n');
REPLACE INTO `quest_db` VALUES(11085, 0, 0, 0, 0, 0, 0, 0, '"Novos Ambientes"\r\n');
REPLACE INTO `quest_db` VALUES(11086, 0, 0, 0, 0, 0, 0, 0, '"Novos Ambientes"\r\n');
REPLACE INTO `quest_db` VALUES(11087, 0, 0, 0, 0, 0, 0, 0, '"Reparação da Tenda"\r\n');
REPLACE INTO `quest_db` VALUES(11088, 0, 0, 0, 0, 0, 0, 0, '"Reparação da Tenda"\r\n');
REPLACE INTO `quest_db` VALUES(11089, 0, 0, 0, 0, 0, 0, 0, '"Reparação da Tenda"\r\n');
REPLACE INTO `quest_db` VALUES(11090, 0, 0, 0, 0, 0, 0, 0, '"Reparação da Tenda"\r\n');
REPLACE INTO `quest_db` VALUES(11091, 0, 0, 0, 0, 0, 0, 0, '"Suprimentos de Entrega"\r\n');
REPLACE INTO `quest_db` VALUES(11092, 0, 0, 0, 0, 0, 0, 0, '"Suprimentos de Entrega"\r\n');
REPLACE INTO `quest_db` VALUES(11093, 0, 0, 0, 0, 0, 0, 0, '"Suprimentos de Entrega"\r\n');
REPLACE INTO `quest_db` VALUES(11094, 0, 0, 0, 0, 0, 0, 0, '"Suprimentos de Entrega"\r\n');
REPLACE INTO `quest_db` VALUES(11095, 0, 0, 0, 0, 0, 0, 0, '"Suprimentos de Entrega"\r\n');
REPLACE INTO `quest_db` VALUES(11096, 0, 0, 0, 0, 0, 0, 0, '"Suprimentos de Entrega"\r\n');
REPLACE INTO `quest_db` VALUES(11097, 0, 0, 0, 0, 0, 0, 0, '"Suprimentos de Entrega"\r\n');
REPLACE INTO `quest_db` VALUES(11098, 0, 0, 0, 0, 0, 0, 0, '"Suprimentos de Entrega"\r\n');
REPLACE INTO `quest_db` VALUES(11099, 0, 0, 0, 0, 0, 0, 0, '"Para meu amigo"\r\n');
REPLACE INTO `quest_db` VALUES(11100, 0, 0, 0, 0, 0, 0, 0, '"Para meu amigo"\r\n');
REPLACE INTO `quest_db` VALUES(11101, 0, 0, 0, 0, 0, 0, 0, '"Nota secreta de Bazet"\r\n');
REPLACE INTO `quest_db` VALUES(11102, 0, 0, 0, 0, 0, 0, 0, '"Nota secreta de Bazet"\r\n');
REPLACE INTO `quest_db` VALUES(11103, 0, 0, 0, 0, 0, 0, 0, '"Nota secreta de Bazet"\r\n');
REPLACE INTO `quest_db` VALUES(11104, 0, 0, 0, 0, 0, 0, 0, '"Tempo de descanso"\r\n');
REPLACE INTO `quest_db` VALUES(11105, 0, 0, 0, 0, 0, 0, 0, '"Pele de Trendilrion"\r\n');
REPLACE INTO `quest_db` VALUES(11106, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Arcano"\r\n');
REPLACE INTO `quest_db` VALUES(11107, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Arcano"\r\n');
REPLACE INTO `quest_db` VALUES(11108, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Arcano"\r\n');
REPLACE INTO `quest_db` VALUES(11109, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Arcano"\r\n');
REPLACE INTO `quest_db` VALUES(11110, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Arcano"\r\n');
REPLACE INTO `quest_db` VALUES(11111, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Arcano"\r\n');
REPLACE INTO `quest_db` VALUES(11112, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: Arcano"\r\n');
REPLACE INTO `quest_db` VALUES(11113, 0, 0, 0, 0, 0, 0, 0, '"A eliminação ainda está funcionando"\r\n');
REPLACE INTO `quest_db` VALUES(11114, 0, 1004, 10, 0, 0, 0, 0, '"Pedido : Caçando Zangão"\r\n');
REPLACE INTO `quest_db` VALUES(11115, 0, 1009, 20, 0, 0, 0, 0, '"Pedido : Caçando Condor"\r\n');
REPLACE INTO `quest_db` VALUES(11116, 0, 1052, 10, 0, 0, 0, 0, '"Pedido : Caçando Rocker"\r\n');
REPLACE INTO `quest_db` VALUES(11117, 0, 1024, 20, 0, 0, 0, 0, '"Pedido : Caçando Rabo de Verme"\r\n');
REPLACE INTO `quest_db` VALUES(11118, 0, 1014, 30, 0, 0, 0, 0, '"Pedido : Caçando Esporo"\r\n');
REPLACE INTO `quest_db` VALUES(11119, 0, 1048, 20, 0, 0, 0, 0, '"Pedido : Caçando Peste"\r\n');
REPLACE INTO `quest_db` VALUES(11120, 0, 1055, 20, 0, 0, 0, 0, '"Pedido : Caçando Muka"\r\n');
REPLACE INTO `quest_db` VALUES(11121, 0, 1005, 20, 0, 0, 0, 0, '"Pedido : Caçando Familiar"\r\n');
REPLACE INTO `quest_db` VALUES(11122, 0, 1019, 30, 0, 0, 0, 0, '"Pedido : Coletando pluma"\r\n');
REPLACE INTO `quest_db` VALUES(11123, 0, 1077, 30, 0, 0, 0, 0, '"Pedido : Coletando Esporo Venenoso"\r\n');
REPLACE INTO `quest_db` VALUES(11124, 86400, 0, 0, 0, 0, 0, 0, '"Pedido : Caçando Zangão - Completa"\r\n');
REPLACE INTO `quest_db` VALUES(11125, 86400, 0, 0, 0, 0, 0, 0, '"Pedido : Caçando Condor - Completa"\r\n');
REPLACE INTO `quest_db` VALUES(11126, 86400, 0, 0, 0, 0, 0, 0, '"Pedido : Caçando Rocker - Completa"\r\n');
REPLACE INTO `quest_db` VALUES(11127, 86400, 0, 0, 0, 0, 0, 0, '"Pedido : Caçando Rabo de Verme - Completa"\r\n');
REPLACE INTO `quest_db` VALUES(11128, 86400, 0, 0, 0, 0, 0, 0, '"Pedido : Caçando Esporo - Completa"\r\n');
REPLACE INTO `quest_db` VALUES(11129, 86400, 0, 0, 0, 0, 0, 0, '"Pedido : Caçando Peste - Completa"\r\n');
REPLACE INTO `quest_db` VALUES(11130, 86400, 0, 0, 0, 0, 0, 0, '"Pedido : Caçando Muka - Completa"\r\n');
REPLACE INTO `quest_db` VALUES(11131, 86400, 0, 0, 0, 0, 0, 0, '"Pedido : Caçando Familiar - Completa"\r\n');
REPLACE INTO `quest_db` VALUES(11132, 86400, 0, 0, 0, 0, 0, 0, '"Pedido : Coletando pluma - Completa"\r\n');
REPLACE INTO `quest_db` VALUES(11133, 86400, 0, 0, 0, 0, 0, 0, '"Pedido : Coletando Esporo Venenoso - Completa"\r\n');
REPLACE INTO `quest_db` VALUES(11135, 0, 0, 0, 0, 0, 0, 0, '"Procurando pela Canção Maestro"\r\n');
REPLACE INTO `quest_db` VALUES(11136, 0, 0, 0, 0, 0, 0, 0, '"Procurando pela Canção Maestro"\r\n');
REPLACE INTO `quest_db` VALUES(11137, 0, 0, 0, 0, 0, 0, 0, '"Procurando pela Canção Maestro"\r\n');
REPLACE INTO `quest_db` VALUES(11138, 0, 0, 0, 0, 0, 0, 0, '"Procurando pela Canção Maestro"\r\n');
REPLACE INTO `quest_db` VALUES(11139, 0, 0, 0, 0, 0, 0, 0, '"Procurando pela Canção Maestro"\r\n');
REPLACE INTO `quest_db` VALUES(11140, 0, 0, 0, 0, 0, 0, 0, '"O céu');
REPLACE INTO `quest_db` VALUES(11141, 0, 0, 0, 0, 0, 0, 0, '"Humanos e conversa se encontram no bar"\r\n');
REPLACE INTO `quest_db` VALUES(11142, 0, 0, 0, 0, 0, 0, 0, '"Som metálico temível"\r\n');
REPLACE INTO `quest_db` VALUES(11143, 0, 0, 0, 0, 0, 0, 0, '"Torre de Thanatos"\r\n');
REPLACE INTO `quest_db` VALUES(11144, 0, 0, 0, 0, 0, 0, 0, '"Gerente de Juno : clique"\r\n');
REPLACE INTO `quest_db` VALUES(11145, 0, 1622, 33, 0, 0, 0, 0, '"Eu quero começar um "\r\n');
REPLACE INTO `quest_db` VALUES(11146, 0, 0, 0, 0, 0, 0, 0, '"túnel de gelo..."\r\n');
REPLACE INTO `quest_db` VALUES(11147, 0, 0, 0, 0, 0, 0, 0, '"Orvalho de Lared"\r\n');
REPLACE INTO `quest_db` VALUES(11148, 0, 0, 0, 0, 0, 0, 0, '"Rumo a Comodo com o Arco"\r\n');
REPLACE INTO `quest_db` VALUES(11149, 0, 0, 0, 0, 0, 0, 0, '"Basta derramar a água. Derrame! Derrame!..."\r\n');
REPLACE INTO `quest_db` VALUES(11150, 0, 0, 0, 0, 0, 0, 0, '"Procurando pela Canção Maestro"\r\n');
REPLACE INTO `quest_db` VALUES(11151, 0, 0, 0, 0, 0, 0, 0, '"Procurando pela Canção Maestro"\r\n');
REPLACE INTO `quest_db` VALUES(11152, 0, 0, 0, 0, 0, 0, 0, '"para um lugar tranquilo!..."\r\n');
REPLACE INTO `quest_db` VALUES(11153, 0, 0, 0, 0, 0, 0, 0, '"Faltando o topo"\r\n');
REPLACE INTO `quest_db` VALUES(11154, 0, 0, 0, 0, 0, 0, 0, '"Eu me lembrarei das memórias com você...."\r\n');
REPLACE INTO `quest_db` VALUES(11155, 0, 0, 0, 0, 0, 0, 0, '"batalhador indefinível"\r\n');
REPLACE INTO `quest_db` VALUES(11156, 0, 1106, 100, 0, 0, 0, 0, '"lição de casa chata"\r\n');
REPLACE INTO `quest_db` VALUES(11157, 0, 0, 0, 0, 0, 0, 0, '"Vale Helmes "\r\n');
REPLACE INTO `quest_db` VALUES(11158, 0, 0, 0, 0, 0, 0, 0, '"No caminho da meditação"\r\n');
REPLACE INTO `quest_db` VALUES(11159, 0, 0, 0, 0, 0, 0, 0, '"História de Brian"\r\n');
REPLACE INTO `quest_db` VALUES(11160, 0, 0, 0, 0, 0, 0, 0, '"História de John"\r\n');
REPLACE INTO `quest_db` VALUES(11161, 0, 0, 0, 0, 0, 0, 0, '"História de Taylor"\r\n');
REPLACE INTO `quest_db` VALUES(11162, 0, 0, 0, 0, 0, 0, 0, '"História de Rose"\r\n');
REPLACE INTO `quest_db` VALUES(11163, 0, 0, 0, 0, 0, 0, 0, '"História de Vane"\r\n');
REPLACE INTO `quest_db` VALUES(11164, 0, 0, 0, 0, 0, 0, 0, '"História de Lassie"\r\n');
REPLACE INTO `quest_db` VALUES(11165, 0, 0, 0, 0, 0, 0, 0, '"Entrega para Brian"\r\n');
REPLACE INTO `quest_db` VALUES(11166, 0, 0, 0, 0, 0, 0, 0, '"Entrega para John"\r\n');
REPLACE INTO `quest_db` VALUES(11167, 0, 0, 0, 0, 0, 0, 0, '"Entrega para Taylor"\r\n');
REPLACE INTO `quest_db` VALUES(11168, 0, 0, 0, 0, 0, 0, 0, '"Entrega para Rose"\r\n');
REPLACE INTO `quest_db` VALUES(11169, 0, 0, 0, 0, 0, 0, 0, '"Entrega para Vane"\r\n');
REPLACE INTO `quest_db` VALUES(11170, 0, 0, 0, 0, 0, 0, 0, '"Entrega para Lassie"\r\n');
REPLACE INTO `quest_db` VALUES(11171, 0, 0, 0, 0, 0, 0, 0, '"Favor para Fred"\r\n');
REPLACE INTO `quest_db` VALUES(11172, 0, 0, 0, 0, 0, 0, 0, '"Favor para Fred"\r\n');
REPLACE INTO `quest_db` VALUES(11173, 0, 0, 0, 0, 0, 0, 0, '"Favor para Fred"\r\n');
REPLACE INTO `quest_db` VALUES(11174, 0, 0, 0, 0, 0, 0, 0, '"Carência"\r\n');
REPLACE INTO `quest_db` VALUES(11175, 7200, 0, 0, 0, 0, 0, 0, '"Carência"\r\n');
REPLACE INTO `quest_db` VALUES(11176, 0, 0, 0, 0, 0, 0, 0, '"Para Amigos"\r\n');
REPLACE INTO `quest_db` VALUES(12000, 0, 0, 0, 0, 0, 0, 0, '"Um velho amigo"\r\n');
REPLACE INTO `quest_db` VALUES(12001, 0, 0, 0, 0, 0, 0, 0, '"Digotz');
REPLACE INTO `quest_db` VALUES(12002, 0, 0, 0, 0, 0, 0, 0, '"Mensageiro da Amizade"\r\n');
REPLACE INTO `quest_db` VALUES(12003, 0, 0, 0, 0, 0, 0, 0, '"Mensagem de Digotz"\r\n');
REPLACE INTO `quest_db` VALUES(12004, 0, 0, 0, 0, 0, 0, 0, '"Outro amigo de Maku"\r\n');
REPLACE INTO `quest_db` VALUES(12005, 0, 0, 0, 0, 0, 0, 0, '"Benkaistein"\r\n');
REPLACE INTO `quest_db` VALUES(12006, 0, 0, 0, 0, 0, 0, 0, '"Benkaistein item perdido"\r\n');
REPLACE INTO `quest_db` VALUES(12007, 0, 0, 0, 0, 0, 0, 0, '"Kazien"\r\n');
REPLACE INTO `quest_db` VALUES(12008, 0, 0, 0, 0, 0, 0, 0, '"Pesquisa de Garin"\r\n');
REPLACE INTO `quest_db` VALUES(12009, 0, 0, 0, 0, 0, 0, 0, '"A missão falhou"\r\n');
REPLACE INTO `quest_db` VALUES(12010, 0, 0, 0, 0, 0, 0, 0, '"Não entre"\r\n');
REPLACE INTO `quest_db` VALUES(12011, 0, 0, 0, 0, 0, 0, 0, '"Lyozien"\r\n');
REPLACE INTO `quest_db` VALUES(12012, 0, 0, 0, 0, 0, 0, 0, '"Junte-se ao Sr. Ahman"\r\n');
REPLACE INTO `quest_db` VALUES(12013, 0, 0, 0, 0, 0, 0, 0, '"Entrega Completa"\r\n');
REPLACE INTO `quest_db` VALUES(12014, 0, 0, 0, 0, 0, 0, 0, '"Mais missões"\r\n');
REPLACE INTO `quest_db` VALUES(12015, 0, 0, 0, 0, 0, 0, 0, '"Ghalstein"\r\n');
REPLACE INTO `quest_db` VALUES(12016, 0, 0, 0, 0, 0, 0, 0, '"Tentando entrar no Laboratório"\r\n');
REPLACE INTO `quest_db` VALUES(12017, 0, 0, 0, 0, 0, 0, 0, '"Filiação aprovada"\r\n');
REPLACE INTO `quest_db` VALUES(12018, 0, 0, 0, 0, 0, 0, 0, '"Encontro com o Presidente"\r\n');
REPLACE INTO `quest_db` VALUES(12019, 0, 0, 0, 0, 0, 0, 0, '"O Presidente da Missão"\r\n');
REPLACE INTO `quest_db` VALUES(12020, 0, 0, 0, 0, 0, 0, 0, '"Resgatando um Membro Secreto"\r\n');
REPLACE INTO `quest_db` VALUES(12021, 0, 0, 0, 0, 0, 0, 0, '"A Pasta de Arquivos Trancada"\r\n');
REPLACE INTO `quest_db` VALUES(12022, 0, 0, 0, 0, 0, 0, 0, '"A Pasta de Arquivos Trancada"\r\n');
REPLACE INTO `quest_db` VALUES(12023, 0, 0, 0, 0, 0, 0, 0, '"A pesquisa de Shinoka"\r\n');
REPLACE INTO `quest_db` VALUES(12024, 0, 0, 0, 0, 0, 0, 0, '"Agente da Corporação Kafra"\r\n');
REPLACE INTO `quest_db` VALUES(12025, 0, 0, 0, 0, 0, 0, 0, '"Arquivo Secreto de Rekenber"\r\n');
REPLACE INTO `quest_db` VALUES(12026, 0, 0, 0, 0, 0, 0, 0, '"Arquivo Secreto de Rekenber"\r\n');
REPLACE INTO `quest_db` VALUES(12027, 0, 0, 0, 0, 0, 0, 0, '"Arquivo Secreto de Rekenber"\r\n');
REPLACE INTO `quest_db` VALUES(12028, 0, 0, 0, 0, 0, 0, 0, '"Kurelle o traidor"\r\n');
REPLACE INTO `quest_db` VALUES(12029, 0, 0, 0, 0, 0, 0, 0, '"Anel de Noivado Perdido"\r\n');
REPLACE INTO `quest_db` VALUES(12030, 0, 0, 0, 0, 0, 0, 0, '"Encontre o Anel de Noivado"\r\n');
REPLACE INTO `quest_db` VALUES(12031, 0, 0, 0, 0, 0, 0, 0, '"Encontrando o Anel"\r\n');
REPLACE INTO `quest_db` VALUES(12032, 0, 0, 0, 0, 0, 0, 0, '"Procurando o Anel"\r\n');
REPLACE INTO `quest_db` VALUES(12033, 0, 0, 0, 0, 0, 0, 0, '"Rastros de Sangue"\r\n');
REPLACE INTO `quest_db` VALUES(12034, 0, 0, 0, 0, 0, 0, 0, '"A versão de Annon na história"\r\n');
REPLACE INTO `quest_db` VALUES(12035, 0, 0, 0, 0, 0, 0, 0, '"Linhas Santas"\r\n');
REPLACE INTO `quest_db` VALUES(12036, 0, 0, 0, 0, 0, 0, 0, '"A Mensagem da pedra"\r\n');
REPLACE INTO `quest_db` VALUES(12037, 0, 0, 0, 0, 0, 0, 0, '"Linhas Santas"\r\n');
REPLACE INTO `quest_db` VALUES(12038, 0, 0, 0, 0, 0, 0, 0, '"Procurando pelo Tigre Sa-mhing"\r\n');
REPLACE INTO `quest_db` VALUES(12039, 0, 0, 0, 0, 0, 0, 0, '"Camarada Boonthom"\r\n');
REPLACE INTO `quest_db` VALUES(12040, 0, 0, 0, 0, 0, 0, 0, '"Jornal do Benkaistein"\r\n');
REPLACE INTO `quest_db` VALUES(12041, 0, 0, 0, 0, 0, 0, 0, '"Jornal do Benkaistein"\r\n');
REPLACE INTO `quest_db` VALUES(12042, 0, 0, 0, 0, 0, 0, 0, '"Jornal do Benkaistein"\r\n');
REPLACE INTO `quest_db` VALUES(12043, 0, 0, 0, 0, 0, 0, 0, '"Passe para as favelas"\r\n');
REPLACE INTO `quest_db` VALUES(12044, 0, 0, 0, 0, 0, 0, 0, '"Acalmando uma criança chorando 1"\r\n');
REPLACE INTO `quest_db` VALUES(12045, 0, 0, 0, 0, 0, 0, 0, '"Acalmando uma criança chorando 2"\r\n');
REPLACE INTO `quest_db` VALUES(12046, 0, 0, 0, 0, 0, 0, 0, '"Acalmando uma criança chorando 3"\r\n');
REPLACE INTO `quest_db` VALUES(12047, 0, 0, 0, 0, 0, 0, 0, '"Acalmando uma criança chorando 4"\r\n');
REPLACE INTO `quest_db` VALUES(12048, 0, 0, 0, 0, 0, 0, 0, '"Acalmando uma criança chorando 5"\r\n');
REPLACE INTO `quest_db` VALUES(12049, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe: 1 - Arruaceiro"\r\n');
REPLACE INTO `quest_db` VALUES(12050, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe 2 - Arruaceiro"\r\n');
REPLACE INTO `quest_db` VALUES(12051, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe 3 - Arruaceiro"\r\n');
REPLACE INTO `quest_db` VALUES(12052, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe 4 - Arruaceiro"\r\n');
REPLACE INTO `quest_db` VALUES(12053, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe 5 - Arruaceiro"\r\n');
REPLACE INTO `quest_db` VALUES(12054, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe 6 - Arruaceiro"\r\n');
REPLACE INTO `quest_db` VALUES(12055, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe - Mercenário"\r\n');
REPLACE INTO `quest_db` VALUES(12056, 0, 0, 0, 0, 0, 0, 0, '"Mudança de Classe - Mercenário"\r\n');
REPLACE INTO `quest_db` VALUES(12057, 0, 0, 0, 0, 0, 0, 0, '"Passagem para o Laboratório"\r\n');
REPLACE INTO `quest_db` VALUES(12058, 0, 0, 0, 0, 0, 0, 0, '"Acesso restrito a Torre 102"\r\n');
REPLACE INTO `quest_db` VALUES(12059, 9600, 0, 0, 0, 0, 0, 0, '"Acesso restrito ao Memorial dos Orcs"\r\n');
REPLACE INTO `quest_db` VALUES(12060, 86400, 0, 0, 0, 0, 0, 0, '"Pesacaria cancelada"\r\n');
REPLACE INTO `quest_db` VALUES(12061, 0, 0, 0, 0, 0, 0, 0, '"Concentração"\r\n');
REPLACE INTO `quest_db` VALUES(12062, 86400, 0, 0, 0, 0, 0, 0, '"Pesacaria cancelada"\r\n');
REPLACE INTO `quest_db` VALUES(12070, 0, 0, 0, 0, 0, 0, 0, '"Iluminação cancelada"\r\n');
REPLACE INTO `quest_db` VALUES(12072, 0, 1034, 20, 0, 0, 0, 0, '"Caçando Sapo de Thara"\r\n');
REPLACE INTO `quest_db` VALUES(12073, 0, 1248, 15, 0, 0, 0, 0, '"Caçando Soldado de Chumbo"\r\n');
REPLACE INTO `quest_db` VALUES(12074, 0, 1070, 30, 0, 0, 0, 0, '"Caçando Kukre"\r\n');
REPLACE INTO `quest_db` VALUES(12075, 0, 1686, 15, 0, 0, 0, 0, '"Caçando Orc Bebê"\r\n');
REPLACE INTO `quest_db` VALUES(12076, 0, 1023, 20, 0, 0, 0, 0, '"Caçando Orc Guerreiro"\r\n');
REPLACE INTO `quest_db` VALUES(12077, 0, 1066, 15, 0, 0, 0, 0, '"Caçando Vadon"\r\n');
REPLACE INTO `quest_db` VALUES(12078, 0, 1064, 30, 0, 0, 0, 0, '"Caçando Megalodon"\r\n');
REPLACE INTO `quest_db` VALUES(12079, 0, 1144, 15, 0, 0, 0, 0, '"Caçando Marse"\r\n');
REPLACE INTO `quest_db` VALUES(12080, 0, 1067, 20, 0, 0, 0, 0, '"Caçando Cornutus"\r\n');
REPLACE INTO `quest_db` VALUES(12081, 0, 1151, 15, 0, 0, 0, 0, '"Caçando Névoa"\r\n');
REPLACE INTO `quest_db` VALUES(12082, 0, 1074, 30, 0, 0, 0, 0, '"Caçando Molusco"\r\n');
REPLACE INTO `quest_db` VALUES(12083, 0, 1142, 15, 0, 0, 0, 0, '"Caçando Esfera Marinha"\r\n');
REPLACE INTO `quest_db` VALUES(12084, 0, 1158, 20, 0, 0, 0, 0, '"Caçando Fen"\r\n');
REPLACE INTO `quest_db` VALUES(12085, 0, 1152, 15, 0, 0, 0, 0, '"Caçando Orc Esqueleto"\r\n');
REPLACE INTO `quest_db` VALUES(12086, 0, 1177, 30, 0, 0, 0, 0, '"Caçando Zenorc"\r\n');
REPLACE INTO `quest_db` VALUES(12087, 0, 1041, 15, 0, 0, 0, 0, '"Caçando Múmia"\r\n');
REPLACE INTO `quest_db` VALUES(12088, 0, 0, 0, 0, 0, 0, 0, '"Fazendo a Pedido"\r\n');
REPLACE INTO `quest_db` VALUES(12090, 0, 0, 0, 0, 0, 0, 0, '"Cara Misterioso"\r\n');
REPLACE INTO `quest_db` VALUES(12091, 0, 0, 0, 0, 0, 0, 0, '"Basta salvar o coração ardente"\r\n');
REPLACE INTO `quest_db` VALUES(12092, 0, 0, 0, 0, 0, 0, 0, '"História de longa duração"\r\n');
REPLACE INTO `quest_db` VALUES(12093, 0, 0, 0, 0, 0, 0, 0, '"o registro da inteligência de Lyoda"\r\n');
REPLACE INTO `quest_db` VALUES(12094, 0, 0, 0, 0, 0, 0, 0, '"A carta do escudo danificado"\r\n');
REPLACE INTO `quest_db` VALUES(12096, 0, 0, 0, 0, 0, 0, 0, '"Torres Karakas"\r\n');
REPLACE INTO `quest_db` VALUES(12097, 0, 0, 0, 0, 0, 0, 0, '"Preparação Básica"\r\n');
REPLACE INTO `quest_db` VALUES(12098, 0, 0, 0, 0, 0, 0, 0, '"Turismo na caverna"\r\n');
REPLACE INTO `quest_db` VALUES(12099, 0, 2014, 10, 0, 0, 0, 0, '"Caçando Ovos de Dragão"\r\n');
REPLACE INTO `quest_db` VALUES(12100, 0, 1994, 12, 0, 0, 0, 0, '" Caçando Vespa Vagaluma"\r\n');
REPLACE INTO `quest_db` VALUES(12101, 0, 2013, 5, 0, 0, 0, 0, '"Caçando Dragão"\r\n');
REPLACE INTO `quest_db` VALUES(12102, 0, 1993, 10, 0, 0, 0, 0, '"Caçando Naga"\r\n');
REPLACE INTO `quest_db` VALUES(12103, 0, 1992, 1, 0, 0, 0, 0, '"Caçando Cornus"\r\n');
REPLACE INTO `quest_db` VALUES(12104, 0, 1987, 15, 0, 0, 0, 0, '"Caçando Centopéia"\r\n');
REPLACE INTO `quest_db` VALUES(12105, 0, 2024, 10, 0, 0, 0, 0, '"Caçando Golem de Bradium"\r\n');
REPLACE INTO `quest_db` VALUES(12106, 0, 1995, 15, 0, 0, 0, 0, '"Caçando Cristal Cor-de-Rosa"\r\n');
REPLACE INTO `quest_db` VALUES(12107, 0, 2015, 10, 0, 0, 0, 0, '"Caçando Pinguicula Sombria"\r\n');
REPLACE INTO `quest_db` VALUES(12108, 0, 1988, 12, 0, 0, 0, 0, '"Caçando Nepenthes"\r\n');
REPLACE INTO `quest_db` VALUES(12109, 0, 1999, 14, 0, 0, 0, 0, '"Caçando Larva de Centopéia"\r\n');
REPLACE INTO `quest_db` VALUES(12110, 0, 2016, 7, 0, 0, 0, 0, '"Caçando Elemental da Água"\r\n');
REPLACE INTO `quest_db` VALUES(12111, 0, 1986, 10, 0, 0, 0, 0, '"Caçando Tatacho"\r\n');
REPLACE INTO `quest_db` VALUES(12117, 0, 0, 0, 0, 0, 0, 0, '"Flores Murchas"\r\n');
REPLACE INTO `quest_db` VALUES(12118, 0, 0, 0, 0, 0, 0, 0, '"Coletando Minério bem vindo"\r\n');
REPLACE INTO `quest_db` VALUES(12119, 0, 0, 0, 0, 0, 0, 0, '"Coletando Tecido valioso"\r\n');
REPLACE INTO `quest_db` VALUES(12120, 0, 0, 0, 0, 0, 0, 0, '"Coletando Uma carne curiosa Coletando"\r\n');
REPLACE INTO `quest_db` VALUES(12121, 0, 0, 0, 0, 0, 0, 0, '"Coletando Materiais para retirar a neve"\r\n');
REPLACE INTO `quest_db` VALUES(12122, 0, 0, 0, 0, 0, 0, 0, '"Coletando Pedaços de Casca de Ovo"\r\n');
REPLACE INTO `quest_db` VALUES(12123, 0, 0, 0, 0, 0, 0, 0, '"Coletando O melhor material refrigerador"\r\n');
REPLACE INTO `quest_db` VALUES(12124, 0, 0, 0, 0, 0, 0, 0, '"Coletando A Melhor Tinta"\r\n');
REPLACE INTO `quest_db` VALUES(12125, 0, 0, 0, 0, 0, 0, 0, '"Coletando Valor Raro"\r\n');
REPLACE INTO `quest_db` VALUES(12126, 0, 0, 0, 0, 0, 0, 0, '"Coletando Materiais para Arsenal"\r\n');
REPLACE INTO `quest_db` VALUES(12127, 0, 0, 0, 0, 0, 0, 0, '"Coletando Materiais avançados para Arsenal"\r\n');
REPLACE INTO `quest_db` VALUES(12128, 0, 0, 0, 0, 0, 0, 0, '"Coletando Ferramentas dos Supervisores"\r\n');
REPLACE INTO `quest_db` VALUES(12129, 0, 0, 0, 0, 0, 0, 0, '"Coletando Ferramentas dos Supervisores"\r\n');
REPLACE INTO `quest_db` VALUES(12130, 0, 0, 0, 0, 0, 0, 0, '"Coletando Comida Suspeita"\r\n');
REPLACE INTO `quest_db` VALUES(12131, 0, 0, 0, 0, 0, 0, 0, '"Coletando Material Útil"\r\n');
REPLACE INTO `quest_db` VALUES(12132, 0, 0, 0, 0, 0, 0, 0, '"Coletando Material essencial para Construção"\r\n');
REPLACE INTO `quest_db` VALUES(12133, 0, 0, 0, 0, 0, 0, 0, '"Coletando Mais materiais para Construção"\r\n');
REPLACE INTO `quest_db` VALUES(12134, 0, 0, 0, 0, 0, 0, 0, '"Coletando Arranjos Decorativos"\r\n');
REPLACE INTO `quest_db` VALUES(12135, 0, 0, 0, 0, 0, 0, 0, '"Coletando Receptáculos Instantâneos"\r\n');
REPLACE INTO `quest_db` VALUES(12136, 0, 0, 0, 0, 0, 0, 0, '"Coletando Remédios Insuficientes"\r\n');
REPLACE INTO `quest_db` VALUES(12137, 0, 0, 0, 0, 0, 0, 0, '"Coletando Ladrão de Mel"\r\n');
REPLACE INTO `quest_db` VALUES(12138, 0, 0, 0, 0, 0, 0, 0, '"Coletando Ferramentas para Experimentos"\r\n');
REPLACE INTO `quest_db` VALUES(12139, 0, 0, 0, 0, 0, 0, 0, '"Gosto de Respeito"\r\n');
REPLACE INTO `quest_db` VALUES(12140, 0, 0, 0, 0, 0, 0, 0, '"Cortezia para Clientes"\r\n');
REPLACE INTO `quest_db` VALUES(12141, 0, 0, 0, 0, 0, 0, 0, '"Pacote Especial"\r\n');
REPLACE INTO `quest_db` VALUES(12142, 0, 0, 0, 0, 0, 0, 0, '"Pedido Perigoso"\r\n');
REPLACE INTO `quest_db` VALUES(12143, 0, 0, 0, 0, 0, 0, 0, '"Estranha Tendência"\r\n');
REPLACE INTO `quest_db` VALUES(12144, 0, 0, 0, 0, 0, 0, 0, '"O que Usar?"\r\n');
REPLACE INTO `quest_db` VALUES(12145, 0, 0, 0, 0, 0, 0, 0, '"Cozinha de Outro Mundo"\r\n');
REPLACE INTO `quest_db` VALUES(12146, 0, 0, 0, 0, 0, 0, 0, '"Preenchimento de Fissuras"\r\n');
REPLACE INTO `quest_db` VALUES(12147, 0, 0, 0, 0, 0, 0, 0, '"Material Colante"\r\n');
REPLACE INTO `quest_db` VALUES(12148, 0, 0, 0, 0, 0, 0, 0, '"Isca para caçar Tatachos"\r\n');
REPLACE INTO `quest_db` VALUES(12149, 0, 0, 0, 0, 0, 0, 0, '"Pratica de Esgrima"\r\n');
REPLACE INTO `quest_db` VALUES(12150, 0, 0, 0, 0, 0, 0, 0, '"Lindo vegetal Alaranjado"\r\n');
REPLACE INTO `quest_db` VALUES(12151, 0, 0, 0, 0, 0, 0, 0, '"Persistência do Proprietário"\r\n');
REPLACE INTO `quest_db` VALUES(12152, 0, 0, 0, 0, 0, 0, 0, '"O sabor da Comida Caseira"\r\n');
REPLACE INTO `quest_db` VALUES(12153, 0, 0, 0, 0, 0, 0, 0, '"Fruta Queimada"\r\n');
REPLACE INTO `quest_db` VALUES(12154, 0, 0, 0, 0, 0, 0, 0, '"Normal Inesperado"\r\n');
REPLACE INTO `quest_db` VALUES(12155, 0, 0, 0, 0, 0, 0, 0, '"Presente de Coração"\r\n');
REPLACE INTO `quest_db` VALUES(12156, 0, 0, 0, 0, 0, 0, 0, '"Mas que apetite"\r\n');
REPLACE INTO `quest_db` VALUES(12157, 0, 0, 0, 0, 0, 0, 0, '"A garantia do barman"\r\n');
REPLACE INTO `quest_db` VALUES(12158, 0, 0, 0, 0, 0, 0, 0, '"A ira do dono do bar"\r\n');
REPLACE INTO `quest_db` VALUES(12159, 82800, 0, 0, 0, 0, 0, 0, '"Registro de busca de Laponte"\r\n');
REPLACE INTO `quest_db` VALUES(12160, 82800, 0, 0, 0, 0, 0, 0, '"Registro de busca de Kalipo"\r\n');
REPLACE INTO `quest_db` VALUES(12161, 82800, 0, 0, 0, 0, 0, 0, '"Procurando Itens em El Dicastes 1"\r\n');
REPLACE INTO `quest_db` VALUES(12162, 82800, 0, 0, 0, 0, 0, 0, '"Procurando Itens em El Dicastes 2"\r\n');
REPLACE INTO `quest_db` VALUES(12163, 82800, 0, 0, 0, 0, 0, 0, '"Procurando Itens em El Dicastes 3"\r\n');
REPLACE INTO `quest_db` VALUES(12164, 82800, 0, 0, 0, 0, 0, 0, '"Procurando Itens em El Dicastes 4"\r\n');
REPLACE INTO `quest_db` VALUES(12165, 21600, 0, 0, 0, 0, 0, 0, '"Dizziness"\r\n');
REPLACE INTO `quest_db` VALUES(12166, 0, 0, 0, 0, 0, 0, 0, '"Documentos sobre Raízes de Árvore"\r\n');
REPLACE INTO `quest_db` VALUES(12167, 0, 0, 0, 0, 0, 0, 0, '"Documentos sobre Línguas de Répteis"\r\n');
REPLACE INTO `quest_db` VALUES(12168, 0, 0, 0, 0, 0, 0, 0, '"Documentos sobre Caudas de Escorpião."\r\n');
REPLACE INTO `quest_db` VALUES(12169, 0, 0, 0, 0, 0, 0, 0, '"Documentos sobre Caules."\r\n');
REPLACE INTO `quest_db` VALUES(12170, 0, 0, 0, 0, 0, 0, 0, '"Documentos sobre coisas pontiagúdas."\r\n');
REPLACE INTO `quest_db` VALUES(12171, 0, 0, 0, 0, 0, 0, 0, '"Documentos sobre Resinas."\r\n');
REPLACE INTO `quest_db` VALUES(12172, 0, 0, 0, 0, 0, 0, 0, '"Documentos sobre Ovos."\r\n');
REPLACE INTO `quest_db` VALUES(12173, 0, 0, 0, 0, 0, 0, 0, '"Documentos sobre Jellopy."\r\n');
REPLACE INTO `quest_db` VALUES(12174, 0, 0, 0, 0, 0, 0, 0, '"Documentos sobre Cauda de Peixe."\r\n');
REPLACE INTO `quest_db` VALUES(12175, 0, 0, 0, 0, 0, 0, 0, '"Documentos sobre Pele de Minhoca."\r\n');
REPLACE INTO `quest_db` VALUES(12176, 0, 0, 0, 0, 0, 0, 0, '"Documentos sobre Guelras."\r\n');
REPLACE INTO `quest_db` VALUES(12177, 0, 0, 0, 0, 0, 0, 0, '"Documentos sobre Dentes de Morcego."\r\n');
REPLACE INTO `quest_db` VALUES(12178, 0, 0, 0, 0, 0, 0, 0, '"Documentos sobre Plumagem."\r\n');
REPLACE INTO `quest_db` VALUES(12179, 0, 0, 0, 0, 0, 0, 0, '"Documentos sobre Crisálida."\r\n');
REPLACE INTO `quest_db` VALUES(12180, 0, 0, 0, 0, 0, 0, 0, '"Documentos sobre Plumas de Aves."\r\n');
REPLACE INTO `quest_db` VALUES(12181, 0, 0, 0, 0, 0, 0, 0, '"Documentos sobre Garras."\r\n');
REPLACE INTO `quest_db` VALUES(12182, 0, 0, 0, 0, 0, 0, 0, '"Documentos sobre Pata Pegajosa."\r\n');
REPLACE INTO `quest_db` VALUES(12183, 0, 0, 0, 0, 0, 0, 0, '"Documentos sobre Peles de Animal."\r\n');
REPLACE INTO `quest_db` VALUES(12184, 0, 0, 0, 0, 0, 0, 0, '"Documentos sobre Garras de Lobo."\r\n');
REPLACE INTO `quest_db` VALUES(12185, 0, 0, 0, 0, 0, 0, 0, '"Documentos sobre Esporos de Cogumelo."\r\n');
REPLACE INTO `quest_db` VALUES(12186, 0, 0, 0, 0, 0, 0, 0, '"Documentos sobre Presas de Orc."\r\n');
REPLACE INTO `quest_db` VALUES(12187, 0, 0, 0, 0, 0, 0, 0, '"Documentos sobre Chifres Malignos."\r\n');
REPLACE INTO `quest_db` VALUES(12188, 0, 0, 0, 0, 0, 0, 0, '"Documentos sobre Pó de Borboletas."\r\n');
REPLACE INTO `quest_db` VALUES(12189, 0, 0, 0, 0, 0, 0, 0, '"Documentos sobre Bico de Aves."\r\n');
REPLACE INTO `quest_db` VALUES(12190, 0, 0, 0, 0, 0, 0, 0, '"Documentos sobre Escamas de Cobras."\r\n');
REPLACE INTO `quest_db` VALUES(12191, 0, 0, 0, 0, 0, 0, 0, '"Documentos sobre Antenas de Insetos."\r\n');
REPLACE INTO `quest_db` VALUES(12192, 0, 0, 0, 0, 0, 0, 0, '"Documentos sobre Coração Imortal."\r\n');
REPLACE INTO `quest_db` VALUES(12193, 0, 0, 0, 0, 0, 0, 0, '"Documentos sobre Bandagem Estragada."\r\n');
REPLACE INTO `quest_db` VALUES(12194, 0, 0, 0, 0, 0, 0, 0, '"Documentos sobre Unha Apodrecida."\r\n');
REPLACE INTO `quest_db` VALUES(12195, 0, 0, 0, 0, 0, 0, 0, '"Documentos sobre Mandíbula Horrenda."\r\n');
REPLACE INTO `quest_db` VALUES(12196, 0, 0, 0, 0, 0, 0, 0, '"Documentos sobre Tentáculos."\r\n');
REPLACE INTO `quest_db` VALUES(12197, 0, 0, 0, 0, 0, 0, 0, '"Documentos sobre Casca."\r\n');
REPLACE INTO `quest_db` VALUES(12198, 0, 0, 0, 0, 0, 0, 0, '"Documentos sobre Casca Escamada."\r\n');
REPLACE INTO `quest_db` VALUES(12199, 0, 0, 0, 0, 0, 0, 0, '"Documentos sobre Caninos Venenosos."\r\n');
REPLACE INTO `quest_db` VALUES(12200, 0, 0, 0, 0, 0, 0, 0, '"Documentos sobre Muco Pegajoso."\r\n');
REPLACE INTO `quest_db` VALUES(12201, 0, 0, 0, 0, 0, 0, 0, '"Documentos sobre Ferrão de Abelha."\r\n');
REPLACE INTO `quest_db` VALUES(12202, 0, 0, 0, 0, 0, 0, 0, '"Documentos sobre Pernas de Gafanhoto."\r\n');
REPLACE INTO `quest_db` VALUES(12203, 0, 0, 0, 0, 0, 0, 0, '"Documentos sobre Geléia Real."\r\n');
REPLACE INTO `quest_db` VALUES(12204, 0, 0, 0, 0, 0, 0, 0, '"Documentos sobre Cauda de Yoyo."\r\n');
REPLACE INTO `quest_db` VALUES(12205, 0, 0, 0, 0, 0, 0, 0, '"Documentos sobre Casca Rija."\r\n');
REPLACE INTO `quest_db` VALUES(12206, 0, 0, 0, 0, 0, 0, 0, '"Documentos sobre Batata Doce Assada."\r\n');
REPLACE INTO `quest_db` VALUES(12207, 0, 0, 0, 0, 0, 0, 0, '"Documentos sobre Folha de Fumaçento."\r\n');
REPLACE INTO `quest_db` VALUES(12208, 0, 0, 0, 0, 0, 0, 0, '"Documentos sobre Cascos de Caramujo."\r\n');
REPLACE INTO `quest_db` VALUES(12209, 0, 0, 0, 0, 0, 0, 0, '"Documentos sobre Chifres."\r\n');
REPLACE INTO `quest_db` VALUES(12210, 0, 0, 0, 0, 0, 0, 0, '"Documentos sobre Patas de Urso."\r\n');
REPLACE INTO `quest_db` VALUES(12211, 0, 0, 0, 0, 0, 0, 0, '"Documentos sobre Penas."\r\n');
REPLACE INTO `quest_db` VALUES(12212, 0, 0, 0, 0, 0, 0, 0, '"Documentos sobre Ervas Vermelhas."\r\n');
REPLACE INTO `quest_db` VALUES(12213, 0, 0, 0, 0, 0, 0, 0, '"Documentos sobre Cenouras."\r\n');
REPLACE INTO `quest_db` VALUES(12214, 0, 0, 0, 0, 0, 0, 0, '"Documentos sobre Espinhos de Cactus."\r\n');
REPLACE INTO `quest_db` VALUES(12215, 0, 0, 0, 0, 0, 0, 0, '"Documentos sobre Coração de Pedra."\r\n');
REPLACE INTO `quest_db` VALUES(12217, 0, 0, 0, 0, 0, 0, 0, '"Missão do Grupo Valhalla"\r\n');
REPLACE INTO `quest_db` VALUES(12218, 0, 0, 0, 0, 0, 0, 0, '"Como fazer um elixir em lava"\r\n');
REPLACE INTO `quest_db` VALUES(12219, 0, 0, 0, 0, 0, 0, 0, '"Como fazer um elixir em chama"\r\n');
REPLACE INTO `quest_db` VALUES(12220, 0, 0, 0, 0, 0, 0, 0, '"Como fazer um elixir em gelo"\r\n');
REPLACE INTO `quest_db` VALUES(12221, 0, 0, 0, 0, 0, 0, 0, '"Como fazer um elixir em fossil"\r\n');
REPLACE INTO `quest_db` VALUES(12222, 0, 0, 0, 0, 0, 0, 0, '"Como criar um elixir da tempestade"\r\n');
REPLACE INTO `quest_db` VALUES(16000, 0, 0, 0, 0, 0, 0, 0, '"Notícia de Metz Brayde"\r\n');
REPLACE INTO `quest_db` VALUES(16001, 0, 0, 0, 0, 0, 0, 0, '"Primeiro exame"\r\n');
REPLACE INTO `quest_db` VALUES(16002, 0, 0, 0, 0, 0, 0, 0, '"Itens elegantes para Arian -1"\r\n');
REPLACE INTO `quest_db` VALUES(16003, 0, 0, 0, 0, 0, 0, 0, '"Itens elegantes para -2"\r\n');
REPLACE INTO `quest_db` VALUES(16004, 0, 0, 0, 0, 0, 0, 0, '"Itens elegantes para -3"\r\n');
REPLACE INTO `quest_db` VALUES(16005, 0, 0, 0, 0, 0, 0, 0, '"Itens elegantes para -4"\r\n');
REPLACE INTO `quest_db` VALUES(16006, 0, 0, 0, 0, 0, 0, 0, '"Itens elegantes para -5"\r\n');
REPLACE INTO `quest_db` VALUES(16007, 0, 0, 0, 0, 0, 0, 0, '"Itens elegantes para -6"\r\n');
REPLACE INTO `quest_db` VALUES(16008, 0, 0, 0, 0, 0, 0, 0, '"Questionário de tempo!"\r\n');
REPLACE INTO `quest_db` VALUES(16009, 0, 0, 0, 0, 0, 0, 0, '"Questionário de tempo!"\r\n');
REPLACE INTO `quest_db` VALUES(16010, 0, 0, 0, 0, 0, 0, 0, '"Teste de Daewoon"\r\n');
REPLACE INTO `quest_db` VALUES(16011, 0, 0, 0, 0, 0, 0, 0, '"Teste do Senhor Jore"\r\n');
REPLACE INTO `quest_db` VALUES(16012, 0, 0, 0, 0, 0, 0, 0, '"Materiais do Senhor Jore"\r\n');
REPLACE INTO `quest_db` VALUES(16013, 0, 0, 0, 0, 0, 0, 0, '"A Pedra do Sábio"\r\n');
REPLACE INTO `quest_db` VALUES(16014, 0, 0, 0, 0, 0, 0, 0, '"A Pedra do Sábio"\r\n');
REPLACE INTO `quest_db` VALUES(16015, 0, 0, 0, 0, 0, 0, 0, '"Senhora Jesquerinne"\r\n');
REPLACE INTO `quest_db` VALUES(16016, 0, 0, 0, 0, 0, 0, 0, '"Perguntas de Jesquerinne"\r\n');
REPLACE INTO `quest_db` VALUES(16017, 0, 0, 0, 0, 0, 0, 0, '"Falha no Teste de Jesquerinne"\r\n');
REPLACE INTO `quest_db` VALUES(16018, 0, 0, 0, 0, 0, 0, 0, '"Quiz de Perguntas"\r\n');
REPLACE INTO `quest_db` VALUES(16019, 0, 0, 0, 0, 0, 0, 0, '"Procura por Dearles"\r\n');
REPLACE INTO `quest_db` VALUES(16020, 0, 0, 0, 0, 0, 0, 0, '"Teste de Dearle"\r\n');
REPLACE INTO `quest_db` VALUES(16021, 0, 0, 0, 0, 0, 0, 0, '"Teste da Apreciação"\r\n');
REPLACE INTO `quest_db` VALUES(16022, 0, 0, 0, 0, 0, 0, 0, '"Teste de Dearle parte dois"\r\n');
REPLACE INTO `quest_db` VALUES(16023, 0, 0, 0, 0, 0, 0, 0, '"Teste de ritmo"\r\n');
REPLACE INTO `quest_db` VALUES(16024, 0, 0, 0, 0, 0, 0, 0, '"Encontre Bakerlan"\r\n');
REPLACE INTO `quest_db` VALUES(16025, 0, 0, 0, 0, 0, 0, 0, '"Entrega a Bakerlan"\r\n');
REPLACE INTO `quest_db` VALUES(16026, 0, 0, 0, 0, 0, 0, 0, '"Entrega a Mahatra"\r\n');
REPLACE INTO `quest_db` VALUES(16027, 0, 0, 0, 0, 0, 0, 0, '"Recepção de Bakerlan"\r\n');
REPLACE INTO `quest_db` VALUES(16028, 0, 0, 0, 0, 0, 0, 0, '"Encontre Seylin"\r\n');
REPLACE INTO `quest_db` VALUES(16029, 0, 0, 0, 0, 0, 0, 0, '"Remédio de Vigorgra"\r\n');
REPLACE INTO `quest_db` VALUES(16030, 0, 0, 0, 0, 0, 0, 0, '"Engredientes de Vigorgra"\r\n');
REPLACE INTO `quest_db` VALUES(16031, 0, 0, 0, 0, 0, 0, 0, '"Engredientes de Vigorgra"\r\n');
REPLACE INTO `quest_db` VALUES(16032, 0, 0, 0, 0, 0, 0, 0, '"Pedido de Seylin"\r\n');
REPLACE INTO `quest_db` VALUES(16033, 0, 0, 0, 0, 0, 0, 0, '"Volte até Seylin"\r\n');
REPLACE INTO `quest_db` VALUES(16034, 0, 0, 0, 0, 0, 0, 0, '"Volte até Mahatra"\r\n');
REPLACE INTO `quest_db` VALUES(16035, 0, 0, 0, 0, 0, 0, 0, '"Relatório de Bakerlan"\r\n');
REPLACE INTO `quest_db` VALUES(16036, 0, 0, 0, 0, 0, 0, 0, '"A última migalha"\r\n');
REPLACE INTO `quest_db` VALUES(16037, 0, 0, 0, 0, 0, 0, 0, '"Encontre o Relatório de Howard"\r\n');
REPLACE INTO `quest_db` VALUES(16038, 0, 0, 0, 0, 0, 0, 0, '"Carta de Liana"\r\n');
REPLACE INTO `quest_db` VALUES(16039, 0, 0, 0, 0, 0, 0, 0, '"Combinando a Luz Estelar"\r\n');
REPLACE INTO `quest_db` VALUES(16040, 0, 0, 0, 0, 0, 0, 0, '"Carta para a família Engel"\r\n');
REPLACE INTO `quest_db` VALUES(16041, 0, 0, 0, 0, 0, 0, 0, '"Fale com Liana"\r\n');
REPLACE INTO `quest_db` VALUES(16042, 0, 0, 0, 0, 0, 0, 0, '"Luz Estelar progresso de criação"\r\n');
REPLACE INTO `quest_db` VALUES(16043, 0, 0, 0, 0, 0, 0, 0, '"Restaurando a Luz Estelar"\r\n');
REPLACE INTO `quest_db` VALUES(16044, 0, 0, 0, 0, 0, 0, 0, '"Combinando a Luz Estelar"\r\n');
REPLACE INTO `quest_db` VALUES(16045, 0, 0, 0, 0, 0, 0, 0, '"Mensagem - Luz Estelar"\r\n');
REPLACE INTO `quest_db` VALUES(16046, 0, 0, 0, 0, 0, 0, 0, '"O Homem em Umbala"\r\n');
REPLACE INTO `quest_db` VALUES(16047, 0, 0, 0, 0, 0, 0, 0, '"Dentro da Árvore"\r\n');
REPLACE INTO `quest_db` VALUES(16048, 0, 0, 0, 0, 0, 0, 0, '"Documentos Antigos"\r\n');
REPLACE INTO `quest_db` VALUES(16049, 0, 0, 0, 0, 0, 0, 0, '"Documento em Idioma Antigo"\r\n');
REPLACE INTO `quest_db` VALUES(16050, 0, 0, 0, 0, 0, 0, 0, '"O Velho Homem Esquisito"\r\n');
REPLACE INTO `quest_db` VALUES(16051, 0, 0, 0, 0, 0, 0, 0, '"Visão embaçada"\r\n');
REPLACE INTO `quest_db` VALUES(16052, 0, 0, 0, 0, 0, 0, 0, '"Traduzindo o Documento"\r\n');
REPLACE INTO `quest_db` VALUES(16053, 0, 0, 0, 0, 0, 0, 0, '"Idioma Antigo Traduzido"\r\n');
REPLACE INTO `quest_db` VALUES(16054, 0, 0, 0, 0, 0, 0, 0, '"Onde vivem os rejeitados"\r\n');
REPLACE INTO `quest_db` VALUES(16055, 0, 0, 0, 0, 0, 0, 0, '"Infelizes de Niflheim"\r\n');
REPLACE INTO `quest_db` VALUES(16056, 0, 0, 0, 0, 0, 0, 0, '"Maldição Removida"\r\n');
REPLACE INTO `quest_db` VALUES(16057, 0, 0, 0, 0, 0, 0, 0, '"Meeting the witch"\r\n');
REPLACE INTO `quest_db` VALUES(16058, 0, 0, 0, 0, 0, 0, 0, '"Asa de Corvo"\r\n');
REPLACE INTO `quest_db` VALUES(16059, 0, 0, 0, 0, 0, 0, 0, '"Asa de Corvo"\r\n');
REPLACE INTO `quest_db` VALUES(16060, 0, 0, 0, 0, 0, 0, 0, '"Misfortunate de Niflheim"\r\n');
REPLACE INTO `quest_db` VALUES(16061, 0, 0, 0, 0, 0, 0, 0, '"Bardo em Niflheim"\r\n');
REPLACE INTO `quest_db` VALUES(16062, 0, 0, 0, 0, 0, 0, 0, '"General de Niflheim"\r\n');
REPLACE INTO `quest_db` VALUES(16063, 0, 0, 0, 0, 0, 0, 0, '"Ajuda da Bruxa"\r\n');
REPLACE INTO `quest_db` VALUES(16064, 0, 0, 0, 0, 0, 0, 0, '"Infelizes de Niflheim"\r\n');
REPLACE INTO `quest_db` VALUES(16065, 0, 0, 0, 0, 0, 0, 0, '"O Símbolo da Rainha"\r\n');
REPLACE INTO `quest_db` VALUES(16066, 0, 0, 0, 0, 0, 0, 0, '"Conhecimento do Símbolo"\r\n');
REPLACE INTO `quest_db` VALUES(16067, 0, 0, 0, 0, 0, 0, 0, '"Conhecimento de Asgard"\r\n');
REPLACE INTO `quest_db` VALUES(16068, 0, 0, 0, 0, 0, 0, 0, '"Encontre os Pedaços da Alma"\r\n');
REPLACE INTO `quest_db` VALUES(16069, 0, 0, 0, 0, 0, 0, 0, '"Encontre os Pedaços da Alma"\r\n');
REPLACE INTO `quest_db` VALUES(16070, 0, 0, 0, 0, 0, 0, 0, '"Encontre os Pedaços da Alma"\r\n');
REPLACE INTO `quest_db` VALUES(16071, 0, 0, 0, 0, 0, 0, 0, '"Encontre os Pedaços da Alma"\r\n');
REPLACE INTO `quest_db` VALUES(16072, 0, 0, 0, 0, 0, 0, 0, '"Encontre os Pedaços da Alma"\r\n');
REPLACE INTO `quest_db` VALUES(16073, 0, 0, 0, 0, 0, 0, 0, '"Espírito de Agrboda"\r\n');
REPLACE INTO `quest_db` VALUES(16074, 0, 0, 0, 0, 0, 0, 0, '"Símbolo dos Nove Reinos"\r\n');
REPLACE INTO `quest_db` VALUES(16075, 0, 0, 0, 0, 0, 0, 0, '"Ambições de Serin"\r\n');
REPLACE INTO `quest_db` VALUES(16076, 0, 0, 0, 0, 0, 0, 0, '"Tônico da Bruxa"\r\n');
REPLACE INTO `quest_db` VALUES(16077, 0, 0, 0, 0, 0, 0, 0, '"Lançamento de Serin"\r\n');
REPLACE INTO `quest_db` VALUES(16078, 0, 0, 0, 0, 0, 0, 0, '"Visita com a Senhora do Inferno"\r\n');
REPLACE INTO `quest_db` VALUES(16079, 0, 0, 0, 0, 0, 0, 0, '"A assinatura"\r\n');
REPLACE INTO `quest_db` VALUES(16080, 0, 0, 0, 0, 0, 0, 0, '"O retorno do Senhor das Trevas"\r\n');
REPLACE INTO `quest_db` VALUES(16081, 0, 0, 0, 0, 0, 0, 0, '"A ambição de Serin"\r\n');
REPLACE INTO `quest_db` VALUES(16082, 0, 0, 0, 0, 0, 0, 0, '"O retorno do Senhor das Trevas"\r\n');
REPLACE INTO `quest_db` VALUES(16083, 0, 0, 0, 0, 0, 0, 0, '"A realização de Serin"\r\n');
REPLACE INTO `quest_db` VALUES(16084, 0, 0, 0, 0, 0, 0, 0, '"O Sinal"\r\n');
REPLACE INTO `quest_db` VALUES(16085, 0, 0, 0, 0, 0, 0, 0, '"O Sinal"\r\n');
REPLACE INTO `quest_db` VALUES(16086, 0, 0, 0, 0, 0, 0, 0, '"O Sinal"\r\n');
REPLACE INTO `quest_db` VALUES(16087, 0, 0, 0, 0, 0, 0, 0, '"O Sinal"\r\n');
REPLACE INTO `quest_db` VALUES(16101, 0, 0, 0, 0, 0, 0, 0, '"Acadêmia Kiel Hyre"\r\n');
REPLACE INTO `quest_db` VALUES(16102, 0, 0, 0, 0, 0, 0, 0, '"Acadêmia Kiel Hyre"\r\n');
REPLACE INTO `quest_db` VALUES(16103, 0, 0, 0, 0, 0, 0, 0, '"Acadêmia Kiel Hyre"\r\n');
REPLACE INTO `quest_db` VALUES(16104, 0, 0, 0, 0, 0, 0, 0, '"Acadêmia Kiel Hyre"\r\n');
REPLACE INTO `quest_db` VALUES(16105, 0, 0, 0, 0, 0, 0, 0, '"Acadêmia Kiel Hyre"\r\n');
REPLACE INTO `quest_db` VALUES(16106, 0, 0, 0, 0, 0, 0, 0, '"Acadêmia Kiel Hyre"\r\n');
REPLACE INTO `quest_db` VALUES(16107, 0, 0, 0, 0, 0, 0, 0, '"Acadêmia Kiel Hyre"\r\n');
REPLACE INTO `quest_db` VALUES(16108, 0, 0, 0, 0, 0, 0, 0, '"Acadêmia Kiel Hyre"\r\n');
REPLACE INTO `quest_db` VALUES(16109, 0, 0, 0, 0, 0, 0, 0, '"Acadêmia Kiel Hyre"\r\n');
REPLACE INTO `quest_db` VALUES(16110, 0, 0, 0, 0, 0, 0, 0, '"Acadêmia Kiel Hyre"\r\n');
REPLACE INTO `quest_db` VALUES(16111, 0, 0, 0, 0, 0, 0, 0, '"Acadêmia Kiel Hyre"\r\n');
REPLACE INTO `quest_db` VALUES(16112, 0, 0, 0, 0, 0, 0, 0, '"Acadêmia Kiel Hyre"\r\n');
REPLACE INTO `quest_db` VALUES(16113, 0, 0, 0, 0, 0, 0, 0, '"Acadêmia Kiel Hyre"\r\n');
REPLACE INTO `quest_db` VALUES(16114, 0, 0, 0, 0, 0, 0, 0, '"Acadêmia Kiel Hyre"\r\n');
REPLACE INTO `quest_db` VALUES(16115, 0, 0, 0, 0, 0, 0, 0, '"Acadêmia Kiel Hyre"\r\n');
REPLACE INTO `quest_db` VALUES(16116, 0, 0, 0, 0, 0, 0, 0, '"Acadêmia Kiel Hyre"\r\n');
REPLACE INTO `quest_db` VALUES(16117, 0, 0, 0, 0, 0, 0, 0, '"Mapa Mundial Misterioso"\r\n');
REPLACE INTO `quest_db` VALUES(16118, 0, 0, 0, 0, 0, 0, 0, '"Poema perdido"\r\n');
REPLACE INTO `quest_db` VALUES(16119, 0, 0, 0, 0, 0, 0, 0, '"Espadas Cobra"\r\n');
REPLACE INTO `quest_db` VALUES(16120, 0, 0, 0, 0, 0, 0, 0, '"Um sonho?"\r\n');
REPLACE INTO `quest_db` VALUES(16121, 0, 0, 0, 0, 0, 0, 0, '"Código Secreto?"\r\n');
REPLACE INTO `quest_db` VALUES(16122, 0, 0, 0, 0, 0, 0, 0, '"Chave Velha de Cobre"\r\n');
REPLACE INTO `quest_db` VALUES(16123, 0, 0, 0, 0, 0, 0, 0, '"Passe Verde"\r\n');
REPLACE INTO `quest_db` VALUES(16124, 0, 0, 0, 0, 0, 0, 0, '"Caixa de Aço"\r\n');
REPLACE INTO `quest_db` VALUES(16125, 0, 0, 0, 0, 0, 0, 0, '"Acadêmia Kiel Hyre"\r\n');
REPLACE INTO `quest_db` VALUES(16126, 0, 0, 0, 0, 0, 0, 0, '"Acadêmia Kiel Hyre"\r\n');
REPLACE INTO `quest_db` VALUES(16127, 0, 0, 0, 0, 0, 0, 0, '"Acadêmia Kiel Hyre"\r\n');
REPLACE INTO `quest_db` VALUES(16128, 0, 0, 0, 0, 0, 0, 0, '"Acadêmia Kiel Hyre"\r\n');
REPLACE INTO `quest_db` VALUES(16129, 0, 0, 0, 0, 0, 0, 0, '"Acadêmia Kiel Hyre"\r\n');
REPLACE INTO `quest_db` VALUES(16130, 0, 0, 0, 0, 0, 0, 0, '"Acadêmia Kiel Hyre"\r\n');
REPLACE INTO `quest_db` VALUES(16131, 0, 0, 0, 0, 0, 0, 0, '"Acadêmia Kiel Hyre"\r\n');
REPLACE INTO `quest_db` VALUES(16132, 0, 0, 0, 0, 0, 0, 0, '"Acadêmia Kiel Hyre"\r\n');
REPLACE INTO `quest_db` VALUES(16133, 0, 0, 0, 0, 0, 0, 0, '"Acadêmia Kiel Hyre"\r\n');
REPLACE INTO `quest_db` VALUES(16134, 0, 0, 0, 0, 0, 0, 0, '"Acadêmia Kiel Hyre"\r\n');
REPLACE INTO `quest_db` VALUES(16135, 0, 0, 0, 0, 0, 0, 0, '"Acadêmia Kiel Hyre"\r\n');
REPLACE INTO `quest_db` VALUES(16136, 0, 0, 0, 0, 0, 0, 0, '"Acadêmia Kiel Hyre"\r\n');
REPLACE INTO `quest_db` VALUES(16137, 0, 0, 0, 0, 0, 0, 0, '"Acadêmia Kiel Hyre"\r\n');
REPLACE INTO `quest_db` VALUES(16138, 0, 0, 0, 0, 0, 0, 0, '"Acadêmia Kiel Hyre"\r\n');
REPLACE INTO `quest_db` VALUES(16139, 0, 0, 0, 0, 0, 0, 0, '"Acadêmia Kiel Hyre"\r\n');
REPLACE INTO `quest_db` VALUES(16140, 0, 0, 0, 0, 0, 0, 0, '"Acadêmia Kiel Hyre"\r\n');
REPLACE INTO `quest_db` VALUES(16141, 0, 0, 0, 0, 0, 0, 0, '"Acadêmia Kiel Hyre"\r\n');
REPLACE INTO `quest_db` VALUES(16142, 0, 0, 0, 0, 0, 0, 0, '"Acadêmia Kiel Hyre"\r\n');
REPLACE INTO `quest_db` VALUES(16143, 0, 0, 0, 0, 0, 0, 0, '"Acadêmia Kiel Hyre"\r\n');
REPLACE INTO `quest_db` VALUES(16144, 0, 0, 0, 0, 0, 0, 0, '"Acadêmia Kiel Hyre"\r\n');
REPLACE INTO `quest_db` VALUES(16145, 0, 0, 0, 0, 0, 0, 0, '"Acadêmia Kiel Hyre"\r\n');
REPLACE INTO `quest_db` VALUES(16146, 0, 0, 0, 0, 0, 0, 0, '"Acadêmia Kiel Hyre"\r\n');
REPLACE INTO `quest_db` VALUES(16200, 0, 0, 0, 0, 0, 0, 0, '"Pedido de Limberg"\r\n');
REPLACE INTO `quest_db` VALUES(16201, 0, 0, 0, 0, 0, 0, 0, '"Relatório TPS"\r\n');
REPLACE INTO `quest_db` VALUES(16202, 0, 0, 0, 0, 0, 0, 0, '"Relatório TPS"\r\n');
REPLACE INTO `quest_db` VALUES(16203, 0, 0, 0, 0, 0, 0, 0, '"Relatório TPS"\r\n');
REPLACE INTO `quest_db` VALUES(16204, 0, 0, 0, 0, 0, 0, 0, '"Rachadura na parede"\r\n');
REPLACE INTO `quest_db` VALUES(16205, 0, 0, 0, 0, 0, 0, 0, '"O Tubo de Lava Vazio"\r\n');
REPLACE INTO `quest_db` VALUES(17000, 0, 0, 0, 0, 0, 0, 0, '"Encontre-se com Bamph Pai"\r\n');
REPLACE INTO `quest_db` VALUES(17001, 0, 0, 0, 0, 0, 0, 0, '"Encontre-se com Larjes"\r\n');
REPLACE INTO `quest_db` VALUES(17002, 0, 0, 0, 0, 0, 0, 0, '"Relatório ao Pai Bamph"\r\n');
REPLACE INTO `quest_db` VALUES(17003, 0, 0, 0, 0, 0, 0, 0, '"Viagem a Rachel"\r\n');
REPLACE INTO `quest_db` VALUES(17004, 0, 0, 0, 0, 0, 0, 0, '"Viagem a Veins"\r\n');
REPLACE INTO `quest_db` VALUES(17005, 0, 0, 0, 0, 0, 0, 0, '"Magistrado Frustrado"\r\n');
REPLACE INTO `quest_db` VALUES(17006, 0, 0, 0, 0, 0, 0, 0, '"Contrabandistas Interrogados"\r\n');
REPLACE INTO `quest_db` VALUES(17007, 0, 0, 0, 0, 0, 0, 0, '"Ordens escritas"\r\n');
REPLACE INTO `quest_db` VALUES(17008, 0, 0, 0, 0, 0, 0, 0, '"Investigando"\r\n');
REPLACE INTO `quest_db` VALUES(17009, 0, 0, 0, 0, 0, 0, 0, '"Mais Investigações"\r\n');
REPLACE INTO `quest_db` VALUES(17010, 0, 0, 0, 0, 0, 0, 0, '"Investigações adicionais"\r\n');
REPLACE INTO `quest_db` VALUES(17011, 0, 0, 0, 0, 0, 0, 0, '"Pai de Kurdi"\r\n');
REPLACE INTO `quest_db` VALUES(17012, 0, 0, 0, 0, 0, 0, 0, '"Barco de Karyn"\r\n');
REPLACE INTO `quest_db` VALUES(17013, 0, 0, 0, 0, 0, 0, 0, '"Para a Ilha"\r\n');
REPLACE INTO `quest_db` VALUES(17014, 0, 0, 0, 0, 0, 0, 0, '"Investigando a Ilha"\r\n');
REPLACE INTO `quest_db` VALUES(17015, 0, 0, 0, 0, 0, 0, 0, '"A Nota da Pesquisa"\r\n');
REPLACE INTO `quest_db` VALUES(17016, 0, 0, 0, 0, 0, 0, 0, '"Regicidio"\r\n');
REPLACE INTO `quest_db` VALUES(17017, 0, 0, 0, 0, 0, 0, 0, '"Relatando a Morte do Rei"\r\n');
REPLACE INTO `quest_db` VALUES(18001, 0, 0, 0, 0, 0, 0, 0, '"Entrega para Rooney"\r\n');
REPLACE INTO `quest_db` VALUES(18002, 0, 0, 0, 0, 0, 0, 0, '"Entrega para Rooney"\r\n');
REPLACE INTO `quest_db` VALUES(18003, 0, 0, 0, 0, 0, 0, 0, '"Entrega para Rooney"\r\n');
REPLACE INTO `quest_db` VALUES(18004, 0, 0, 0, 0, 0, 0, 0, '"Pedido de Lasdey"\r\n');
REPLACE INTO `quest_db` VALUES(18005, 0, 0, 0, 0, 0, 0, 0, '"Pedido de Jesse"\r\n');
REPLACE INTO `quest_db` VALUES(18006, 0, 0, 0, 0, 0, 0, 0, '"Aprovação do Senhor Krieg"\r\n');
REPLACE INTO `quest_db` VALUES(18007, 0, 0, 0, 0, 0, 0, 0, '"Confiança do senhor Krieg"\r\n');
REPLACE INTO `quest_db` VALUES(18008, 0, 0, 0, 0, 0, 0, 0, '"Confiança do senhor Krieg"\r\n');
REPLACE INTO `quest_db` VALUES(18009, 0, 0, 0, 0, 0, 0, 0, '"Dentro da prisão"\r\n');
REPLACE INTO `quest_db` VALUES(18010, 0, 0, 0, 0, 0, 0, 0, '"Fulga da Prisão"\r\n');
REPLACE INTO `quest_db` VALUES(18011, 0, 0, 0, 0, 0, 0, 0, '"Trabalho de Guarda-Costas"\r\n');
REPLACE INTO `quest_db` VALUES(18012, 0, 0, 0, 0, 0, 0, 0, '"Trabalho de Guarda-Costas"\r\n');
REPLACE INTO `quest_db` VALUES(18013, 0, 0, 0, 0, 0, 0, 0, '"Trabalho de Guarda-Costas"\r\n');
REPLACE INTO `quest_db` VALUES(18014, 0, 0, 0, 0, 0, 0, 0, '"Trabalho de Guarda-Costas"\r\n');
REPLACE INTO `quest_db` VALUES(18015, 0, 0, 0, 0, 0, 0, 0, '"Trabalho de Guarda-Costas"\r\n');
REPLACE INTO `quest_db` VALUES(18016, 0, 0, 0, 0, 0, 0, 0, '"Trabalho de Guarda-Costas"\r\n');
REPLACE INTO `quest_db` VALUES(18017, 0, 0, 0, 0, 0, 0, 0, '"Prisão"\r\n');
REPLACE INTO `quest_db` VALUES(18018, 0, 0, 0, 0, 0, 0, 0, '"Prisão"\r\n');
REPLACE INTO `quest_db` VALUES(18019, 0, 0, 0, 0, 0, 0, 0, '"Canções de Vitre"\r\n');
REPLACE INTO `quest_db` VALUES(18020, 0, 0, 0, 0, 0, 0, 0, '"Canções de Vitre"\r\n');
REPLACE INTO `quest_db` VALUES(18021, 0, 0, 0, 0, 0, 0, 0, '"Canções de Vitre"\r\n');
REPLACE INTO `quest_db` VALUES(18022, 0, 0, 0, 0, 0, 0, 0, '"Canções de Vitre"\r\n');
REPLACE INTO `quest_db` VALUES(18023, 0, 0, 0, 0, 0, 0, 0, '"Vitre o Espião"\r\n');
REPLACE INTO `quest_db` VALUES(18030, 0, 0, 0, 0, 0, 0, 0, '"Maldição da Família Gaebolg"\r\n');
REPLACE INTO `quest_db` VALUES(18031, 0, 0, 0, 0, 0, 0, 0, '"Maldição da Família Gaebolg"\r\n');
REPLACE INTO `quest_db` VALUES(18032, 0, 0, 0, 0, 0, 0, 0, '"Maldição da Família Gaebolg"\r\n');
REPLACE INTO `quest_db` VALUES(18033, 0, 0, 0, 0, 0, 0, 0, '"Maldição da Família Gaebolg"\r\n');
REPLACE INTO `quest_db` VALUES(18034, 0, 0, 0, 0, 0, 0, 0, '"Maldição da Família Gaebolg"\r\n');
REPLACE INTO `quest_db` VALUES(18035, 0, 0, 0, 0, 0, 0, 0, '"Maldição da Família Gaebolg"\r\n');
REPLACE INTO `quest_db` VALUES(18036, 0, 0, 0, 0, 0, 0, 0, '"Maldição da Família Gaebolg"\r\n');
REPLACE INTO `quest_db` VALUES(18037, 0, 0, 0, 0, 0, 0, 0, '"Maldição da Família Gaebolg"\r\n');
REPLACE INTO `quest_db` VALUES(18038, 0, 0, 0, 0, 0, 0, 0, '"Maldição da Família Gaebolg"\r\n');
REPLACE INTO `quest_db` VALUES(18039, 0, 0, 0, 0, 0, 0, 0, '"Maldição da Família Gaebolg"\r\n');
REPLACE INTO `quest_db` VALUES(18040, 0, 0, 0, 0, 0, 0, 0, '"Maldição da Família Gaebolg"\r\n');
REPLACE INTO `quest_db` VALUES(18041, 0, 0, 0, 0, 0, 0, 0, '"Maldição da Família Gaebolg"\r\n');
REPLACE INTO `quest_db` VALUES(18042, 0, 0, 0, 0, 0, 0, 0, '"Maldição da Família Gaebolg"\r\n');
REPLACE INTO `quest_db` VALUES(18043, 0, 0, 0, 0, 0, 0, 0, '"Maldição da Família Gaebolg"\r\n');
REPLACE INTO `quest_db` VALUES(18044, 0, 0, 0, 0, 0, 0, 0, '"Maldição da Família Gaebolg"\r\n');
REPLACE INTO `quest_db` VALUES(18045, 0, 0, 0, 0, 0, 0, 0, '"Maldição da Família Gaebolg"\r\n');
REPLACE INTO `quest_db` VALUES(18046, 0, 0, 0, 0, 0, 0, 0, '"Maldição da Família Gaebolg"\r\n');
REPLACE INTO `quest_db` VALUES(18047, 0, 0, 0, 0, 0, 0, 0, '"Maldição da Família Gaebolg"\r\n');
REPLACE INTO `quest_db` VALUES(18048, 0, 0, 0, 0, 0, 0, 0, '"Maldição da Família Gaebolg"\r\n');
REPLACE INTO `quest_db` VALUES(18049, 0, 0, 0, 0, 0, 0, 0, '"Maldição da Família Gaebolg"\r\n');
REPLACE INTO `quest_db` VALUES(18050, 0, 0, 0, 0, 0, 0, 0, '"Maldição da Família Gaebolg"\r\n');
REPLACE INTO `quest_db` VALUES(18051, 0, 0, 0, 0, 0, 0, 0, '"Maldição da Família Gaebolg"\r\n');
REPLACE INTO `quest_db` VALUES(18052, 0, 0, 0, 0, 0, 0, 0, '"Maldição da Família Gaebolg"\r\n');
REPLACE INTO `quest_db` VALUES(18060, 0, 0, 0, 0, 0, 0, 0, '"Garoto perdido Mikhail"\r\n');
REPLACE INTO `quest_db` VALUES(18061, 0, 0, 0, 0, 0, 0, 0, '"O paradeiro de Mikhail"\r\n');
REPLACE INTO `quest_db` VALUES(18062, 0, 0, 0, 0, 0, 0, 0, '"Garoto perdido Mikhail"\r\n');
REPLACE INTO `quest_db` VALUES(18063, 0, 0, 0, 0, 0, 0, 0, '"O pântano isolado"\r\n');
REPLACE INTO `quest_db` VALUES(18064, 0, 0, 0, 0, 0, 0, 0, '"De volta ao Vilarejo"\r\n');
REPLACE INTO `quest_db` VALUES(18065, 0, 0, 0, 0, 0, 0, 0, '"Alta Resistência Adesiva"\r\n');
REPLACE INTO `quest_db` VALUES(18066, 0, 0, 0, 0, 0, 0, 0, '"De volta ao pântano"\r\n');
REPLACE INTO `quest_db` VALUES(18067, 0, 0, 0, 0, 0, 0, 0, '"Criação da pasta"\r\n');
REPLACE INTO `quest_db` VALUES(18068, 0, 0, 0, 0, 0, 0, 0, '"Correção de Matrushka"\r\n');
REPLACE INTO `quest_db` VALUES(18069, 0, 0, 0, 0, 0, 0, 0, '"Relatório de Gallina"\r\n');
REPLACE INTO `quest_db` VALUES(18070, 0, 0, 0, 0, 0, 0, 0, '"Banimento de Inverno"\r\n');
REPLACE INTO `quest_db` VALUES(18071, 0, 0, 0, 0, 0, 0, 0, '"Fazendo o pó mágico"\r\n');
REPLACE INTO `quest_db` VALUES(18072, 0, 0, 0, 0, 0, 0, 0, '"Fazendo o pó mágico"\r\n');
REPLACE INTO `quest_db` VALUES(18073, 0, 0, 0, 0, 0, 0, 0, '"Toca do Dragão"\r\n');
REPLACE INTO `quest_db` VALUES(18074, 0, 0, 0, 0, 0, 0, 0, '"A Garrafa Mágica"\r\n');
REPLACE INTO `quest_db` VALUES(18075, 0, 0, 0, 0, 0, 0, 0, '"Contendo Protesto Popular"\r\n');
REPLACE INTO `quest_db` VALUES(18076, 0, 0, 0, 0, 0, 0, 0, '"Contendo Protesto Popular"\r\n');
REPLACE INTO `quest_db` VALUES(18077, 0, 0, 0, 0, 0, 0, 0, '"Pedido do Csar"\r\n');
REPLACE INTO `quest_db` VALUES(18078, 0, 0, 0, 0, 0, 0, 0, '"Baba-Yaga Remédio Secreto"\r\n');
REPLACE INTO `quest_db` VALUES(18079, 0, 0, 0, 0, 0, 0, 0, '"O Inverno está banido"\r\n');
REPLACE INTO `quest_db` VALUES(18100, 0, 0, 0, 0, 0, 0, 0, '"Lendas de Moscovia"\r\n');
REPLACE INTO `quest_db` VALUES(18101, 0, 0, 0, 0, 0, 0, 0, '"A Ilha que se Move"\r\n');
REPLACE INTO `quest_db` VALUES(18102, 0, 0, 0, 0, 0, 0, 0, '"A Procura da Ilha que se Move"\r\n');
REPLACE INTO `quest_db` VALUES(18103, 0, 0, 0, 0, 0, 0, 0, '"A Procura da Ilha que se Move"\r\n');
REPLACE INTO `quest_db` VALUES(18104, 0, 0, 0, 0, 0, 0, 0, '"Sr. Ibanoff o novo amigo"\r\n');
REPLACE INTO `quest_db` VALUES(18105, 0, 0, 0, 0, 0, 0, 0, '"Consertando a Cabana"\r\n');
REPLACE INTO `quest_db` VALUES(18106, 0, 0, 0, 0, 0, 0, 0, '"Como a maré vira"\r\n');
REPLACE INTO `quest_db` VALUES(18107, 0, 0, 0, 0, 0, 0, 0, '"Partindo"\r\n');
REPLACE INTO `quest_db` VALUES(18108, 0, 0, 0, 0, 0, 0, 0, '"A Ilha que se Move?"\r\n');
REPLACE INTO `quest_db` VALUES(18109, 0, 0, 0, 0, 0, 0, 0, '"A Ilha que se Move???"\r\n');
REPLACE INTO `quest_db` VALUES(18110, 0, 0, 0, 0, 0, 0, 0, '"O Estranho Idoso"\r\n');
REPLACE INTO `quest_db` VALUES(18111, 0, 0, 0, 0, 0, 0, 0, '"A Ilha da Baleia!"\r\n');
REPLACE INTO `quest_db` VALUES(18112, 0, 0, 0, 0, 0, 0, 0, '"A História do Csar"\r\n');
REPLACE INTO `quest_db` VALUES(18113, 0, 0, 0, 0, 0, 0, 0, '"Evidência para o Csar"\r\n');
REPLACE INTO `quest_db` VALUES(18114, 0, 0, 0, 0, 0, 0, 0, '"Antes do Anoitecer"\r\n');
REPLACE INTO `quest_db` VALUES(18115, 0, 0, 0, 0, 0, 0, 0, '"Partindo"\r\n');
REPLACE INTO `quest_db` VALUES(18116, 0, 0, 0, 0, 0, 0, 0, '"A Ilha da Baleia!"\r\n');
REPLACE INTO `quest_db` VALUES(18117, 0, 0, 0, 0, 0, 0, 0, '"Materiais para Evidência"\r\n');
REPLACE INTO `quest_db` VALUES(18118, 0, 0, 0, 0, 0, 0, 0, '"Instrumento Musical Misterioso"\r\n');
REPLACE INTO `quest_db` VALUES(18119, 0, 0, 0, 0, 0, 0, 0, '"Gusli"\r\n');
REPLACE INTO `quest_db` VALUES(18120, 0, 0, 0, 0, 0, 0, 0, '"Gusli"\r\n');
REPLACE INTO `quest_db` VALUES(18121, 0, 0, 0, 0, 0, 0, 0, '"Shafka"\r\n');
REPLACE INTO `quest_db` VALUES(19101, 0, 0, 0, 0, 0, 0, 0, '"O Olho de Hellion"\r\n');
REPLACE INTO `quest_db` VALUES(19102, 0, 0, 0, 0, 0, 0, 0, '"O Olho de Hellion"\r\n');
REPLACE INTO `quest_db` VALUES(19103, 0, 0, 0, 0, 0, 0, 0, '"O Olho de Hellion"\r\n');
REPLACE INTO `quest_db` VALUES(19104, 0, 0, 0, 0, 0, 0, 0, '"O Olho de Hellion"\r\n');
REPLACE INTO `quest_db` VALUES(19105, 0, 0, 0, 0, 0, 0, 0, '"O Olho de Hellion"\r\n');
REPLACE INTO `quest_db` VALUES(19106, 0, 0, 0, 0, 0, 0, 0, '"O Olho de Hellion"\r\n');
REPLACE INTO `quest_db` VALUES(19107, 0, 0, 0, 0, 0, 0, 0, '"O Olho de Hellion"\r\n');
REPLACE INTO `quest_db` VALUES(19108, 0, 0, 0, 0, 0, 0, 0, '"O Olho de Hellion"\r\n');
REPLACE INTO `quest_db` VALUES(19109, 0, 0, 0, 0, 0, 0, 0, '"O Olho de Hellion"\r\n');
REPLACE INTO `quest_db` VALUES(19110, 0, 0, 0, 0, 0, 0, 0, '"O Olho de Hellion"\r\n');
REPLACE INTO `quest_db` VALUES(19111, 0, 0, 0, 0, 0, 0, 0, '"O Olho de Hellion"\r\n');
REPLACE INTO `quest_db` VALUES(19112, 0, 0, 0, 0, 0, 0, 0, '"O Olho de Hellion"\r\n');
REPLACE INTO `quest_db` VALUES(19113, 0, 0, 0, 0, 0, 0, 0, '"O Olho de Hellion"\r\n');
REPLACE INTO `quest_db` VALUES(19114, 0, 0, 0, 0, 0, 0, 0, '"O Olho de Hellion"\r\n');
REPLACE INTO `quest_db` VALUES(19115, 0, 0, 0, 0, 0, 0, 0, '"O Olho de Hellion"\r\n');
REPLACE INTO `quest_db` VALUES(19116, 0, 0, 0, 0, 0, 0, 0, '"O Olho de Hellion"\r\n');
REPLACE INTO `quest_db` VALUES(19117, 0, 0, 0, 0, 0, 0, 0, '"O Olho de Hellion"\r\n');
REPLACE INTO `quest_db` VALUES(19118, 0, 0, 0, 0, 0, 0, 0, '"O Olho de Hellion"\r\n');
REPLACE INTO `quest_db` VALUES(19119, 0, 0, 0, 0, 0, 0, 0, '"O Olho de Hellion"\r\n');
REPLACE INTO `quest_db` VALUES(19120, 0, 0, 0, 0, 0, 0, 0, '"O Olho de Hellion"\r\n');
REPLACE INTO `quest_db` VALUES(19121, 0, 0, 0, 0, 0, 0, 0, '"O Olho de Hellion"\r\n');
REPLACE INTO `quest_db` VALUES(19122, 0, 0, 0, 0, 0, 0, 0, '"O Olho de Hellion"\r\n');
REPLACE INTO `quest_db` VALUES(19123, 0, 0, 0, 0, 0, 0, 0, '"O Olho de Hellion"\r\n');
REPLACE INTO `quest_db` VALUES(19124, 0, 0, 0, 0, 0, 0, 0, '"O Olho de Hellion"\r\n');
REPLACE INTO `quest_db` VALUES(19125, 0, 0, 0, 0, 0, 0, 0, '"O Olho de Hellion"\r\n');
REPLACE INTO `quest_db` VALUES(19126, 0, 0, 0, 0, 0, 0, 0, '"O Olho de Hellion"\r\n');
REPLACE INTO `quest_db` VALUES(19127, 0, 0, 0, 0, 0, 0, 0, '"O Olho de Hellion"\r\n');
REPLACE INTO `quest_db` VALUES(19128, 0, 0, 0, 0, 0, 0, 0, '"O Olho de Hellion"\r\n');
REPLACE INTO `quest_db` VALUES(19129, 0, 0, 0, 0, 0, 0, 0, '"O Olho de Hellion"\r\n');
REPLACE INTO `quest_db` VALUES(50000, 0, 0, 0, 0, 0, 0, 0, '"Materiais para a Adaga Pirata"\r\n');
REPLACE INTO `quest_db` VALUES(50001, 0, 0, 0, 0, 0, 0, 0, '"Tempo Espancado Velho"\r\n');
REPLACE INTO `quest_db` VALUES(50002, 0, 0, 0, 0, 0, 0, 0, '"Tesouro Perdido?"\r\n');
REPLACE INTO `quest_db` VALUES(50003, 0, 0, 0, 0, 0, 0, 0, '"Tesouro Perdido?"\r\n');
REPLACE INTO `quest_db` VALUES(50004, 0, 0, 0, 0, 0, 0, 0, '"Tesouro do Velho Homem"\r\n');
REPLACE INTO `quest_db` VALUES(50005, 0, 0, 0, 0, 0, 0, 0, '"Tesouro do Velho Homem"\r\n');
REPLACE INTO `quest_db` VALUES(50006, 0, 0, 0, 0, 0, 0, 0, '"Tesouro do Velho Homem"\r\n');
REPLACE INTO `quest_db` VALUES(50007, 0, 0, 0, 0, 0, 0, 0, '"Tesouro do Velho Homem"\r\n');
REPLACE INTO `quest_db` VALUES(50008, 0, 0, 0, 0, 0, 0, 0, '"Tesouro do Velho Homem"\r\n');
REPLACE INTO `quest_db` VALUES(50009, 0, 0, 0, 0, 0, 0, 0, '"Tesouro do Velho Homem"\r\n');
REPLACE INTO `quest_db` VALUES(50010, 0, 0, 0, 0, 0, 0, 0, '"A tranca especial"\r\n');
REPLACE INTO `quest_db` VALUES(50011, 0, 0, 0, 0, 0, 0, 0, '"A tranca especial"\r\n');
REPLACE INTO `quest_db` VALUES(50012, 0, 0, 0, 0, 0, 0, 0, '"Use a tranca especial"\r\n');
REPLACE INTO `quest_db` VALUES(50013, 0, 0, 0, 0, 0, 0, 0, '"Tranca quebrada"\r\n');
REPLACE INTO `quest_db` VALUES(50015, 0, 0, 0, 0, 0, 0, 0, '"O Baú do Tesouro Vazio"\r\n');
REPLACE INTO `quest_db` VALUES(50016, 0, 0, 0, 0, 0, 0, 0, '"O Baú do Tesouro Vazio"\r\n');
REPLACE INTO `quest_db` VALUES(50017, 0, 0, 0, 0, 0, 0, 0, '"O Baú do Tesouro Vazio"\r\n');
REPLACE INTO `quest_db` VALUES(50018, 0, 0, 0, 0, 0, 0, 0, '"O Baú do Tesouro Vazio"\r\n');
REPLACE INTO `quest_db` VALUES(50019, 0, 0, 0, 0, 0, 0, 0, '"O Baú do Tesouro Vazio"\r\n');
REPLACE INTO `quest_db` VALUES(50020, 0, 0, 0, 0, 0, 0, 0, '"O Baú do Tesouro Vazio"\r\n');
REPLACE INTO `quest_db` VALUES(50021, 0, 0, 0, 0, 0, 0, 0, '"J Roger"\r\n');
REPLACE INTO `quest_db` VALUES(50022, 0, 0, 0, 0, 0, 0, 0, '"J Roger materiais da chave"\r\n');
REPLACE INTO `quest_db` VALUES(50023, 0, 0, 0, 0, 0, 0, 0, '"Conversa com J Roger"\r\n');
REPLACE INTO `quest_db` VALUES(50024, 0, 0, 0, 0, 0, 0, 0, '"Enterre o tesouro"\r\n');
REPLACE INTO `quest_db` VALUES(50025, 0, 0, 0, 0, 0, 0, 0, '"Enterre o tesouro"\r\n');
REPLACE INTO `quest_db` VALUES(50026, 0, 0, 0, 0, 0, 0, 0, '"Enterre o tesouro"\r\n');
REPLACE INTO `quest_db` VALUES(50027, 0, 0, 0, 0, 0, 0, 0, '"Tesouro enterrado"\r\n');
REPLACE INTO `quest_db` VALUES(50028, 0, 0, 0, 0, 0, 0, 0, '"Tesouro roubado!"\r\n');
REPLACE INTO `quest_db` VALUES(50029, 0, 0, 0, 0, 0, 0, 0, '"O Espírito do Pirato!"\r\n');
REPLACE INTO `quest_db` VALUES(60001, 0, 0, 0, 0, 0, 0, 0, '"Extermínio dos Monstros"\r\n');
REPLACE INTO `quest_db` VALUES(60002, 0, 0, 0, 0, 0, 0, 0, '"Extermínio dos Monstros"\r\n');
REPLACE INTO `quest_db` VALUES(60003, 0, 0, 0, 0, 0, 0, 0, '"Extermínio dos Monstros"\r\n');
REPLACE INTO `quest_db` VALUES(60004, 0, 0, 0, 0, 0, 0, 0, '"Extermínio dos Monstros"\r\n');
REPLACE INTO `quest_db` VALUES(60005, 0, 0, 0, 0, 0, 0, 0, '"Extermínio dos Monstros"\r\n');
REPLACE INTO `quest_db` VALUES(60006, 0, 0, 0, 0, 0, 0, 0, '"Extermínio dos Monstros"\r\n');
REPLACE INTO `quest_db` VALUES(60007, 0, 0, 0, 0, 0, 0, 0, '"Torre sem Fim - Efeito"\r\n');
REPLACE INTO `quest_db` VALUES(60008, 0, 0, 0, 0, 0, 0, 0, '"Torre sem Fim - Limite de Tempo"\r\n');
REPLACE INTO `quest_db` VALUES(60009, 0, 0, 0, 0, 0, 0, 0, '"Orc Herói"\r\n');
REPLACE INTO `quest_db` VALUES(60010, 0, 0, 0, 0, 0, 0, 0, '"Pedido de Derik Ver"\r\n');
REPLACE INTO `quest_db` VALUES(60011, 0, 0, 0, 0, 0, 0, 0, '"Investigação de Byalan"\r\n');
REPLACE INTO `quest_db` VALUES(60012, 0, 0, 0, 0, 0, 0, 0, '"Investigação de Abyss"\r\n');
REPLACE INTO `quest_db` VALUES(60013, 0, 0, 0, 0, 0, 0, 0, '"Investigação de Monstros"\r\n');
REPLACE INTO `quest_db` VALUES(60014, 0, 0, 0, 0, 0, 0, 0, '"Caverna de Geffen: Investigação de Monstros"\r\n');
REPLACE INTO `quest_db` VALUES(60015, 0, 0, 0, 0, 0, 0, 0, '"Caverna de Geffen: Investigação de Monstros"\r\n');
REPLACE INTO `quest_db` VALUES(60016, 0, 0, 0, 0, 0, 0, 0, '"Caverna de Geffen: Investigação de Monstros"\r\n');
REPLACE INTO `quest_db` VALUES(60017, 0, 0, 0, 0, 0, 0, 0, '"Caverna de Geffen: Investigação de Monstros"\r\n');
REPLACE INTO `quest_db` VALUES(60018, 0, 0, 0, 0, 0, 0, 0, '"Caverna de Byalan: Investigação de Monstros"\r\n');
REPLACE INTO `quest_db` VALUES(60019, 0, 0, 0, 0, 0, 0, 0, '"Ilha Byalan: Investigação de Monstros"\r\n');
REPLACE INTO `quest_db` VALUES(60020, 0, 0, 0, 0, 0, 0, 0, '"Ilha Byalan: Investigação de Monstros"\r\n');
REPLACE INTO `quest_db` VALUES(60021, 0, 0, 0, 0, 0, 0, 0, '"Ilha Byalan: Investigação de Monstros"\r\n');
REPLACE INTO `quest_db` VALUES(60022, 0, 0, 0, 0, 0, 0, 0, '"Lago do Abismo: Investigação de Monstros"\r\n');
REPLACE INTO `quest_db` VALUES(60023, 0, 0, 0, 0, 0, 0, 0, '"Lago do Abismo: Investigação de Monstros"\r\n');
REPLACE INTO `quest_db` VALUES(60024, 0, 0, 0, 0, 0, 0, 0, '"Lago do Abismo: Investigação de Monstros"\r\n');
REPLACE INTO `quest_db` VALUES(60025, 0, 0, 0, 0, 0, 0, 0, '"Lago do Abismo: Investigação de Monstros"\r\n');
REPLACE INTO `quest_db` VALUES(60026, 0, 0, 0, 0, 0, 0, 0, '"Continuando a Investigação"\r\n');
REPLACE INTO `quest_db` VALUES(60027, 0, 0, 0, 0, 0, 0, 0, '"Investigando Aldebaran"\r\n');
REPLACE INTO `quest_db` VALUES(60028, 0, 0, 0, 0, 0, 0, 0, '"Investigação de Monstros"\r\n');
REPLACE INTO `quest_db` VALUES(60029, 0, 0, 0, 0, 0, 0, 0, '"Aldebaran: Investigação de Monstros"\r\n');
REPLACE INTO `quest_db` VALUES(60030, 0, 0, 0, 0, 0, 0, 0, '"Torre do Relógio: Investigação de Monstros"\r\n');
REPLACE INTO `quest_db` VALUES(60031, 0, 0, 0, 0, 0, 0, 0, '"Torre do Relógio: Investigação de Monstros"\r\n');
REPLACE INTO `quest_db` VALUES(60032, 0, 0, 0, 0, 0, 0, 0, '"Campos de Lutie: Investigação de Monstros"\r\n');
REPLACE INTO `quest_db` VALUES(60033, 0, 0, 0, 0, 0, 0, 0, '"Torre do Relógio: Investigação de Monstros"\r\n');
REPLACE INTO `quest_db` VALUES(60034, 0, 0, 0, 0, 0, 0, 0, '"Torre do Relógio: Investigação de Monstros"\r\n');
REPLACE INTO `quest_db` VALUES(60035, 0, 0, 0, 0, 0, 0, 0, '"Aldebaran: Investigação de Monstros"\r\n');
REPLACE INTO `quest_db` VALUES(60036, 0, 0, 0, 0, 0, 0, 0, '"Torre do Relógio: Investigação de Monstros"\r\n');
REPLACE INTO `quest_db` VALUES(60037, 0, 0, 0, 0, 0, 0, 0, '"Torre do Relógio: Investigação de Monstros"\r\n');
REPLACE INTO `quest_db` VALUES(60038, 0, 0, 0, 0, 0, 0, 0, '"Aldebaran: Investigação de Monstros"\r\n');
REPLACE INTO `quest_db` VALUES(60039, 0, 0, 0, 0, 0, 0, 0, '"Glastheim: Investigação de Monstros"\r\n');
REPLACE INTO `quest_db` VALUES(60040, 0, 0, 0, 0, 0, 0, 0, '"Glastheim: Investigação de Monstros"\r\n');
REPLACE INTO `quest_db` VALUES(60041, 0, 0, 0, 0, 0, 0, 0, '"Investigação de Monstros"\r\n');
REPLACE INTO `quest_db` VALUES(60042, 0, 0, 0, 0, 0, 0, 0, '"Glastheim: Investigação de Monstros"\r\n');
REPLACE INTO `quest_db` VALUES(60043, 0, 0, 0, 0, 0, 0, 0, '"Glastheim: Investigação de Monstros"\r\n');
REPLACE INTO `quest_db` VALUES(60044, 0, 0, 0, 0, 0, 0, 0, '"Glastheim: Investigação de Monstros"\r\n');
REPLACE INTO `quest_db` VALUES(60045, 0, 0, 0, 0, 0, 0, 0, '"Glastheim: Investigação de Monstros"\r\n');
REPLACE INTO `quest_db` VALUES(60046, 0, 0, 0, 0, 0, 0, 0, '"Glastheim: Investigação de Monstros"\r\n');
REPLACE INTO `quest_db` VALUES(60047, 0, 0, 0, 0, 0, 0, 0, '"Glastheim: Investigação de Monstros"\r\n');
REPLACE INTO `quest_db` VALUES(60048, 0, 0, 0, 0, 0, 0, 0, '"Glastheim: Investigação de Monstros"\r\n');
REPLACE INTO `quest_db` VALUES(60049, 0, 0, 0, 0, 0, 0, 0, '"Glastheim: Investigação de Monstros"\r\n');
REPLACE INTO `quest_db` VALUES(60050, 0, 0, 0, 0, 0, 0, 0, '"Glastheim: Investigação de Monstros"\r\n');
REPLACE INTO `quest_db` VALUES(60051, 0, 0, 0, 0, 0, 0, 0, '"Glastheim: Investigação de Monstros"\r\n');
REPLACE INTO `quest_db` VALUES(60052, 0, 0, 0, 0, 0, 0, 0, '"Glastheim: Investigação de Monstros"\r\n');
REPLACE INTO `quest_db` VALUES(60053, 0, 0, 0, 0, 0, 0, 0, '"Glastheim: Investigação de Monstros"\r\n');
REPLACE INTO `quest_db` VALUES(60054, 0, 0, 0, 0, 0, 0, 0, '"Glastheim: Investigação de Monstros"\r\n');
REPLACE INTO `quest_db` VALUES(60055, 0, 0, 0, 0, 0, 0, 0, '"Glastheim: Investigação de Monstros"\r\n');
REPLACE INTO `quest_db` VALUES(60056, 0, 0, 0, 0, 0, 0, 0, '"Glastheim: Investigação de Monstros"\r\n');
REPLACE INTO `quest_db` VALUES(60057, 0, 0, 0, 0, 0, 0, 0, '"Glastheim: Investigação de Monstros"\r\n');
REPLACE INTO `quest_db` VALUES(60058, 0, 0, 0, 0, 0, 0, 0, '"Irmão de Derik Ver"\r\n');
REPLACE INTO `quest_db` VALUES(60059, 0, 0, 0, 0, 0, 0, 0, '"Uma Lição de História"\r\n');
REPLACE INTO `quest_db` VALUES(60060, 0, 0, 0, 0, 0, 0, 0, '"A Coroa do Engano"\r\n');
REPLACE INTO `quest_db` VALUES(60061, 0, 0, 0, 0, 0, 0, 0, '"Um Solvente Mágico"\r\n');
REPLACE INTO `quest_db` VALUES(60062, 0, 0, 0, 0, 0, 0, 0, '"Tornando a coroa inativa"\r\n');
REPLACE INTO `quest_db` VALUES(60101, 0, 1019, 50, 0, 0, 0, 0, '"Caçando Peco-Pecos"\r\n');
REPLACE INTO `quest_db` VALUES(60102, 0, 1019, 100, 0, 0, 0, 0, '"Caçando Peco-Pecos"\r\n');
REPLACE INTO `quest_db` VALUES(60103, 0, 1019, 150, 0, 0, 0, 0, '"Caçando Peco-Pecos"\r\n');
REPLACE INTO `quest_db` VALUES(60104, 0, 1127, 50, 0, 0, 0, 0, '"Caçando Hodes"\r\n');
REPLACE INTO `quest_db` VALUES(60105, 0, 1127, 100, 0, 0, 0, 0, '"Caçando Hodes"\r\n');
REPLACE INTO `quest_db` VALUES(60106, 0, 1127, 150, 0, 0, 0, 0, '"Caçando Hodes"\r\n');
REPLACE INTO `quest_db` VALUES(60107, 0, 1007, 50, 0, 0, 0, 0, '"Caçando Fabres"\r\n');
REPLACE INTO `quest_db` VALUES(60108, 0, 1007, 100, 0, 0, 0, 0, '"Caçando Fabres"\r\n');
REPLACE INTO `quest_db` VALUES(60109, 0, 1007, 150, 0, 0, 0, 0, '"Caçando Fabres"\r\n');
REPLACE INTO `quest_db` VALUES(60110, 0, 1008, 50, 0, 0, 0, 0, '"Caçando Pupas"\r\n');
REPLACE INTO `quest_db` VALUES(60111, 0, 1008, 100, 0, 0, 0, 0, '"Caçando Pupas"\r\n');
REPLACE INTO `quest_db` VALUES(60112, 0, 1008, 150, 0, 0, 0, 0, '"Caçando Pupas"\r\n');
REPLACE INTO `quest_db` VALUES(60113, 0, 1104, 50, 0, 0, 0, 0, '"Caçando Kokos"\r\n');
REPLACE INTO `quest_db` VALUES(60114, 0, 1104, 100, 0, 0, 0, 0, '"Caçando Kokos"\r\n');
REPLACE INTO `quest_db` VALUES(60115, 0, 1104, 150, 0, 0, 0, 0, '"Caçando Kokos"\r\n');
REPLACE INTO `quest_db` VALUES(60116, 0, 1103, 50, 0, 0, 0, 0, '"Caçando Caramelos"\r\n');
REPLACE INTO `quest_db` VALUES(60117, 0, 1103, 100, 0, 0, 0, 0, '"Caçando Caramels"\r\n');
REPLACE INTO `quest_db` VALUES(60118, 0, 1103, 150, 0, 0, 0, 0, '"Caçando Caramels"\r\n');
REPLACE INTO `quest_db` VALUES(60119, 0, 1271, 50, 0, 0, 0, 0, '"Caçando Crocodilos"\r\n');
REPLACE INTO `quest_db` VALUES(60120, 0, 1271, 100, 0, 0, 0, 0, '"Caçando Crocodilos"\r\n');
REPLACE INTO `quest_db` VALUES(60121, 0, 1271, 150, 0, 0, 0, 0, '"Caçando Crocodilos"\r\n');
REPLACE INTO `quest_db` VALUES(60122, 0, 1018, 50, 0, 0, 0, 0, '"Caçando Creamys"\r\n');
REPLACE INTO `quest_db` VALUES(60123, 0, 1018, 100, 0, 0, 0, 0, '"Caçando Creamys"\r\n');
REPLACE INTO `quest_db` VALUES(60124, 0, 1018, 150, 0, 0, 0, 0, '"Caçando Creamys"\r\n');
REPLACE INTO `quest_db` VALUES(60125, 0, 1378, 50, 0, 0, 0, 0, '"Caçando Demônios Pungus"\r\n');
REPLACE INTO `quest_db` VALUES(60126, 0, 1378, 100, 0, 0, 0, 0, '"Caçando Demônios Pungus"\r\n');
REPLACE INTO `quest_db` VALUES(60127, 0, 1378, 150, 0, 0, 0, 0, '"Caçando Demônios Pungus"\r\n');
REPLACE INTO `quest_db` VALUES(60128, 0, 1110, 50, 0, 0, 0, 0, '"Caçando Dokebis"\r\n');
REPLACE INTO `quest_db` VALUES(60129, 0, 1110, 100, 0, 0, 0, 0, '"Caçando Dokebis"\r\n');
REPLACE INTO `quest_db` VALUES(60130, 0, 1110, 150, 0, 0, 0, 0, '"Caçando Dokebis"\r\n');
REPLACE INTO `quest_db` VALUES(60131, 0, 1493, 50, 0, 0, 0, 0, '"Caçando Dríades"\r\n');
REPLACE INTO `quest_db` VALUES(60132, 0, 1493, 100, 0, 0, 0, 0, '"Caçando Dríades"\r\n');
REPLACE INTO `quest_db` VALUES(60133, 0, 1493, 150, 0, 0, 0, 0, '"Caçando Dríades"\r\n');
REPLACE INTO `quest_db` VALUES(60134, 0, 1119, 50, 0, 0, 0, 0, '"Caçando Frilldoras"\r\n');
REPLACE INTO `quest_db` VALUES(60135, 0, 1119, 100, 0, 0, 0, 0, '"Caçando Frilldoras"\r\n');
REPLACE INTO `quest_db` VALUES(60136, 0, 1119, 150, 0, 0, 0, 0, '"Caçando Frilldoras"\r\n');
REPLACE INTO `quest_db` VALUES(60137, 0, 1372, 50, 0, 0, 0, 0, '"Caçando Bodes"\r\n');
REPLACE INTO `quest_db` VALUES(60138, 0, 1372, 100, 0, 0, 0, 0, '"Caçando Bodes"\r\n');
REPLACE INTO `quest_db` VALUES(60139, 0, 1372, 150, 0, 0, 0, 0, '"Caçando Bodes"\r\n');
REPLACE INTO `quest_db` VALUES(60140, 0, 1040, 50, 0, 0, 0, 0, '"Caçando Golens"\r\n');
REPLACE INTO `quest_db` VALUES(60141, 0, 1040, 100, 0, 0, 0, 0, '"Caçando Golens"\r\n');
REPLACE INTO `quest_db` VALUES(60142, 0, 1040, 150, 0, 0, 0, 0, '"Caçando Golens"\r\n');
REPLACE INTO `quest_db` VALUES(60143, 0, 1586, 50, 0, 0, 0, 0, '"Caçando Gatos de Folha"\r\n');
REPLACE INTO `quest_db` VALUES(60144, 0, 1586, 100, 0, 0, 0, 0, '"Caçando Gatos de Folha"\r\n');
REPLACE INTO `quest_db` VALUES(60145, 0, 1586, 150, 0, 0, 0, 0, '"Caçando Gatos de Folha"\r\n');
REPLACE INTO `quest_db` VALUES(60146, 0, 1076, 50, 0, 0, 0, 0, '"Caçando Esqueletos"\r\n');
REPLACE INTO `quest_db` VALUES(60147, 0, 1076, 100, 0, 0, 0, 0, '"Caçando Esqueletos"\r\n');
REPLACE INTO `quest_db` VALUES(60148, 0, 1076, 150, 0, 0, 0, 0, '"Caçando Esqueletos"\r\n');
REPLACE INTO `quest_db` VALUES(60149, 0, 1026, 50, 0, 0, 0, 0, '"Caçando Munaks"\r\n');
REPLACE INTO `quest_db` VALUES(60150, 0, 1026, 100, 0, 0, 0, 0, '"Caçando Munaks"\r\n');
REPLACE INTO `quest_db` VALUES(60151, 0, 1026, 150, 0, 0, 0, 0, '"Caçando Munaks"\r\n');
REPLACE INTO `quest_db` VALUES(60152, 0, 1170, 50, 0, 0, 0, 0, '"Caçando Sohees"\r\n');
REPLACE INTO `quest_db` VALUES(60153, 0, 1170, 100, 0, 0, 0, 0, '"Caçando Sohees"\r\n');
REPLACE INTO `quest_db` VALUES(60154, 0, 1170, 150, 0, 0, 0, 0, '"Caçando Sohees"\r\n');
REPLACE INTO `quest_db` VALUES(60155, 0, 1403, 50, 0, 0, 0, 0, '"Caçando Soldados Atiradores"\r\n');
REPLACE INTO `quest_db` VALUES(60156, 0, 1403, 100, 0, 0, 0, 0, '"Caçando Soldados Atiradores"\r\n');
REPLACE INTO `quest_db` VALUES(60157, 0, 1403, 150, 0, 0, 0, 0, '"Caçando Soldados Atiradores"\r\n');
REPLACE INTO `quest_db` VALUES(60158, 0, 1405, 50, 0, 0, 0, 0, '"Caçando Tengus"\r\n');
REPLACE INTO `quest_db` VALUES(60159, 0, 1405, 100, 0, 0, 0, 0, '"Caçando Tengus"\r\n');
REPLACE INTO `quest_db` VALUES(60160, 0, 1405, 150, 0, 0, 0, 0, '"Caçando Tengus"\r\n');
REPLACE INTO `quest_db` VALUES(60161, 0, 1675, 25, 0, 0, 0, 0, '"Caçando Venatus"\r\n');
REPLACE INTO `quest_db` VALUES(60162, 0, 1675, 50, 0, 0, 0, 0, '"Caçando Venatus"\r\n');
REPLACE INTO `quest_db` VALUES(60163, 0, 1675, 75, 0, 0, 0, 0, '"Caçando Venatus"\r\n');
REPLACE INTO `quest_db` VALUES(60164, 0, 1668, 50, 0, 0, 0, 0, '"Caçando Archdams"\r\n');
REPLACE INTO `quest_db` VALUES(60165, 0, 1668, 100, 0, 0, 0, 0, '"Caçando Archdams"\r\n');
REPLACE INTO `quest_db` VALUES(60166, 0, 1668, 150, 0, 0, 0, 0, '"Caçando Archdams"\r\n');
REPLACE INTO `quest_db` VALUES(60167, 0, 1776, 50, 0, 0, 0, 0, '"Caçando Siromas"\r\n');
REPLACE INTO `quest_db` VALUES(60168, 0, 1776, 100, 0, 0, 0, 0, '"Caçando Siromas"\r\n');
REPLACE INTO `quest_db` VALUES(60169, 0, 1776, 150, 0, 0, 0, 0, '"Caçando Siroma"\r\n');
REPLACE INTO `quest_db` VALUES(60170, 0, 1777, 50, 0, 0, 0, 0, '"Caçando Titãs de Gelo"\r\n');
REPLACE INTO `quest_db` VALUES(60171, 0, 1777, 100, 0, 0, 0, 0, '"Caçando Titãs de Gelo"\r\n');
REPLACE INTO `quest_db` VALUES(60172, 0, 1777, 150, 0, 0, 0, 0, '"Caçando Titãs de Gelo"\r\n');
REPLACE INTO `quest_db` VALUES(60173, 0, 1506, 50, 0, 0, 0, 0, '"Caçando Mascarados"\r\n');
REPLACE INTO `quest_db` VALUES(60174, 0, 1506, 100, 0, 0, 0, 0, '"Caçando Mascarados"\r\n');
REPLACE INTO `quest_db` VALUES(60175, 0, 1506, 150, 0, 0, 0, 0, '"Caçando Mascarados"\r\n');
REPLACE INTO `quest_db` VALUES(60176, 0, 1505, 50, 0, 0, 0, 0, '"Caçando Loli Ruris"\r\n');
REPLACE INTO `quest_db` VALUES(60177, 0, 1505, 100, 0, 0, 0, 0, '"Caçando Loli Ruris"\r\n');
REPLACE INTO `quest_db` VALUES(60178, 0, 1505, 150, 0, 0, 0, 0, '"Caçando Loli Ruris"\r\n');
REPLACE INTO `quest_db` VALUES(60179, 0, 1139, 50, 0, 0, 0, 0, '"Caçando Louva-a-Deus"\r\n');
REPLACE INTO `quest_db` VALUES(60180, 0, 1139, 100, 0, 0, 0, 0, '"Caçando Louva-a-Deus"\r\n');
REPLACE INTO `quest_db` VALUES(60181, 0, 1139, 150, 0, 0, 0, 0, '"Caçando Louva-a-Deus"\r\n');
REPLACE INTO `quest_db` VALUES(60182, 0, 1514, 50, 0, 0, 0, 0, '"Caçando Zhu Po Long"\r\n');
REPLACE INTO `quest_db` VALUES(60183, 0, 1514, 100, 0, 0, 0, 0, '"Caçando Zhu Po Long"\r\n');
REPLACE INTO `quest_db` VALUES(60184, 0, 1514, 150, 0, 0, 0, 0, '"Caçando Zhu Po Long"\r\n');
REPLACE INTO `quest_db` VALUES(60185, 0, 1870, 20, 0, 0, 0, 0, '"Caçando Necromancers"\r\n');
REPLACE INTO `quest_db` VALUES(60186, 0, 1870, 40, 0, 0, 0, 0, '"Caçando Necromancers"\r\n');
REPLACE INTO `quest_db` VALUES(60187, 0, 1870, 60, 0, 0, 0, 0, '"Caçando Necromancers"\r\n');
REPLACE INTO `quest_db` VALUES(60188, 0, 1365, 50, 0, 0, 0, 0, '"Caçando Apocalipse"\r\n');
REPLACE INTO `quest_db` VALUES(60189, 0, 1365, 100, 0, 0, 0, 0, '"Caçando Apocalipse"\r\n');
REPLACE INTO `quest_db` VALUES(60190, 0, 1365, 150, 0, 0, 0, 0, '"Caçando Apocalipse"\r\n');
REPLACE INTO `quest_db` VALUES(60200, 604800, 0, 0, 0, 0, 0, 0, '"Torre sem Fim - Efeito"\r\n');
REPLACE INTO `quest_db` VALUES(60201, 14400, 0, 0, 0, 0, 0, 0, '"Torre sem Fim - Limite de Tempo"\r\n');
REPLACE INTO `quest_db` VALUES(60301, 0, 1155, 100, 0, 0, 0, 0, '"Caçando Dragão"\r\n');
REPLACE INTO `quest_db` VALUES(60302, 0, 1155, 200, 0, 0, 0, 0, '"Caçando Dragão"\r\n');
REPLACE INTO `quest_db` VALUES(60303, 0, 1714, 100, 0, 0, 0, 0, '"Caçando Dragão"\r\n');
REPLACE INTO `quest_db` VALUES(60304, 0, 1714, 200, 0, 0, 0, 0, '"Caçando Dragão"\r\n');
REPLACE INTO `quest_db` VALUES(60305, 0, 1717, 100, 0, 0, 0, 0, '"Caçando Dragão"\r\n');
REPLACE INTO `quest_db` VALUES(60306, 0, 1717, 200, 0, 0, 0, 0, '"Caçando Dragão"\r\n');
REPLACE INTO `quest_db` VALUES(60307, 0, 1713, 100, 0, 0, 0, 0, '"Caçando Dragão"\r\n');
REPLACE INTO `quest_db` VALUES(60308, 0, 1713, 200, 0, 0, 0, 0, '"Caçando Dragão"\r\n');
REPLACE INTO `quest_db` VALUES(60309, 0, 1716, 100, 0, 0, 0, 0, '"Caçando Dragão"\r\n');
REPLACE INTO `quest_db` VALUES(60310, 0, 1716, 200, 0, 0, 0, 0, '"Caçando Dragão"\r\n');
REPLACE INTO `quest_db` VALUES(60351, 0, 0, 0, 0, 0, 0, 0, '"Loira do Banheiro"\r\n');
REPLACE INTO `quest_db` VALUES(60352, 0, 0, 0, 0, 0, 0, 0, '"Loira do Banheiro"\r\n');
REPLACE INTO `quest_db` VALUES(60353, 0, 0, 0, 0, 0, 0, 0, '"Loira do Banheiro"\r\n');
REPLACE INTO `quest_db` VALUES(60354, 0, 0, 0, 0, 0, 0, 0, '"Loira do Banheiro"\r\n');
REPLACE INTO `quest_db` VALUES(60355, 0, 0, 0, 0, 0, 0, 0, '"Loira do Banheiro"\r\n');