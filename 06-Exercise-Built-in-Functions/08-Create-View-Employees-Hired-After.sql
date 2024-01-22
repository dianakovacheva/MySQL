USE soft_uni;

CREATE VIEW v_employees_hired_after_2000 AS
    SELECT 
        first_name, last_name
    FROM
        employees
    WHERE
        YEAR(hire_date) > 2000
    ORDER BY YEAR(hire_date);

SELECT 
    *
FROM
    v_employees_hired_after_2000;