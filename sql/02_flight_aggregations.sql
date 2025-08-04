USE FlightPrice;
-- Focus: Aggregations, GROUP BY, and aggregative comparisons

Select * from flight;
-- 6. Find the average price of flights for each airline
 SELECT 
    airline, AVG(price) AS 'Avg_price'
FROM
    flight
GROUP BY airline;
-- 7. Which airline has the most expensive flight listed?
SELECT 
    airline, MAX(price)
FROM
    flight
GROUP BY airline
LIMIT 1;
-- 8. Count the number of flights operating between each source and destination pair
SELECT 
    source, destination, COUNT(*)
FROM
    flight
GROUP BY source , destination;
-- 9. List the top 5 most frequent routes (source → destination)
SELECT 
    source, destination, COUNT(*)
FROM
    flight
GROUP BY source , destination order by COUNT(*) desc limit 5;

-- 10. Get the average duration of flights for each airline
Select * from flight;
SELECT 
    airline,
    ROUND((AVG(Duration_inmin)), 2) AS 'Duration(in_min)'
FROM
    flight
GROUP BY airline;