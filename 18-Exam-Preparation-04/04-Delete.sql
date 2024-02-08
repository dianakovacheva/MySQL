DELETE FROM colonists 
WHERE
    id NOT IN (SELECT DISTINCT
        colonist_id
    FROM
        travel_cards);