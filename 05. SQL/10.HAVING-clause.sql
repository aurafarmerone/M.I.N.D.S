SELECT  imdb_rating, count(movie_id) FROM movies
group by imdb_rating
HAVING imdb_rating > 9;