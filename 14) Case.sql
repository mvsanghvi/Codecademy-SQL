A CASE statement allows us to create different outputs (usually in the SELECT statement). It is SQL’s way of handling if-then logic.
Suppose we want to condense the ratings in movies to three levels:
    1. If the rating is above 8, then it is Fantastic.
    2. If the rating is above 6, then it is Poorly Received.
    3. Else, Avoid at All Costs.
        SELECT name,
        CASE
        WHEN imdb_rating > 8 THEN 'Fantastic'
        WHEN imdb_rating > 6 THEN 'Poorly Received'
        ELSE 'Avoid at All Costs'
        END
        FROM movies;
-- *Each WHEN tests a condition and the following THEN gives us the string if the condition is true.
-- *The ELSE gives us the string if all the above conditions are false.
-- *The CASE statement must end with END.
-- In the result, you have to scroll right because the column name is very long. To shorten it, we can rename the column to ‘Review’ using AS:
--     SELECT name,
--     CASE
--     WHEN imdb_rating > 8 THEN 'Fantastic'
--     WHEN imdb_rating > 6 THEN 'Poorly Received'
--     ELSE 'Avoid at All Costs'
--     END AS 'Review'
--     FROM movies;
-- 1. Select the name column and use a CASE statement to create the second column that is:
-- *‘Chill’ if genre = 'romance'
-- *‘Chill’ if genre = 'comedy'
-- *‘Intense’ in all other cases
-- Optional: Rename the whole CASE statement to ‘Mood’ using AS. Give it your best shot! Check hint for the answer.
select name,
  CASE
    When genre= 'romance' then 'Chill'
    When genre= 'comedy' then 'Chill'
    Else 'Intense'
  End as 'Mood'
from movies;