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

