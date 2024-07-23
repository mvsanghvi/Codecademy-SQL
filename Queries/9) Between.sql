-- The BETWEEN operator is used in a WHERE clause to filter the result set within a certain range. It accepts two values that are either numbers, text or dates. For example, this statement filters the result set to only include movies with years from 1990 up to, and including 1999.
--     SELECT *
--     FROM movies
--     WHERE year BETWEEN 1990 AND 1999;

-- When the values are text, BETWEEN filters the result set for within the alphabetical range.cIn this statement, BETWEEN filters the result set to only include movies with names that begin with the letter ‘A’ up to, but not including ones that begin with ‘J’.
--
--     SELECT *
--     FROM movies
--     WHERE name BETWEEN 'A' AND 'J';

-- However, if a movie has a name of simply ‘J’, it would actually match. This is because BETWEEN goes up to the second value — up to ‘J’. So the movie named ‘J’ would be included in the result set but not ‘Jaws’.
-- 1. Using the BETWEEN operator, write a query that selects all information about movies whose name begins with the letters ‘D’, ‘E’, and ‘F’.

select *
from movies
where name between "D" and "G";

-- 2. Using the BETWEEN operator, write a new query that selects all information about movies that were released in the 1970’s.
select *
from movies
where year between 1970 and 1979;