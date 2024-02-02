DELIMITER $$

CREATE PROCEDURE usp_raise_salaries(department_name VARCHAR(60))
BEGIN
UPDATE employees AS e
JOIN departments AS d ON e.department_id = d.department_id
SET salary = salary * 1.05
WHERE d.name = department_name;
END $$

DELIMITER ;

DROP PROCEDURE usp_raise_salaries;

SELECT 
    e.first_name, e.salary
FROM
    employees AS e
        JOIN
    departments AS d ON e.department_id = d.department_id
WHERE
    d.name = 'Finance'
ORDER BY e.first_name , e.salary;

CALL usp_raise_salaries("Finance");