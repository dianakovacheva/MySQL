SET SQL_SAFE_UPDATES = 0;

DELETE FROM countries 
WHERE
    id NOT IN (SELECT 
        country_id
    FROM
        movies);