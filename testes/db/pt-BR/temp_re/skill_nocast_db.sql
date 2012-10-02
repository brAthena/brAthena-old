--
-- Estrutura da tabela `skill_nocast_db`
--

CREATE TABLE IF NOT EXISTS `skill_nocast_db` (
  `skill_id` int(11) unsigned NOT NULL DEFAULT '0',
  `flag` smallint(6) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`skill_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `skill_nocast_db`
--

INSERT INTO `skill_nocast_db` (`skill_id`, `flag`) VALUES
(2422, 1),
(2423, 1),
(2430, 1),
(2455, 1),
(1013, 6),
(26, 14),
(27, 14),
(87, 14),
(150, 14),
(219, 14),
(336, 14),
(361, 14),
(362, 14),
(395, 14),
(409, 14),
(410, 14),
(491, 14),
(530, 14),
(691, 14),
(2284, 14),
(2300, 14),
(488, 3),
(77, 16),
(79, 16),
(421, 64),
(426, 4),
(290, 256),
(12, 512),
(405, 1024),
(674, 1024),
(232, 2048),
(233, 2048),
(2299, 2048),
(2419, 2048),
(2482, 2048);
