USE FlightPrice;
-- Focus: Ranking, window functions, and advanced analytics

-- 21. Rank flights by price within each airline
select airline, avg(price), Rank() over(order by avg(price)) as 'rank ' from flight group by airline;
-- 22. Get top 2 most expensive flights per airline
Select *  from (Select * , row_number() over(partition by airline order by price desc) as rn from flight) as t where t.rn<=2;

-- 23. Find the difference in price between each flight and the previous one for the same airline
Select * , price- lag(price) over(partition by airline order by price) from flight;


-- 24. Compute the cumulative average flight price per airline

SELECT *, AVG(Price) OVER (PARTITION BY Airline ORDER BY Price ROWS BETWEEN UNBOUNDED
PRECEDING AND CURRENT ROW) AS cumulative_avg
 FROM flight;

-- 25. Find flights where the price is above the average price for that airline

select * from (Select * , avg(price) over(partition by airline) as avg  from flight) as t where price>avg;
