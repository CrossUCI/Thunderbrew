CREATE TABLE `character_quest_currency` (
  `CharacterGuid` int(10) unsigned NOT NULL,
  `CurrencyId` int(10) unsigned NOT NULL,
  `CurrentCount` int(10) unsigned DEFAULT '0',
  `MaxCount` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`CharacterGuid`,`CurrencyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
