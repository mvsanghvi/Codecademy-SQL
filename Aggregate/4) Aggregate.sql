--The MAX() and MIN() functions return the highest and lowest values in a column, respectively.
--How many downloads does the most popular app have?

--SELECT MAX(downloads)
--FROM fake_apps;

--The most popular app has 31,090 downloads!
--MAX() takes the name of a column as an argument and returns the largest value in that column. 
--Here, we returned the largest value in the downloads column.
--MIN() works the same way but it does the exact opposite; it returns the smallest value.

--1. What is the least number of times an app has been downloaded?

SELECT MIN(downloads)
FROM fake_apps;

--2. Delete the previous query. Write a new query that returns the price of the most expensive app.

SELECT MAX(Price)
FROM fake_apps;

