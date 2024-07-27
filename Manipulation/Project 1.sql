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


