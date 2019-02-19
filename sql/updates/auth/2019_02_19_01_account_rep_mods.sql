DROP TABLE IF EXISTS `account_rep_mods`;
CREATE TABLE `account_rep_mods`(
   `id` INT(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Account id',
   `reputationId` INT(10) UNSIGNED NOT NULL DEFAULT '0' ,
   `modifier` INT(10) NOT NULL DEFAULT '0' ,
   PRIMARY KEY (`id`, `reputationId`)
 );
