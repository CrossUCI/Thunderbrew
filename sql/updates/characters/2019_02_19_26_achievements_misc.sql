DROP TABLE IF EXISTS `character_achievement_criteria_progress_v2`;
CREATE TABLE `character_achievement_criteria_progress_v2` (
  `guid` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `criteria` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
  `counter` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
  `date` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`criteria`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `account_achievement_criteria_progress_v2`;
CREATE TABLE `account_achievement_criteria_progress_v2` (
  `account` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `criteria` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
  `counter` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
  `date` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`account`,`criteria`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `guild_achievement_criteria_progress_v2`;
CREATE TABLE `guild_achievement_criteria_progress_v2` (
  `guildid` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `criteria` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
  `counter` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
  `date` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `completedGuid` INT(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`,`criteria`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;
