-- 8.sql
-- How much would the A’s need to pay to get the best home run hitter this past season? In 8.sql, write a SQL query to find the 2001 salary of the player who hit the most home runs in 2001.
SELECT "salaries"."salary"
FROM "salaries"
JOIN "performances" ON "performances"."player_id" = "salaries"."player_id"
    AND "performances"."year" = "salaries"."year"
WHERE "performances"."year" = 2001
ORDER BY "performances"."HR" DESC
LIMIT 1;