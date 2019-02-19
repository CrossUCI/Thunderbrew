alter table `character_aura` 
   change `effect_mask` `effect_mask` int(10) UNSIGNED default '0' NOT NULL, 
   change `recalculate_mask` `recalculate_mask` int(10) UNSIGNED default '0' NOT NULL;