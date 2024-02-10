SET SQL_SAFE_UPDATES = 0;

DELETE FROM flights 
WHERE
    id NOT IN (SELECT 
        flight_id
    FROM
        flights_passengers);