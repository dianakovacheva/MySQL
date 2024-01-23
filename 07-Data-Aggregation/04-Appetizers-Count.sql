USE restaurant;

SELECT 
    COUNT(category_id) AS 'Appetizers Count'
FROM
    products
WHERE
    category_id = 2 AND price > 8;