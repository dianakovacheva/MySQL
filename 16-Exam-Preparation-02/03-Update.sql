SET SQL_SAFE_UPDATES = 0;

UPDATE properties 
SET 
    price = price - 50000
WHERE
    price >= 800000;