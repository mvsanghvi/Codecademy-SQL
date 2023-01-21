-- The fastest way to calculate how many rows are in a table is to use the COUNT() function.
-- COUNT() is a function that takes the name of a column as an argument and counts the number of non-empty values in that column.
-- Here, we want to count every row, so we pass * as an argument inside the parenthesis.
SELECT COUNT(*)
FROM table_name;
-- 2. Add a WHERE clause in the previous query to count how many free apps are in the table.
select count(*)
from fake_apps
where price = 0;