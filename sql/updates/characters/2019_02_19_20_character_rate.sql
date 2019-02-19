drop table if exists `character_rate`;
create table `character_rate`( 
   `guid` int(10) UNSIGNED NOT NULL DEFAULT '0' , 
   `xpKill` float UNSIGNED NOT NULL DEFAULT '1' , 
   `xpQuest` float UNSIGNED NOT NULL DEFAULT '1' , 
   `repGain` float UNSIGNED NOT NULL DEFAULT '1' , 
   `repLowLvLKill` float UNSIGNED NOT NULL DEFAULT '1' , 
   `repLowLvLQuest` float UNSIGNED NOT NULL DEFAULT '1' , 
   `SkillGainCrafting` int(10) UNSIGNED NOT NULL DEFAULT '1' , 
   `SkillGainGathering` int(10) UNSIGNED NOT NULL DEFAULT '1' , 
   `SkillChanceOrange` int(10) UNSIGNED NOT NULL DEFAULT '1' , 
   `SkillChanceYellow` int(10) UNSIGNED NOT NULL DEFAULT '1' , 
   `SkillChanceGreen` int(10) UNSIGNED NOT NULL DEFAULT '1' , 
   `SkillChanceGrey` int(10) UNSIGNED NOT NULL DEFAULT '1' , 
   PRIMARY KEY (`guid`)
 );