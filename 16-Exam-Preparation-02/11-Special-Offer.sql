DELIMITER $$

CREATE PROCEDURE udp_special_offer (first_name VARCHAR(50))
BEGIN
UPDATE property_offers AS po
JOIN agents AS a on po.agent_id = a.id
SET price = price * 0.90
WHERE a.first_name = first_name;
END $$

DELIMITER ;

DROP PROCEDURE udp_special_offer;

CALL udp_special_offer('Tansy');