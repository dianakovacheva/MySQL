DELIMITER $$

CREATE FUNCTION udf_count_colonists_by_destination_planet (planet_name VARCHAR (30))
RETURNS INT
DETERMINISTIC
BEGIN
DECLARE count INT;
SET count = (
SELECT COUNT(tc.colonist_id) FROM travel_cards AS tc
JOIN journeys AS j ON tc.journey_id = j.id
JOIN spaceports AS s ON j.destination_spaceport_id = s.id
JOIN planets AS p ON s.planet_id = p.id
WHERE p.name = planet_name);
RETURN count;
END $$

DELIMITER ;

SELECT p.name, udf_count_colonists_by_destination_planet("Otroyphus") AS count
FROM planets AS p
WHERE p.name = "Otroyphus";

