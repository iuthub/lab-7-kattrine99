SELECT name FROM movies 
WHERE movies.year = '1995';
SELECT COUNT(actor_id) numberOfactors
FROM roles JOIN movies on roles.movie_id = movies.id
WHERE movies.name = 'Lost in Translation';
SELECT a.first_name, m.name 
FROM actors a ,roles r ,movies m 
WHERE a.id=r.actor_id AND r.movie_id=m.id AND m.name = "Lost in Translation";
SELECT d.first_name, d.last_name , m.name
FROM directors d, movies_directors md , movies m
WHERE d.id = md.director_id AND md.movie_id = m.id AND m.name = "Fight Club";
SELECT COUNT(m.name)  
FROM directors d, movies_directors md , movies m
WHERE d.id = md.director_id AND md.movie_id = m.id AND (d.first_name= "Clint" AND d.last_name = "Eastwood");
SELECT m.name 
FROM directors d, movies_directors md , movies m
WHERE d.id = md.director_id AND md.movie_id = m.id AND (d.first_name= "Clint" AND d.last_name = "Eastwood");
SELECT DISTINCT d.first_name, d.last_name
FROM directors d, movies_directors md , movies m , directors_genres dg
WHERE d.id = md.director_id AND md.movie_id = m.id AND d.id = dg.director_id AND dg.genre ="Horror" AND ( SELECT COUNT(m.name)  
																										  FROM directors d, movies_directors md , movies m
																									      WHERE d.id = md.director_id AND md.movie_id = m.id) >1;
SELECT DISTINCT a.first_name , a.last_name
FROM actors a, roles r, movies m, movies_directors md, directors d
WHERE a.id = r.actor_id AND r.movie_id = m.id AND m.id= md.movie_id AND md.director_id = d.id AND (d.first_name = "Christopher" AND d.last_name = "Nolan")                                                                                                          


