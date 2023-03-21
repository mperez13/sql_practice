/* #48 Categorize cusomters into groups based on how much they ordered in 1998. Depending on which group the customer is, the customer with different sales materials will be targeted.
The customer grouping categories:
LOW - 0 to 1,000
MEDIUM - 1,000 to 5,000
HIGH - 5,000 to 10,000
VERY HIGH - over 10,000
Order the results by CustomerID.
*/
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
