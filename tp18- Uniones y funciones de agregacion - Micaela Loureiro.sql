-- TP 18 - UNIONES Y FUNCIONES DE AGREGACION - Micaela Loureiro
-- microdesafio 1

select title,genre_id, genres.name  AS name
from series
inner join genres
on series.genre_id = genres.id;

-- microdesafio 2
SELECT title,first_name,last_name
from episodes
inner join actor_episode on episodes.id = episode_id
inner join actors on actor_id = actors.id;

-- microdesafio 3
SELECT title, COALESCE(name, "No tiene genero")
FROM movies
LEFT JOIN genres
 ON genre_id  = genres.id;
 
 -- microdesafio 4
 SELECT title, DATEDIFF(end_date, release_date) AS Duración FROM series;

-- microdesafio 5:
 -- Listar los actores ordenados alfabéticamente cuyo nombre sea mayor a 6 caracteres:
SELECT first_name FROM actors WHERE LENGTH(first_name) > 6 ORDER BY first_name ASC;
-- Debemos mostrar la cantidad total de los episodios guardados en la base de datos:
SELECT COUNT(*) AS "Total" FROM episodes;
-- Para el siguiente desafío nos piden que obtengamos el título de todas las series y el total de temporadas que tiene cada una de ellas:
SELECT series.title, COUNT(seasons.id) AS seasons FROM series INNER JOIN seasons ON serie_id = series.id GROUP BY series.title;
-- Mostrar, por cada género, la cantidad total de películas que posee, siempre que sea mayor o igual a 3:
SELECT genres.name, COUNT(movies.id) AS movies FROM genres INNER JOIN movies ON genre_id = genres.id GROUP BY genres.name HAVING COUNT(movies.id) >= 3;



