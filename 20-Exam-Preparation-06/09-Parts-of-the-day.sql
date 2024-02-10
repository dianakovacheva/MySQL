SELECT 
    flight_code,
    departure,
    CASE
        WHEN TIME(departure) BETWEEN TIME('05:00') AND TIME('11:59') THEN 'Morning'
        WHEN TIME(departure) BETWEEN TIME('12:00') AND TIME('16:59') THEN 'Afternoon'
        WHEN TIME(departure) BETWEEN TIME('17:00') AND TIME('20:59') THEN 'Evening'
        ELSE 'Night'
    END AS day_part
FROM
    flights
ORDER BY flight_code DESC;