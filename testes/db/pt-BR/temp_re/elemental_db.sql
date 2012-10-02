--
-- Estrutura da tabela `elemental_db`
--

CREATE TABLE IF NOT EXISTS `elemental_db` (
  `elemental_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ele_sprite_name` text NOT NULL,
  `ele_name` text NOT NULL,
  `lvl` smallint(11) NOT NULL DEFAULT '0',
  `hp` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sp` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `range1` int(11) unsigned NOT NULL DEFAULT '0',
  `atk1` int(11) unsigned NOT NULL DEFAULT '0',
  `atk2` int(11) unsigned NOT NULL DEFAULT '0',
  `def` smallint(6) unsigned NOT NULL DEFAULT '0',
  `mdef` smallint(6) unsigned NOT NULL DEFAULT '0',
  `str` smallint(4) unsigned NOT NULL DEFAULT '0',
  `agi` smallint(4) unsigned NOT NULL DEFAULT '0',
  `vit` smallint(4) unsigned NOT NULL DEFAULT '0',
  `int` smallint(4) unsigned NOT NULL DEFAULT '0',
  `dex` smallint(4) unsigned NOT NULL DEFAULT '0',
  `luk` smallint(4) unsigned NOT NULL DEFAULT '0',
  `range2` int(11) unsigned NOT NULL DEFAULT '0',
  `range3` int(11) unsigned NOT NULL DEFAULT '0',
  `scale` int(11) unsigned NOT NULL DEFAULT '0',
  `race` smallint(4) unsigned NOT NULL DEFAULT '0',
  `element` smallint(4) unsigned NOT NULL DEFAULT '0',
  `speed` smallint(4) unsigned NOT NULL DEFAULT '0',
  `adelay` smallint(4) unsigned NOT NULL DEFAULT '0',
  `amotion` smallint(4) unsigned NOT NULL DEFAULT '0',
  `dmotion` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`elemental_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `elemental_db`
--

INSERT INTO `elemental_db` (`elemental_id`, `ele_sprite_name`, `ele_name`, `lvl`, `hp`, `sp`, `range1`, `atk1`, `atk2`, `def`, `mdef`, `str`, `agi`, `vit`, `int`, `dex`, `luk`, `range2`, `range3`, `scale`, `race`, `element`, `speed`, `adelay`, `amotion`, `dmotion`) VALUES
(2114, 'EL_AGNI_S', 'Agni', 100, 5000, 1, 1, 100, 100, 10, 10, 1, 1, 1, 1, 1, 1, 5, 12, 0, 0, 83, 200, 504, 1020, 360),
(2115, 'EL_AGNI_M', 'Agni', 100, 7500, 1, 1, 250, 250, 25, 25, 1, 1, 1, 1, 1, 1, 5, 12, 1, 0, 83, 200, 504, 1020, 360),
(2116, 'EL_AGNI_L', 'Agni', 100, 10000, 1, 1, 500, 500, 50, 50, 1, 1, 1, 1, 1, 1, 5, 12, 2, 0, 83, 200, 504, 1020, 360),
(2117, 'EL_AQUA_S', 'Aqua', 100, 5000, 1, 1, 100, 100, 10, 10, 1, 1, 1, 1, 1, 1, 5, 12, 0, 0, 81, 200, 504, 1020, 360),
(2118, 'EL_AQUA_M', 'Aqua', 100, 7500, 1, 1, 250, 250, 25, 25, 1, 1, 1, 1, 1, 1, 5, 12, 1, 0, 81, 200, 504, 1020, 360),
(2119, 'EL_AQUA_L', 'Aqua', 100, 10000, 1, 1, 500, 500, 50, 50, 1, 1, 1, 1, 1, 1, 5, 12, 2, 0, 81, 200, 504, 1020, 360),
(2120, 'EL_VENTUS_S', 'Ventus', 100, 5000, 1, 4, 100, 100, 10, 10, 1, 1, 1, 1, 1, 1, 5, 12, 0, 0, 84, 200, 504, 1020, 360),
(2121, 'EL_VENTUS_M', 'Ventus', 100, 7500, 1, 4, 250, 250, 25, 25, 1, 1, 1, 1, 1, 1, 5, 12, 1, 0, 84, 200, 504, 1020, 360),
(2122, 'EL_VENTUS_L', 'Ventus', 100, 10000, 1, 4, 500, 500, 50, 50, 1, 1, 1, 1, 1, 1, 5, 12, 2, 0, 84, 200, 504, 1020, 360),
(2123, 'EL_TERA_S', 'Tera', 100, 5000, 1, 1, 100, 100, 10, 10, 1, 1, 1, 1, 1, 1, 5, 12, 0, 0, 82, 200, 504, 1020, 360),
(2124, 'EL_TERA_M', 'Tera', 100, 7500, 1, 1, 250, 250, 25, 25, 1, 1, 1, 1, 1, 1, 5, 12, 1, 0, 82, 200, 504, 1020, 360),
(2125, 'EL_TERA_L', 'Tera', 100, 10000, 1, 1, 500, 500, 50, 50, 1, 1, 1, 1, 1, 1, 5, 12, 2, 0, 82, 200, 504, 1020, 360);
