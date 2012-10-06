--
-- Estrutura da tabela `mob_skill_db`
--

CREATE TABLE IF NOT EXISTS `mob_skill_db` (
  `MOB_ID` smallint(6) NOT NULL,
  `INFO` text NOT NULL,
  `STATE` text NOT NULL,
  `SKILL_ID` smallint(6) NOT NULL,
  `SKILL_LV` tinyint(4) NOT NULL,
  `RATE` smallint(4) NOT NULL,
  `CASTTIME` mediumint(9) NOT NULL,
  `DELAY` int(9) NOT NULL,
  `CANCELABLE` text NOT NULL,
  `TARGET` text NOT NULL,
  `CONDITION` text NOT NULL,
  `CONDITION_VALUE` text,
  `VAL1` mediumint(9) DEFAULT NULL,
  `VAL2` mediumint(9) DEFAULT NULL,
  `VAL3` mediumint(9) DEFAULT NULL,
  `VAL4` mediumint(9) DEFAULT NULL,
  `VAL5` mediumint(9) DEFAULT NULL,
  `EMOTION` text,
  `CHAT` text
) ENGINE=MyISAM;