-- Return the three ship countries with the highest freight overall, in descending order by average freight.
SELECT Top 3 ShipCountry, AVG(Freight) As AverageFreight
FROM Orders
GROUP BY ShipCountry
ORDER BY AverageFreight desc;

