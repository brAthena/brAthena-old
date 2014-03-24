#2026
ALTER TABLE  `char` ADD  `char_opt` INT( 11 ) UNSIGNED NOT NULL DEFAULT '0';
UPDATE `skill` SET `flag` = 0 WHERE `flag` = 4 AND `id` != 2535 AND `id` != 681;
