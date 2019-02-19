drop table if exists `battle_pet_item_data`;
create table `battle_pet_item_data`( 
   `itemId` int(10) UNSIGNED NOT NULL DEFAULT '0' , 
   `speciesId` int(10) UNSIGNED NOT NULL DEFAULT '0' , 
   `breedData` int(10) UNSIGNED NOT NULL DEFAULT '0' , 
   `level` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' , 
   PRIMARY KEY (`itemId`)
 );