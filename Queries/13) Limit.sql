-- We’ve been working with a fairly small table (fewer than 250 rows), but most SQL tables contain hundreds of thousands of records. In those situations, it becomes important to cap the number of rows in the result. 
-- For instance, imagine that we just want to see a few examples of records.
--
--     SELECT *
--     FROM movies
--     LIMIT 10;
--
-- LIMIT is a clause that lets you specify the maximum number of rows the result set will have. This saves space on our screen and makes our queries run faster. Here, we specify that the result set can’t have more than 10 rows.
-- LIMIT always goes at the very end of the query. Also, it is not supported in all SQL databases.
-- 1. Combining your knowledge of LIMIT and ORDER BY, write a query that returns the top 3 highest rated movies. Select all the columns
select *
from movies
order by imdb_rating DESC
limit 3;