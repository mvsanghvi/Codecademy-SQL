-- By this point of the lesson, you might have noticed that there are a few missing values in the movies table. More often than not, the data you encounter will have missing values.
-- Unknown values are indicated by NULL. It is not possible to test for NULL values with comparison operators, such as = and !=.
-- Instead, we will have to use these operators:
-- -IS NULL
-- -IS NOT NULL

-- To filter for all movies with an IMDb rating:
    -- SELECT name
    -- FROM movies 
    -- WHERE imdb_rating IS NOT NULL;
-- 1. Now let’s do the opposite. Write a query to find all the movies without an IMDb rating. Select only the name column!
select name
from movies
where imdb_rating IS NULL;