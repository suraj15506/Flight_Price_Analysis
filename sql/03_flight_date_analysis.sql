USE FlightPrice;

-- Focus: Date-based insights
Select * from flight;
-- 11. Group flights by date of journey and find the average price per day

SELECT 
    day, month, year, AVG(price)
FROM
    flight
GROUP BY day , month , year;
-- 12. Which day of the month has the most flights scheduled?

SELECT 
    day, COUNT(*) AS num_flights
FROM
    flight
GROUP BY day
ORDER BY num_flights DESC
LIMIT 1;
-- 13. Find the cheapest flight for each airline
SELECT 
    airline, MIN(price) AS 'cheapest_flight_price'
FROM
    flight
GROUP BY airline;
-- 14. Rank airlines based on the average flight price (lowest to highest)
SELECT 
    Airline, AVG(price) AS price
FROM
    flight
GROUP BY airline
ORDER BY price;

 Select  airline, avg(price),RANK() over(order by avg(price) ) as 'rank' from flight group by airline;
 
-- 15. Find the number of flights operated by each airline in the month of May
SELECT 
    airline, COUNT(*)
FROM
    flight
WHERE
    month = 5
GROUP BY airline;