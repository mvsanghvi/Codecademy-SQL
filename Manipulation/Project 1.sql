-- 1. Getting started, take a look at the startups table:
SELECT *
FROM startups;
-- How many columns are there?
-- 2. Calculate the total number of companies in the table.
SELECT count(*)
FROM startups;
-- 3. We want to know the total value of all companies in this table. Calculate this by getting the SUM() of the valuation column.
SELECT SUM(valuation)
FROM startups;
-- 4. What is the highest amount raised by a startup? Return the maximum amount of money raised.
SELECT MAX(raised)
FROM startups;
-- 5. Edit the query so that it returns the maximum amount of money raised, during ‘Seed’ stage
SELECT MAX(raised)
FROM startups
WHERE stage = 'Seed';
-- 6. In what year was the oldest company on the list founded?
SELECT MIN(founded)
FROM startups;
-- 7. Return the average valuation.
SELECT AVG(valuation)
FROM startups;
-- 8. Return the average valuation, in each category.
SELECT category, AVG(valuation)
FROM startups
GROUP BY category;
-- 9. Return the average valuation, in each category. Round the averages to two decimal places.
SELECT category, round(AVG(valuation), 2)
FROM startups
GROUP BY category;
-- 10. Return the average valuation, in each category. Round the averages to two decimal places. 
-- Lastly, order the list from highest averages to lowest.
SELECT category, round(AVG(valuation), 2)
FROM startups
GROUP BY category
order by avg(valuation) DESC;
-- 11. First, return the name of each category with the total number of companies that belong to it.
SELECT category, count(*)
FROM startups
GROUP by category;
-- 12. Next, filter the result to only include categories that have more than three companies in them. What are the most competitive markets?
SELECT category, count(*)
FROM startups
GROUP by category
HAVING count(*)> 3;
13. What is the average size of a startup in each location?
SELECT location, AVG(employees)
FROM startups
GROUP BY location;
14. What is the average size of a startup in each location, with average sizes above 500?
SELECT location, AVG(employees)
FROM startups
GROUP BY location
HAVING AVG(employees)>500;



