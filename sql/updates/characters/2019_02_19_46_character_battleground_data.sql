alter table `character_battleground_data` 
   add column `deserterTime` int(10) UNSIGNED DEFAULT '0' NOT NULL after `mountSpell`, 
   add column `deserterCount` smallint(5) UNSIGNED DEFAULT '0' NOT NULL after `deserterTime`;