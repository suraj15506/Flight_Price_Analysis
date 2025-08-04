USE FlightPrice;
-- Focus: Stopovers and route analysis
Select * from flight;
-- 16. Find the airline with the maximum number of flights having stopovers (not 'non-stop')
SELECT 
    airline, COUNT(*) AS 'count'
FROM
    flight
WHERE
    Total_Stops != 'non-stop'
GROUP BY airline
ORDER BY count DESC
LIMIT 1;

-- 17. Which route (source to destination) has the highest average flight price?
SELECT 
    source, destination, AVG(price)
FROM
    flight
GROUP BY source , destination
ORDER BY AVG(price) DESC
LIMIT 1;


-- 18. Show the flight(s) with the shortest and longest duration

            
SELECT 
    *
FROM
    flight
WHERE
    Duration_inmin = (SELECT 
            MIN(Duration_inmin)
        FROM
            flight)
        OR Duration_inmin = (SELECT 
            MAX(Duration_inmin)
        FROM
            flight);

-- 19. Create a pivot-style summary showing the number of flights from each source to each destination

SELECT 
    source, destination, COUNT(*)
FROM
    flight
GROUP BY source , destination;

-- 20. Find the average price difference between non-stop and 1-stop flights

Select  Total_Stops,avg(price) from flight where Total_stops in('non-stop' ,'1 stop') group by Total_Stops;