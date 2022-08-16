-- Based on the query from #48,49, show all the defined CustomerGroups, and the percentage in each. Sort by the total in each group, in descending order.
WITH CustomerGroup_CTE AS (
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
),
Percentage_CTE AS (
SELECT CustomerGroup, Count(*) AS TotalInGroup
FROM CustomerGroup_CTE
GROUP BY CustomerGroup)
SELECT CustomerGroup, Percentage_CTE.TotalInGroup
FROM Percentage_CTE;
