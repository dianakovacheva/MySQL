USE camp;

SELECT 
    driver_id,
    vehicle_type,
    CONCAT(first_name, ' ', last_name) AS driver_name
FROM
    vehicles
        JOIN
    campers ON campers.id = driver_id;
