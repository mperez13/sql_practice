-- #49 Fix #48 so there are no NULLs in the results.
SELECT o.CustomerID, c.CompanyName, SUM(UnitPrice*Quantity) AS TotalOrderAmount,
CASE
	WHEN SUM(UnitPrice*Quantity) <= 1000 THEN 'LOW'
	WHEN SUM(UnitPrice*Quantity) > 1000 AND SUM(UnitPrice*Quantity) <= 5000 THEN 'MEDIUM'
	WHEN SUM(UnitPrice*Quantity) > 5000 AND SUM(UnitPrice*Quantity) <= 10000 THEN 'HIGH'
	WHEN SUM(UnitPrice*Quantity) > 10000 THEN 'VERY HIGH'
END AS CustomerGroup
FROM Customers c JOIN Orders o
ON c.customerID = o.customerID
JOIN OrderDetails oD
ON o.OrderID = oD.OrderID
WHERE Year(o.OrderDate) = 1998
GROUP BY o.CustomerID, c.CompanyName
ORDER BY o.CustomerID;
