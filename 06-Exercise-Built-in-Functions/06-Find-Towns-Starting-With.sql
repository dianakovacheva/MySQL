USE soft_uni;

SELECT 
    town_id, name
FROM
    towns
WHERE
    name REGEXP '^[MKBE]'
ORDER BY name;