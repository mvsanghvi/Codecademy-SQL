-- That’s it with WHERE and its operators. Moving on! 
-- It is often useful to list the data in our result set in a particular order. We can sort the results using ORDER BY, either alphabetically or numerically. Sorting the results often makes the data more useful and easier to analyze.
-- For example, if we want to sort everything by the movie’s title from A through Z:
--     SELECT *
--     FROM movies
--     ORDER BY name;
-- *ORDER BY is a clause that indicates you want to sort the result set by a particular column.
-- *name is the specified column.
-- Sometimes we want to sort things in a decreasing order. For example, if we want to select all of the well-received movies, sorted from highest to lowest by their year:
--     SELECT *
--     FROM movies
--     WHERE imdb_rating > 8
--     ORDER BY year DESC;
-- *DESC is a keyword used in ORDER BY to sort the results in descending order (high to low or Z-A).
-- *ASC is a keyword used in ORDER BY to sort the results in ascending order (low to high or A-Z).
-- The column that we ORDER BY doesn’t even have to be one of the columns that we’re displaying. Note: ORDER BY always goes after WHERE (if WHERE is present).
-- 1. Suppose we want to retrieve the name and year columns of all the movies, ordered by their name alphabetically. 
select name, year
from movies
order by name;
-- 2. Write a new query that retrieves the name, year, and imdb_rating columns of all the movies, ordered highest to lowest by their ratings.
select name, year, imdb_rating
from movies
order by imdb_rating DESC;