SELECT 
    AVG(salary) AS min_average_salary
FROM
    employees
WHERE
    department_id IS NOT NULL
GROUP BY department_id
ORDER BY min_average_salary
LIMIT 1;