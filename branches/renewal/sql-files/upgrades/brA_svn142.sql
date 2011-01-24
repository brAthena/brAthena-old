--
-- Table structure for table `skill_reuse`
--

CREATE TABLE IF NOT EXISTS `skill_reuse` (
  `account_id` int(10) unsigned NOT NULL,
  `char_id` int(11) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `tick` int(11) NOT NULL,
  KEY (`account_id`),
  KEY (`char_id`)
) ENGINE=MyISAM;