DELIMITER $$

CREATE FUNCTION ufn_count_employees_by_town(town_name VARCHAR(60))
RETURNS INT
DETERMINISTIC
BEGIN
DECLARE count INT;
SET @count :=  (SELECT COUNT(*) FROM employees AS e
JOIN addresses AS a ON e.address_id = a.address_id
JOIN towns AS t ON a.town_id = t.town_id
WHERE t.name = town_name);
RETURN @count;
END $$

DELIMITER ;

SELECT UFN_COUNT_EMPLOYEES_BY_TOWN('Sofia');