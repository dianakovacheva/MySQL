SELECT 
    CONCAT(UPPER(LEFT(p.last_name, 2)),
            p.country_id) AS flight_code,
    CONCAT(p.first_name, ' ', p.last_name) AS full_name,
    p.country_id
FROM
    passengers AS p
WHERE
    p.id NOT IN (SELECT 
            passenger_id
        FROM
            flights_passengers)
ORDER BY country_id;