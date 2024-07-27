-- Sometimes we just want to stack one dataset on top of the other. Well, the UNION operator allows us to do that. 
-- Suppose we have two tables and they have the same columns.

-- table1:
-- pokemon 	type
-- Bulbasaur 	Grass
-- Charmander 	Fire
-- Squirtle 	Water

-- table2:
-- pokemon 	type
-- Snorlax 	Normal

-- If we combine these two with UNION:

--     SELECT *
--     FROM table1
--     UNION
--     SELECT *
--     FROM table2;

-- The result would be:
-- pokemon 	type
-- Bulbasaur 	Grass
-- Charmander 	Fire
-- Squirtle 	Water
-- Snorlax 	Normal

-- SQL has strict rules for appending data:
--     Tables must have the same number of columns.
--     The columns must have the same data types in the same order as the first table.

-- 1. Let’s return to our newspaper and online subscriptions. We’d like to create one big table with both sets of data. 
-- Use UNION to stack the newspaper table on top of the online table.
SELECT *
FROM newspaper
UNION
SELECT *
FROM online;