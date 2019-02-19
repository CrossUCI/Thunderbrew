DROP TABLE IF EXISTS `character_achievement_criteria_progress`;
CREATE TABLE `character_achievement_criteria_progress`( 
   `guid` INT(10) UNSIGNED NOT NULL DEFAULT '0' , 
   `criteria` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' , 
   `counter` INT(10) NOT NULL DEFAULT '0' , 
   `date` INT(10) NOT NULL DEFAULT '0' , 
   PRIMARY KEY (`guid`, `criteria`)
 );
DROP TABLE IF EXISTS `account_achievement_criteria_progress`;
CREATE TABLE `account_achievement_criteria_progress`( 
   `account` INT(10) UNSIGNED NOT NULL DEFAULT '0' , 
   `criteria` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' , 
   `counter` INT(10) NOT NULL DEFAULT '0' , 
   `date` INT(10) NOT NULL DEFAULT '0' , 
   PRIMARY KEY (`account`, `criteria`)
 );
 
DROP TABLE IF EXISTS `guild_achievement_criteria_progress`;
CREATE TABLE `guild_achievement_criteria_progress`( 
   `guildid` INT(10) UNSIGNED NOT NULL DEFAULT '0' , 
   `criteria` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' , 
   `counter` INT(10) NOT NULL DEFAULT '0' , 
   `date` INT(10) NOT NULL DEFAULT '0' , 
   `completedGuid` INT(10) NOT NULL DEFAULT '0' , 
   PRIMARY KEY (`guildid`, `criteria`)
 );