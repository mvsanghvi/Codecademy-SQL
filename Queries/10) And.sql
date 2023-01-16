-- Sometimes we want to combine multiple conditions in a WHERE clause to make the result set more specific and useful. One way of doing this is to use the AND operator. Here, we use the AND operator to only return 90’s romance movies.
--     SELECT * 
--     FROM movies
--     WHERE year BETWEEN 1990 AND 1999
--         AND genre = 'romance';
-- *year BETWEEN 1990 AND 1999 is the 1st condition.
-- *genre = 'romance' is the 2nd condition.
-- *AND combines the two conditions.
-- With AND, both conditions must be true for the row to be included in the result.
-- 1. In the previous exercise, we retrieved every movie released in the 1970’s. Now, let’s retrieve every movie released in the 70’s, that’s also well received. In the code editor, type:
SELECT *
FROM movies
WHERE year BETWEEN 1970 AND 1979
  AND imdb_rating > 8;
-- 2. Suppose we have a picky friend who only wants to watch old horror films. Using AND, write a new query that selects all movies made prior to 1985 that are also in the horror genre.
SELECT *
FROM movies
WHERE year <1985
  AND genre= "horror";