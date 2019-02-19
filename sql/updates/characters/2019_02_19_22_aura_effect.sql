alter table `character_aura_effect` 
   add column `data` tinyblob NOT NULL after `amount`;
   
alter table `pet_aura_effect` 
   add column `data` tinyblob NOT NULL after `baseamount`;