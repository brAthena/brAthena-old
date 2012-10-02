--
-- Estrutura da tabela `guild_skill_tree_db`
--

CREATE TABLE IF NOT EXISTS `guild_skill_tree_db` (
  `skill_id` smallint(4) unsigned NOT NULL DEFAULT '0',
  `lvl_max` smallint(4) unsigned NOT NULL DEFAULT '0',
  `skill_req1` smallint(4) unsigned NOT NULL DEFAULT '0',
  `lvl_skill_req1` smallint(4) unsigned NOT NULL DEFAULT '0',
  `skill_req2` smallint(4) unsigned NOT NULL DEFAULT '0',
  `lvl_skill_req2` smallint(4) unsigned NOT NULL DEFAULT '0',
  `skill_req3` smallint(4) unsigned NOT NULL DEFAULT '0',
  `lvl_skill_req3` smallint(4) unsigned NOT NULL DEFAULT '0',
  `skill_req4` smallint(4) unsigned NOT NULL DEFAULT '0',
  `lvl_skill_req4` smallint(4) unsigned NOT NULL DEFAULT '0',
  `skill_req5` smallint(4) unsigned NOT NULL DEFAULT '0',
  `lvl_skill_req5` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`skill_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `guild_skill_tree_db`
--

INSERT INTO `guild_skill_tree_db` (`skill_id`, `lvl_max`, `skill_req1`, `lvl_skill_req1`, `skill_req2`, `lvl_skill_req2`, `skill_req3`, `lvl_skill_req3`, `skill_req4`, `lvl_skill_req4`, `skill_req5`, `lvl_skill_req5`) VALUES
(10000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10001, 1, 10000, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(10002, 1, 10000, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(10003, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10004, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10005, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10006, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10007, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10008, 5, 10007, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(10009, 5, 10006, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(10010, 1, 10000, 1, 10004, 2, 0, 0, 0, 0, 0, 0),
(10011, 3, 10000, 1, 10004, 5, 10010, 1, 0, 0, 0, 0),
(10012, 1, 10011, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(10013, 1, 10000, 1, 10002, 1, 10004, 5, 10010, 1, 10011, 1),
(10014, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
