SELECT 
    c.name, COUNT(*) AS movies_count
FROM
    countries AS c
        JOIN
    movies AS m ON c.id = m.country_id
GROUP BY m.country_id
HAVING movies_count >= 7
ORDER BY c.name DESC;