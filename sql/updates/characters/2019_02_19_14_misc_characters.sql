DROP TABLE IF EXISTS `character_charges_cooldown`;
CREATE TABLE `character_charges_cooldown` (
  `guid` int(10) unsigned NOT NULL,
  `category` int(10) unsigned NOT NULL,
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `character_completed_challenges`;
CREATE TABLE `character_completed_challenges`(
    `guid` INT(10) UNSIGNED NOT NULL,
    `map_id` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `best_time` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `last_time` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `best_medal` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
    `best_medal_date` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    PRIMARY KEY (`guid`, `map_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `group_completed_challenges`;
CREATE TABLE `group_completed_challenges`(
    `map_id` INT(10) UNSIGNED NOT NULL,
    `attempt_id` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `completion_time` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `completion_date` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `medal_earned` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
    `group_members` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
    `group_1_guid` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `group_1_spec` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `group_2_guid` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `group_2_spec` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `group_3_guid` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `group_3_spec` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `group_4_guid` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `group_4_spec` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `group_5_guid` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `group_5_spec` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    PRIMARY KEY (`map_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `guild_completed_challenges`;
CREATE TABLE `guild_completed_challenges`(
    `map_id` INT(10) UNSIGNED NOT NULL,
    `guild_id` INT(10) UNSIGNED NOT NULL,
    `attempt_id` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `completion_time` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `completion_date` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `medal_earned` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
    `guild_members` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
    `guild_1_guid` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `guild_1_spec` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `guild_2_guid` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `guild_2_spec` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `guild_3_guid` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `guild_3_spec` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `guild_4_guid` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `guild_4_spec` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `guild_5_guid` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `guild_5_spec` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    PRIMARY KEY (`map_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `guild_challenges`;
CREATE TABLE `guild_challenges`
(
    `GuildId` INT(10) UNSIGNED NOT NULL,
    `ChallengeType` INT(1) NOT NULL DEFAULT '0',
    `ChallengeCount` INT(1) DEFAULT NULL,
    PRIMARY KEY (`GuildId`,`ChallengeType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DELETE FROM `worldstates` WHERE `entry` = 20007;
INSERT INTO `worldstates` (`entry`, `value`) VALUE (20007, 0);
