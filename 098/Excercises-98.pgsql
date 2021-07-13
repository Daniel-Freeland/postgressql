-- SELECT DISTINCT pcity FROM people ORDER BY pcity DESC;
-- SELECT DISTINCT pcity AS "TOWNS" FROM people ORDER BY pcity DESC;
-- SELECT pfirstname || ' ' || plastname AS "Full Name" FROM people ORDER BY plastname ASC;
-- SELECT DISTINCT pstate, pcity, pstate || ' HAS THE CITY ' || pcity AS "TOWNS" FROM people ORDER BY pstate DESC, pcity ASC;
-- SELECT lidesired, lipurchased, lidesired - lipurchased AS "Items Still Desired" from listitems;
-- SELECT lidesired, lipurchased, lidesired - lipurchased AS "Items Still Desired" from listitems ORDER BY "Items Still Desired" DESC;
SELECT ROUND((1 - (CAST(lidesired - lipurchased AS NUMERIC))/CAST(lidesired AS NUMERIC)) * 100, 2) || '%' AS "Fulfillment" from listitems;