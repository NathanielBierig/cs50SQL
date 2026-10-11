sqlite> select * from "packages" limit 5;
sqlite> SELECT "id", "address" FROM "addresses" WHERE "address" LIKE '900 Somerville%';
-- │ 432 │ 900 Somerville Avenue │
sqlite> SELECT "id", "address" FROM "addresses" WHERE "address" LIKE '2 Finn%';
-- │ 854 │ 2 Finnigan Street │
sqlite> SELECT "id" FROM "packages" WHERE "from_address_id" = 432 AND "to_address_id" = 854;
-- id 384╯
SELECT "scans"."action", "scans"."timestamp", "addresses"."address", "addresses"."type"
FROM "scans"
JOIN "addresses" ON "addresses"."id" = "scans"."address_id"
WHERE "scans"."package_id" = 384
ORDER BY "scans"."timestamp";




-- *** The Lost Letter ***

-- *** The Devious Delivery ***
SELECT "id", "contents" FROM "packages"
   ...> WHERE "from_address_id" IS NULL and "contents" LIKE '%duck%';
   --id 5098
    2023-10-24 10:08:55.610754 │ 7 Humboldt Place  │ Police Station
    
sqlite> SELECT "scans"."action", "scans"."timestamp", "addresses"."address", "addresses"."type"
   ...> FROM "scans"
   ...> JOIN "addresses" ON "addresses"."id" = "scans"."address_id"
   ...> WHERE "scans"."package_id" = 5098      
   ...> ;

-- *** The Forgotten Gift ***
sqlite> SELECT "id", "address" FROM "addresses" WHERE "address" LIKE '109 Tile%';        
sqlite> SELECT "id", "address" FROM "addresses" WHERE "address" LIKE '728 Maple%';
sqlite> SELECT "id" FROM "packages" WHERE "from_address_id" = 9873 AND "to_address_id" = 4983;

9523


SELECT "scans"."action", "scans"."timestamp", "addresses"."address", "addresses"."type"
   ...> FROM "scans"
   ...> JOIN "addresses" ON "addresses"."id" = "scans"."address_id"
   ...> WHERE "scans"."package_id" = 9523 
   ...> ORDER BY "scans"."timestamp";
    Drop   │ 2023-08-17 03:31:36.856889 │ 950 Brannon Harris Way │ Warehouse   │
│ Pick   │ 2023-08-23 19:41:47.913410 │ 950 Brannon Harris Way │ Warehouse   │


╰────────┴────────────────────────────┴────────────────────────┴─────────────╯
 SELECT "id", "address" FROM "addresses" WHERE "address" LIKE '950 Brannon%';        
╭──────┬────────────────────────╮
│  id  │        address         │
╞══════╪════════════════════════╡
│ 7432 │ 950 Brannon Harris Way │

ELECT "name" FROM "drivers" WHERE "id" = (SELECT "driver_id" FROM "scans" WHERE "package_id" = 9523 AND "address_id" = 7432);
SELECT "id", "contents" FROM "packages"
   ...> WHERE "id" = 9523;