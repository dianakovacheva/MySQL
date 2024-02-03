DELIMITER $$

CREATE FUNCTION ufn_get_salary_level(salary DECIMAL(10,4))
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
DECLARE salary_level VARCHAR(20);
IF salary < 30000 THEN SET salary_level = "Low";
ELSEIF salary BETWEEN 30000 AND 50000 THEN SET salary_level = "Average";
ELSE SET salary_level = "High";
END IF;
RETURN salary_level;
END $$

CREATE PROCEDURE usp_get_employees_by_salary_level(salary_level_param VARCHAR(20))
BEGIN
SELECT first_name, last_name FROM employees
WHERE salary_level_param = ufn_get_salary_level(salary)
ORDER BY first_name DESC, last_name DESC;
END $$


DELIMITER ;

CALL usp_get_employees_by_salary_level("low");