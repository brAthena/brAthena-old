#1974
ALTER TABLE `item_bro` ADD `Quant` TINYTEXT NOT NULL;
UPDATE `item_bro` SET `Quant`='1:1';