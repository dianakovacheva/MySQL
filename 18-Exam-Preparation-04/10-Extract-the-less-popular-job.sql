SELECT tc.job_during_journey AS job_name FROM travel_cards AS tc
JOIN journeys AS j ON tc.journey_id = j.id
GROUP BY job_name, tc.colonist_id
LIMIT 1;