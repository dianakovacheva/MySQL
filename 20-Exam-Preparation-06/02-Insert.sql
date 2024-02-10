INSERT INTO airplanes (model, passengers_capacity, tank_capacity, cost)
SELECT
CONCAT(REVERSE(first_name), "797"),
SUM(LENGTH(last_name) * 17),
SUM(id * 790),
SUM(LENGTH(first_name) * 50.6)
FROM passengers
WHERE id <= 5
GROUP BY id;