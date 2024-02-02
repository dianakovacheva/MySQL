DELIMITER $$

CREATE PROCEDURE usp_raise_salary_by_id(id VARCHAR(50))
BEGIN
UPDATE employees SET salary = salary * 1.05
WHERE employee_id = id;
END $$

DELIMITER ;

CALL usp_raise_salary_by_id(17);

SELECT 
    salary, employee_id
FROM
    employees
WHERE
    employee_id = 17;