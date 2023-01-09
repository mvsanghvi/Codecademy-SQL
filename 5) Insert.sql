-- The INSERT statement inserts a new row into a table.
-- We can use the INSERT statement when you want to add new records. The statement below enters a record for Justin Bieber into the celebs table.
-- INSERT INTO celebs (id, name, age) 
-- VALUES (1, 'Justin Bieber', 22);
--     -INSERT INTO is a clause that adds the specified row or rows.
--     -celebs is the table the row is added to.
--     -(id, name, age) is a parameter identifying the columns that data will be inserted into.
--     -VALUES is a clause that indicates the data being inserted.
--     -(1, 'Justin Bieber', 22) is a parameter identifying the values being inserted.
--         -1: an integer that will be added to id column
--         -'Justin Bieber': text that will be added to name column
--         -22: an integer that will be added to age column

insert into celebs (id, name, age)
values (1, 'Justin Bieber', 22);

insert into celebs (id, name, age)
values (2, 'Beyonce Knowles', 33);

insert into celebs (id, name, age)
values (3, 'Jeremy Lin', 26);

insert into celebs (id, name, age)
values (4, 'Taylor Swift', 26);

-- As a shortcut:
-- instead of inserting each row in a separate INSERT statement, you can actually insert multiple rows in a single statement.

-- To do this, you can list the values for each row separated by commas, following the VALUES clause of the statement.

-- Here is how it would look:

INSERT INTO table (col1, col2, col3)
VALUES
(row1_val1, row1_val2, row1_val3),
(row2_val1, row2_val2, row2_val3),
(row3_val1, row3_val2, row3_val3);
