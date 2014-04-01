#2806
ALTER TABLE `charlog` ADD COLUMN `char_id` int(11) unsigned NOT NULL default '0' AFTER `account_id`;
REPLACE INTO `brathena_updates` VALUES('brathena_r2806');