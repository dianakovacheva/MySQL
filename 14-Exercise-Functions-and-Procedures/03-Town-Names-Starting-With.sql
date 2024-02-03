DELIMITER $$

CREATE PROCEDURE usp_get_towns_starting_with(string_param VARCHAR(60))
BEGIN
SET @pattern = CONCAT("^", string_param);
SELECT name AS town_name FROM towns
WHERE name REGEXP @pattern
ORDER BY town_name ASC;
END $$

DELIMITER ;

CALL usp_get_towns_starting_with("b");

DELIMITER $$

CREATE PROCEDURE usp_get_towns_starting_with(string_param VARCHAR(60))
BEGIN
SELECT name AS town_name FROM towns
WHERE name LIKE CONCAT(string_param, '%')
ORDER BY town_name ASC;
END $$

DELIMITER ;