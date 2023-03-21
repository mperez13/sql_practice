-- #46 Show the percentage of late orders over total orders.
WITH AllOrders_CTE AS
(
SELECT employeeID, Count(employeeID) AS AllOrders
FROM Orders 
GROUP BY EmployeeID
),
TotalLateOrders_CTE AS
(
SELECT employeeID, Count(employeeID) AS TotalLateOrders
FROM Orders 
WHERE ShippedDate >= RequiredDate
GROUP BY EmployeeID
)
SELECT e.EmployeeID, e.LastName, ISNULL(a.AllOrders,0) AS AllOrders, ISNULL(l.TotalLateOrders,0) AS TotalLateOrders, FORMAT(ISNULL(CAST(TotalLateOrders AS decimal)/AllOrders,0),'p') AS PercentLateOrders
FROM Employees e
JOIN AllOrders_CTE a ON a.EmployeeID = e.EmployeeID
LEFT JOIN TotalLateOrders_CTE l ON l.EmployeeID = e.EmployeeID
ORDER BY e.EmployeeID asc;
