CREATE TABLE deleted_employees (
    employee_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    middle_name VARCHAR(50),
    job_title VARCHAR(60),
    department_id INT NOT NULL,
    salary DOUBLE
);

CREATE 
    TRIGGER  delete_employee_trigger
 AFTER DELETE ON employees FOR EACH ROW 
    INSERT INTO deleted_employees (first_name , last_name , middle_name , job_title , department_id , salary)
    VALUE (old.first_name , old.last_name , old.middle_name , old.job_title , old.department_id , old.salary);
    
DELETE FROM EMPLOYEES 
WHERE
    employee_id = 293;

SELECT 
    *
FROM
    deleted_employees;