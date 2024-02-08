INSERT INTO travel_cards (card_number, job_during_journey, journey_id)
SELECT
CASE
WHEN DATE(birth_date) > "1980-01-01" THEN CONCAT(YEAR(birth_date), DAY(birth_date), LEFT(ucn, 4))
ELSE CONCAT(YEAR(birth_date), MONTH(birth_date), RIGHT(ucn, 4))
END AS card_number,
CASE 
WHEN id % 2 = 0 THEN "Pilot"
WHEN id % 3 = 0 THEN "Cook"
ELSE "Engineer"
END AS job_during_journey,
LEFT(ucn, 1) AS journey_id
FROM colonists
WHERE id BETWEEN 96 AND 100;