-- We’ve learned how to write queries to retrieve information from the database. Now, we are going to learn how to perform calculations using SQL. Calculations performed on multiple rows of a table are called aggregates.
-- In this lesson, we have given you a table named fake_apps which is made up of fake mobile applications data. Here is a quick preview of some important aggregates that we will cover in the next five exercises:
-- 1. COUNT(): count the number of rows
-- 2. SUM(): the sum of the values in a column
-- 3. MAX()/MIN(): the largest/smallest value
-- 4. AVG(): the average of the values in a column
-- 5. ROUND(): round the values in the column
-- Before getting started, take a look at the data in the fake_apps table:
select * from fake_apps
