-- Show the three ship countries with the highest average freight charges of the last 12 months of order data
SELECT Top(3) ShipCountry, AVG(Freight) As AverageFreight
FROM Orders
WHERE OrderDate > DATEADD(year,-1,OrderDate)
GROUP BY ShipCountry
ORDER BY AverageFreight desc;
