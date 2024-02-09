INSERT INTO actors (first_name, last_name, birthdate, height, awards, country_id)
SELECT
REVERSE(first_name) AS first_name,
REVERSE(last_name) AS last_name,
DATE_SUB(birthdate, INTERVAL 2 DAY) AS birthdate,
SUM(height + 10) AS height,
country_id,
(SELECT id FROM countries WHERE name = "Armenia") AS country_id
FROM actors
WHERE id <=10
GROUP BY id;
