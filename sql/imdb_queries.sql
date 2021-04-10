SELECT name FROM movies 
WHERE movies.year = '1995';
SELECT COUNT(actor_id) numberOfactors
FROM roles JOIN movies on roles.movie_id = movies.id
WHERE movies.name = 'Lost in Translation';

