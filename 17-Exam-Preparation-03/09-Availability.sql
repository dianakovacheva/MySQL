SELECT 
    t.id AS table_id,
    t.capacity,
    COUNT(o.id) AS count_clients,
    CASE
        WHEN t.capacity > COUNT(o.id) THEN 'Free seats'
        WHEN t.capacity = COUNT(o.id) THEN 'Full'
        ELSE 'Extra seats'
    END AS availability
FROM
    tables AS t
        JOIN
    orders AS o ON t.id = o.table_id
        JOIN
    orders_clients AS oc ON o.id = oc.order_id
WHERE
    t.floor = 1
GROUP BY o.table_id
ORDER BY t.id DESC