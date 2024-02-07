DELIMITER $$

CREATE PROCEDURE udp_happy_hour(type VARCHAR(50))
BEGIN
UPDATE products SET price = price * 0.80
WHERE type = type AND price >= 10;
END $$

DELIMITER ;

CALL udp_happy_hour ('Cognac');