-- So far, we’ve focused on matching rows that have some information in common.
-- Sometimes, we just want to combine all rows of one table with all rows of another table.
-- For instance, if we had a table of shirts and a table of pants, we might want to know all the possible combinations to create different outfits.
-- Our code might look like this:

--         SELECT shirts.shirt_color,
--         pants.pants_color
--         FROM shirts
--         CROSS JOIN pants;

--             The first two lines select the columns shirt_color and pants_color.
--             The third line pulls data from the table shirts.
--             The fourth line performs a CROSS JOIN with pants.

-- Notice that cross joins don’t require an ON statement. You’re not really joining on any columns!
-- If we have 3 different shirts (white, grey, and olive) and 2 different pants (light denim and black), the results might look like this:
-- shirt_color 	pants_color
-- white 	light denim
-- white 	black
-- grey 	light denim
-- grey 	black
-- olive 	light denim
-- olive 	black

-- 3 shirts × 2 pants = 6 combinations!
-- This clothing example is fun, but it’s not very practically useful.
-- A more common usage of CROSS JOIN is when we need to compare each row of a table to a list of values.
-- Let’s return to our newspaper subscriptions. This table contains two columns that we haven’t discussed yet:

--     start_month: the first month where the customer subscribed to the print newspaper (i.e., 2 for February)
--     end_month: the final month where the customer subscribed to the print newspaper
-- Suppose we wanted to know how many users were subscribed during each month of the year. For each month (1, 2, 3) we would need to know if a user was subscribed. Follow the steps below to see how we can use a CROSS JOIN to solve this problem.
-- 1. Eventually, we’ll use a cross join to help us, but first, let’s try a simpler problem. Let’s start by counting the number of customers who were subscribed to the newspaper during March.
-- Use COUNT(*) to count the number of rows and a WHERE clause to restrict to two conditions:
--         start_month <= 3
--         end_month >= 3
select count(*)
from newspaper
where start_month <= 3 AND end_month >=3;
-- 2. Don’t remove the previous query. The previous query lets us investigate one month at a time. 
-- In order to check across all months, we’re going to need to use a cross join.
-- Our database contains another table called months which contains the numbers between 1 and 12.
-- Select all columns from the cross join of newspaper and months.
select count(*)
from newspaper
where start_month <= 3 AND end_month >=3;

select *
from newspaper
CROSS JOIN months;
-- 3. Don’t remove your previous queries. Create a third query where you add a WHERE statement to your cross join to restrict to two conditions:

--     start_month <= month
--     end_month >= month
-- This will select all months where a user was subscribed.
select count(*)
from newspaper
where start_month <= 3 AND end_month >=3;

select *
from newspaper
CROSS JOIN months;

select *
from newspaper
CROSS JOIN months
where start_month <= month AND end_month >=month;
-- 4. Don’t remove your previous queries. Create a final query where you aggregate over each month to count the number of subscribers.
-- Fill in the blanks in the following query:
--     SELECT month,
--     COUNT(*)
--     FROM ________
--     CROSS JOIN ________
--     WHERE ________ AND ________
--     GROUP BY ________;
select count(*)
from newspaper
where start_month <= 3 AND end_month >=3;

select *
from newspaper
CROSS JOIN months;

select *
from newspaper
CROSS JOIN months
where start_month <= month AND end_month >=month;

SELECT month,
  COUNT(*)
FROM newspaper
CROSS JOIN months
WHERE start_month <= month AND end_month >=month
GROUP BY month;