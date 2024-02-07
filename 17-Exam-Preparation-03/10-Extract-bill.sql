DELIMITER $$

CREATE FUNCTION udf_client_bill(full_name VARCHAR(50))
RETURNS DECIMAL(19,2)
DETERMINISTIC
BEGIN
DECLARE bill DECIMAL(19,2);
SET bill =  (
SELECT SUM(p.price) FROM clients AS c
JOIN orders_clients AS oc ON  c.id = oc.client_id
JOIN orders_products AS op ON oc.order_id = op.order_id
JOIN products AS p ON op.product_id = p.id
WHERE CONCAT(c.first_name, " ", c.last_name) = full_name
GROUP BY c.id);
RETURN bill;
END $$

DELIMITER ;

DROP FUNCTION udf_client_bill;

SELECT c.first_name,c.last_name, udf_client_bill('Silvio Blyth') as 'bill' FROM clients c
WHERE c.first_name = 'Silvio' AND c.last_name= 'Blyth';
