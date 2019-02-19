DROP PROCEDURE IF EXISTS `check_pilgrim_achievement`;
delimiter //
CREATE PROCEDURE `check_pilgrim_achievement`()
    LANGUAGE SQL
    NOT DETERMINISTIC
    CONTAINS SQL
    SQL SECURITY DEFINER
    COMMENT 'Delete the turkinator from achievements.'
BEGIN
  DECLARE char_guid INT default 0;
  DECLARE char_account INT default 0;
  DECLARE hasAchieved INT default 0;
  DECLARE done INT DEFAULT 0;
  DECLARE cur CURSOR FOR SELECT `guid`, `account` FROM `characters`;
  DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done = 1;
  
  OPEN cur;
  
  WHILE done = 0 DO
  
    FETCH cur INTO char_guid, char_account;
    
    SELECT count(*) INTO hasAchieved FROM `account_achievement` 
	 WHERE `account`=char_account AND `achievement`=3597;
	 
    IF hasAchieved > 0 THEN
    
        DELETE FROM `character_achievement_progress` 
		  WHERE `guid`=char_guid AND `criteria`=11264;
		  
		  DELETE FROM `account_achievement_progress` 
		  WHERE `account`=char_account AND `criteria`=11264;
		  
		  DELETE FROM `character_achievement`
		  WHERE `guid`=char_guid AND `achievement`=3578;
		  
		  DELETE FROM `account_achievement`
		  WHERE `account`=char_account AND `achievement`=3578;
    
    END IF;
  
  END WHILE;
  
END

//
delimiter ;

CALL `check_pilgrim_achievement`;

DROP PROCEDURE IF EXISTS `check_pilgrim_achievement`;