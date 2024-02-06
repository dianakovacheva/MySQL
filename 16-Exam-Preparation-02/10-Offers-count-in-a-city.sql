DELIMITER $$

CREATE FUNCTION udf_offers_from_city_name (cityName VARCHAR(50))
RETURNS INT
DETERMINISTIC
BEGIN
DECLARE offers_count INT;
SET offers_count = (SELECT COUNT(*) AS offers_count FROM property_offers AS po
JOIN properties AS p ON po.property_id = p.id
JOIN cities AS c ON p.city_id = c.id
GROUP BY c.name
HAVING c.name = cityName);
RETURN offers_count;
END $$

DELIMITER ;

SELECT UDF_OFFERS_FROM_CITY_NAME('Amsterdam') AS 'offers_count';