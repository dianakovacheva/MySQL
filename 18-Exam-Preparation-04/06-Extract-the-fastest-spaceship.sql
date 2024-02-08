SELECT 
    s.name AS spaceship_name, sp.name AS spaceport_name
FROM
    spaceships AS s
        JOIN
    journeys AS j ON s.id = j.spaceship_id
        JOIN
    spaceports AS sp ON j.destination_spaceport_id = sp.id
GROUP BY s.name , sp.name
ORDER BY MAX(s.light_speed_rate) DESC
LIMIT 1;