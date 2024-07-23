--SQL uses the AVG() function to quickly calculate the average value of a particular column.
--The statement below returns the average number of downloads for an app in our database:

SELECT AVG(downloads)
FROM fake_apps;

--The AVG() function works by taking a column name as an argument and returns the average value for that column.
--1. Calculate the average number of downloads for all the apps in the table.

SELECT AVG(downloads)
FROM fake_apps;

--2. Remove the previous query. Write a new query that calculates the average price for all the apps in the table.

SELECT AVG(price)
FROM fake_apps;