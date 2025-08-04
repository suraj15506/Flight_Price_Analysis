Create Database FlightPrice;
USE FlightPrice;


-- 1  List all flights with their airline, source, destination, and price
SELECT 
    airline, source, destination, price
FROM
    flight;
-- 2 Find the total number of flights
SELECT 
    COUNT(*)
FROM
    flight;
-- 3 Display distinct airlines operating in the dataset
Select distinct(airline) from flight;
-- Show all flights where the source is 'Delhi'
Select * from flight where source='Delhi';
-- Get the flights with price greater than 10,000
Select * From flight where price>10000;