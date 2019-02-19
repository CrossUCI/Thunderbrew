ALTER TABLE `account_achievement_criteria_progress` 
   CHANGE `counter` `counter` BIGINT(20) UNSIGNED DEFAULT '0' NOT NULL;
   
ALTER TABLE `character_achievement_criteria_progress` 
   CHANGE `counter` `counter` BIGINT(20) UNSIGNED DEFAULT '0' NOT NULL;
   
ALTER TABLE `guild_achievement_criteria_progress` 
   CHANGE `counter` `counter` BIGINT(20) UNSIGNED DEFAULT '0' NOT NULL;