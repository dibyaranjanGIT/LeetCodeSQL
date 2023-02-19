1050. Actors and Directors Who Cooperated At Least Three Times

SELECT actor_id, director_id
FROM (
    SELECT actor_id, director_id, COUNT(*) AS num_collaborations
    FROM ActorDirector
    GROUP BY actor_id, director_id
) AS ad
WHERE num_collaborations >= 3
