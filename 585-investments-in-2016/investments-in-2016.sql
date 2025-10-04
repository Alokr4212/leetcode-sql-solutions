# Write your MySQL query statement below
SELECT ROUND(SUM(tiv_2016), 2) as tiv_2016
From Insurance
WHERE tiv_2015 IN (
    SELECT tiv_2015
    FROM Insurance
    Group by tiv_2015
    Having COUNT(*) > 1
)
AND (lat, lon) IN (
    SELECT lat, lon
    From Insurance
    group by lat, lon
    Having COUNT(*) = 1
);
