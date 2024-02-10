DELIMITER $$

CREATE FUNCTION udf_count_flights_from_country(country VARCHAR(50))
RETURNS INT
DETERMINISTIC
BEGIN
DECLARE flights_count INT;
SET flights_count = (
SELECT COUNT(*) FROM flights AS f
JOIN countries AS c ON f.departure_country = c.id
WHERE c.name = country);
RETURN flights_count;
END $$

DELIMITER ;

SELECT UDF_COUNT_FLIGHTS_FROM_COUNTRY('Brazil') AS 'flights_count';

SELECT UDF_COUNT_FLIGHTS_FROM_COUNTRY('Philippines') AS 'flights_count';