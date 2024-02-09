DELIMITER $$
CREATE PROCEDURE udp_award_movie(movie_title VARCHAR(50))
BEGIN
UPDATE actors as a
JOIN movies_actors AS ma ON ma.actor_id = a.id 
JOIN movies as m ON ma.movie_id = m.id AND m.title = movie_title
SET a.awards = a.awards + 1;
END $$

DELIMITER ;

CALL udp_award_movie('Tea For Two');
