DELETE FROM `sc_data` WHERE `tick` = '-1';
ALTER TABLE `sc_data` ADD PRIMARY KEY  (`account_id`,`char_id`,`type`);