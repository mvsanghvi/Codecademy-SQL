-- 2. Recent studies have found that online forums tend to be dominated by a small percentage of their users (1-9-90 Rule).
-- Is this true of Hacker News? Is a small percentage of Hacker News submitters taking the majority of the points?
-- First, find the total score of all the stories.
SELECT SUM(score)
FROM hacker_news;
-- 3. Next, we need to pinpoint the users who have accumulated a lot of points across their stories.
-- Find the individual users who have gotten combined scores of more than 200, and their combined scores. 
-- GROUP BY and HAVING are needed!
SELECT user, SUM(score)
FROM hacker_news
GROUP BY user
HAVING SUM(score) > 200
ORDER BY 2 DESC;
-- 4. Then, we want to add these users’ scores together and divide by the total to get the percentage.
-- Add their scores together and divide it by the total sum. Like so:

--      SELECT (1.0 + 2.0 + 3.0) / 6.0;

-- So, is Hacker News dominated by these users?
SELECT (517 + 309 + 304 + 282) / 6366.0;
-- 5. Oh no! While we are looking at the power users, some users are rickrolling — tricking readers into clicking on a link to a funny video and claiming that it links to information about coding.
-- The url of the video is: https://www.youtube.com/watch?v=dQw4w9WgXcQ . How many times has each offending user posted this link?
SELECT user,
   COUNT(*)
FROM hacker_news
WHERE url = 'https://www.youtube.com/watch?v=dQw4w9WgXcQ'
GROUP BY user
ORDER BY 2 DESC;
-- 6. Hacker News stories are essentially links that take users to other websites. Which of these sites feed Hacker News the most:
-- GitHub, Medium, or New York Times? First, we want to categorize each story based on their source. We can do this using a CASE statement:

--         SELECT CASE
--         WHEN url LIKE '%github.com%' THEN 'GitHub'
--         -- WHEN statement here
--         -- WHEN statement here
--         -- ELSE statement here
--         END AS 'Source'
--         FROM hacker_news;

-- Fill in the other WHEN statements and the ELSE statement.
SELECT CASE
   WHEN url LIKE '%github.com%' THEN 'GitHub'
   WHEN url LIKE '%medium.com%' THEN 'Medium'
   WHEN url LIKE '%nytimes.com%' THEN 'New York Times'
   ELSE 'Other'
  END AS 'Source'
FROM hacker_news;
-- 7. Next, build on the previous query: Add a column for the number of stories from each URL using COUNT(). 
-- Also, GROUP BY the CASE statement. Remember that you can refer to a column in GROUP BY using a number.
SELECT CASE
   WHEN url LIKE '%github.com%' THEN 'GitHub'
   WHEN url LIKE '%medium.com%' THEN 'Medium'
   WHEN url LIKE '%nytimes.com%' THEN 'New York Times'
   ELSE 'Other'
  END AS 'Source',
  COUNT(*)
FROM hacker_news
GROUP BY 1;
-- 8. Every submitter wants their story to get a high score so that the story makes it to the front page, but…
-- What’s the best time of the day to post a story on Hacker News? Before we get started, let’s run this query and take a look at the timestamp column:

--         SELECT timestamp
--         FROM hacker_news
--         LIMIT 10;

-- Notice that the values are formatted like: 2018-05-08T12:30:00Z
-- If you ignore the T and Z, the format is: YYYY-MM-DD HH:MM:SS
-- 9. SQLite comes with a strftime() function - a very powerful function that allows you to return a formatted date. It takes two arguments:
-- strftime(format, column) Let’s test this function out:

--         SELECT timestamp,
--         strftime('%H', timestamp)
--         FROM hacker_news
--         GROUP BY 1
--         LIMIT 20;

-- What do you think this does? Open the hint if you’d like to learn more.
-- This returns the hour, HH, of the timestamp column! For strftime(__, timestamp):

--     %Y returns the year (YYYY)
--     %m returns the month (01-12)
--     %d returns the day of the month (1-31)
--     %H returns 24-hour clock (00-23)
--     %M returns the minute (00-59)
--     %S returns the seconds (00-59)

-- if timestamp format is YYYY-MM-DD HH:MM:SS. Read more on the SQLite documentation.
-- 10. Okay, now we understand how strftime() works. Let’s write a query that returns three columns:
--     The hours of the timestamp
--     The average score for each hour
--     The count of stories for each hour
SELECT strftime('%H', timestamp),
   avg(score),
   count(*)
FROM hacker_news
group by 1
order by 2 desc;
-- 11. Let’s edit a few things in the previous query: 
--     Round the average scores (ROUND()).
--     Rename the columns to make it more readable (AS).
--     Add a WHERE clause to filter out the NULL values in timestamp.
-- Take a look at the result again: What are the best hours to post a story on Hacker News?
SELECT strftime('%H', timestamp),
   round(avg(score), 1) AS 'Average Score',
   count(*) AS 'Number of Stories'
FROM hacker_news
Where timestamp IS NOT NULL
group by 1
order by 2 desc;

