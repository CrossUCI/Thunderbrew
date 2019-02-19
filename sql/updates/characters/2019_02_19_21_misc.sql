ALTER TABLE `gm_tickets` ADD COLUMN `response` TEXT AFTER `haveTicket`;
ALTER TABLE `auctionhouse` CHANGE `deposit` `deposit` BIGINT(20) UNSIGNED DEFAULT '0' NOT NULL;