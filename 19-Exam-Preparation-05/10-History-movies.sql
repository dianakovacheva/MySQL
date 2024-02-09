DELIMITER $$

CREATE FUNCTION udf_actor_history_movies_count(full_name VARCHAR(50)) 
RETURNS INT
DETERMINISTIC
BEGIN
DECLARE history_movies INT;
SET history_movies = (
SELECT COUNT(gm.movie_id) AS history_movies FROM genres_movies AS gm
JOIN genres AS g ON gm.genre_id = g.id
JOIN movies_actors AS ma ON gm.movie_id = ma.movie_id
JOIN actors AS a ON ma.actor_id = a.id
WHERE g.name = "history" AND CONCAT(a.first_name, " ", a.last_name) = full_name
GROUP BY g.name
);
RETURN history_movies;
END $$

DELIMITER ;

SELECT UDF_ACTOR_HISTORY_MOVIES_COUNT('Stephan Lundberg') AS 'history_movies';

SELECT UDF_ACTOR_HISTORY_MOVIES_COUNT('Jared Di Batista') AS 'history_movies';