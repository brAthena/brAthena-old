--
-- Estrutura da tabela `skill_castnodex_db`
--

CREATE TABLE IF NOT EXISTS `skill_castnodex_db` (
  `skill_id` int(11) unsigned NOT NULL DEFAULT '0',
  `cast` smallint(6) unsigned NOT NULL DEFAULT '0',
  `delay` smallint(6) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`skill_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `skill_castnodex_db`
--

INSERT INTO `skill_castnodex_db` (`skill_id`, `cast`, `delay`) VALUES
(136, 0, 2),
(263, 0, 2),
(272, 0, 2),
(273, 0, 2),
(336, 1, 0),
(366, 3, 0),
(370, 1, 0),
(371, 0, 2),
(372, 0, 2),
(394, 0, 2),
(403, 3, 0),
(408, 1, 0),
(409, 1, 0),
(410, 1, 0),
(482, 1, 0),
(462, 1, 0),
(496, 1, 0),
(497, 1, 0),
(498, 1, 0),
(512, 3, 0),
(1014, 1, 0),
(2534, 7, 7),
(2536, 7, 7),
(10010, 3, 0),
(10011, 3, 0),
(10012, 6, 0),
(10013, 7, 0),
(8214, 7, 0),
(8215, 7, 0),
(8217, 7, 0),
(8218, 7, 0),
(8221, 7, 0),
(8222, 7, 0),
(8225, 7, 0),
(8234, 7, 0),
(8235, 7, 0),
(8238, 7, 0),
(8240, 7, 0);
