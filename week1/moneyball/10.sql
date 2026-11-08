-- In 10.sql, write a query to return just such a table.

-- Your query should return a table with five columns, per the above.
-- Order the results, first and foremost, by player’s IDs (least to greatest).
-- Order rows about the same player by year, in descending order.
-- Consider a corner case: suppose a player has multiple salaries or performances for a given year. Order them first by number of home runs, in descending order, followed by salary, in descending order.
-- Be careful to ensure that,
--  for a single row, the salary’s year and the performance’s year match.
-- Example table

SELECT "players"."first_name", "players"."last_name",
       "salaries"."salary", "performances"."HR", "salaries"."year"
FROM "players"
JOIN "salaries" ON "salaries"."player_id" = "players"."id"
JOIN "performances" ON "performances"."player_id" = "players"."id"
    AND "performances"."year" = "salaries"."year"
ORDER BY "players"."id", "salaries"."year" DESC,
         "performances"."HR" DESC, "salaries"."salary" DESC;