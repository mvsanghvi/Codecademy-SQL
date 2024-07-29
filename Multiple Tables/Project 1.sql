-- 1. Let’s examine the three tables.
    SELECT * FROM trips;
    SELECT * FROM riders;
    SELECT * FROM cars;
-- What are the column names?
-- 2. What’s the primary key of trips? What’s the primary key of riders? What’s the primary key of cars?
-- 3. Try out a simple cross join between riders and cars. Is the result useful?
-- 4. Suppose we want to create a Trip Log with the trips and its users. 
-- Find the columns to join between trips and riders and combine the two tables using a LEFT JOIN. Let trips be the left table.
SELECT * 
FROM riders
left join trips
  ON trips.rider_id = riders.id;
-- 5. Suppose we want to create a link between the trips and the cars used during those trips. 
-- Find the columns to join on and combine the trips and cars table using an INNER JOIN.
SELECT * 
FROM cars
join trips
  ON trips.car_id = cars.id;
-- 6. The new riders data are in! There are three new users this month. Stack the riders table on top of the new table named riders2.
SELECT *
FROM riders
UNION
SELECT *
FROM riders2;


