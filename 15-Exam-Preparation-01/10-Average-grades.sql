DELIMITER $$

CREATE FUNCTION udf_average_alumni_grade_by_course_name(course_name VARCHAR(60))
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
 DECLARE average_grades DECIMAL(10,2);
 SET average_grades = (SELECT AVG(sc.grade) FROM students_courses AS sc
JOIN courses AS c ON sc.course_id = c.id
JOIN students AS s ON sc.student_id = s.id
WHERE s.is_graduated IS TRUE AND c.name = course_name
GROUP BY sc.course_id);
RETURN average_grades;
END $$

DELIMITER ;

DROP FUNCTION udf_average_alumni_grade_by_course_name;

SELECT 
    c.name,
    UDF_AVERAGE_ALUMNI_GRADE_BY_COURSE_NAME('Quantum Physics') AS average_alumni_grade
FROM
    courses c
WHERE
    c.name = 'Quantum Physics';