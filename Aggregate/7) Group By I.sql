--Oftentimes, we will want to calculate an aggregate for data with certain characteristics.
--For instance, we might want to know the mean IMDb ratings for all movies each year. We could calculate each number by a series of queries with different WHERE statements, like so:

SELECT AVG(imdb_rating)
FROM movies
WHERE year = 1999;

SELECT AVG(imdb_rating)
FROM movies
WHERE year = 2000;

SELECT AVG(imdb_rating)
FROM movies
WHERE year = 2001;

--and so on. Luckily, there’s a better way! 
--We can use GROUP BY to do this in a single step:

SELECT year,
   AVG(imdb_rating)
FROM movies
GROUP BY year
ORDER BY year;

--GROUP BY is a clause in SQL that is used with aggregate functions. It is used in collaboration with the SELECT statement to arrange identical data into groups.
--The GROUP BY statement comes after any WHERE statements, but before ORDER BY or LIMIT.

--1. In the code editor, type: Here, our aggregate function is COUNT() and we arranged price into groups. What do you expect the result to be?

SELECT price, COUNT(*) 
FROM fake_apps
GROUP BY price;

--2. In the previous query, add a WHERE clause to count the total number of apps that have been downloaded more than 20,000 times, at each price.

SELECT price, COUNT(*) 
FROM fake_apps
Where downloads > 20000
Group by price;

--3. Remove the previous query. Write a new query that calculates the total number of downloads for each category. Select category and SUM(downloads).

SELECT category, sum(downloads) 
FROM fake_apps
group by category;

