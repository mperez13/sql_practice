-- #26 Return the three ship countries with the highest freight overall, in descending order by average freight. Only use the orders from the year 2015
SELECT Top(3) ShipCountry, AVG(Freight) As AverageFreight
FROM Orders
WHERE Year(OrderDate) = 2005
GROUP BY ShipCountry
ORDER BY AverageFreight desc;
