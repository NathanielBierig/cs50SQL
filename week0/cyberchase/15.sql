SELECT substr("air_date", 1, 4), MIN("air_date") FROM "episodes" GROUP BY substr("air_date", 1, 4);
//didnt do on own