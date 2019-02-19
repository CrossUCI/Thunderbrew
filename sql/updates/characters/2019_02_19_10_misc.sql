ALTER TABLE `account_achievement_criteria_progress` 
   CHANGE `counter` `counter` INT(10) UNSIGNED DEFAULT '0' NOT NULL, 
   CHANGE `date` `date` INT(10) UNSIGNED DEFAULT '0' NOT NULL;
   
ALTER TABLE `character_achievement_criteria_progress` 
   CHANGE `counter` `counter` INT(10) UNSIGNED DEFAULT '0' NOT NULL, 
   CHANGE `date` `date` INT(10) UNSIGNED DEFAULT '0' NOT NULL;
   
ALTER TABLE `guild_achievement_criteria_progress` 
   CHANGE `counter` `counter` INT(10) UNSIGNED DEFAULT '0' NOT NULL, 
   CHANGE `date` `date` INT(10) UNSIGNED DEFAULT '0' NOT NULL;