--By default, SQL tries to be as precise as possible without rounding. We can make the result table easier to read using the ROUND() function.
--ROUND() function takes two arguments inside the parenthesis:
--    a column name
--    an integer
--It rounds the values in the column to the number of decimal places specified by the integer.

--SELECT ROUND(price, 0)
--FROM fake_apps;

--Here, we pass the column price and integer 0 as arguments. SQL rounds the values in the column to 0 decimal places in the output.
--1. Let’s return the name column and a rounded price column.

    SELECT name, ROUND(price, 0)
    FROM fake_apps;
--2. Remove the previous query. In the last exercise, we were able to get the average price of an app ($2.02365) using this query:
--SELECT AVG(price)
--FROM fake_apps;
--Now, let’s edit this query so that it rounds this result to 2 decimal places. This is a tricky one!
SELECT ROUND (AVG(price), 2)
FROM fake_apps;
