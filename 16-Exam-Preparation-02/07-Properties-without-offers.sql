SELECT 
    LEFT(address, 6) AS agent_name,
    LENGTH(address) * 5430 AS price
FROM
    properties AS p
        LEFT JOIN
    property_offers AS po ON po.property_id = p.id
WHERE
    po.agent_id IS NULL
ORDER BY agent_name DESC , price DESC;