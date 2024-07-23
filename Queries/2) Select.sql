-- Previously, we learned that SELECT is used every time you want to query data from a database and * means all columns.

-- Suppose we are only interested in two of the columns. We can select individual columns by their names (separated by a comma):

-- SELECT column1, column2 
-- FROM table_name;

-- To make it easier to read, we moved FROM to another line.

-- Line breaks don’t mean anything specific in SQL. We could write this entire query in one line, and it would run just fine.

-- 1. Let’s only select the name and genre columns of the table.
select name, genre
from movies;

-- 2. Now we want to include a third column. Edit your query so that it returns the name, genre, and year columns of the table.
select name, genre, year
from movies;
