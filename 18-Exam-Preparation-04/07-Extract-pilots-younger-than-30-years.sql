SELECT 
    s.name, s.manufacturer
FROM
    spaceships AS s
        JOIN
    journeys AS j ON s.id = j.spaceship_id
        JOIN
    travel_cards AS tc ON j.id = tc.journey_id
        JOIN
    colonists AS c ON tc.colonist_id = c.id
WHERE
    c.birth_date > DATE_SUB('2019-01-01', INTERVAL 30 YEAR) AND tc.job_during_journey = "Pilot"
GROUP BY s.name, s.manufacturer
ORDER BY s.name;