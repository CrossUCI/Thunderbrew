CREATE TABLE IF NOT EXISTS `lfb_data` (
    `guid` bigint(20) unsigned NOT NULL DEFAULT '0',
    `state` tinyint(3) unsigned NOT NULL DEFAULT '0',
PRIMARY KEY (`guid`));