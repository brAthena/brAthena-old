-- Rename `level` column to `group_id` in `login` table

ALTER TABLE `login` CHANGE COLUMN `level` `group_id` TINYINT(3) NOT NULL DEFAULT '0';

-- `ExpPer` column removed from `mob_db` and `mob_db2` tables

ALTER TABLE `mob_db` DROP COLUMN `ExpPer`;
ALTER TABLE `mob_db2` DROP COLUMN `ExpPer`;

-- Adds 'D' and 'U' to `type` in `picklog` table

ALTER TABLE `picklog` MODIFY `type` ENUM('M','P','L','T','V','S','N','C','A','R','G','E','B','O','I','X','D','U') NOT NULL DEFAULT 'P';