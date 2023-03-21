-- #44 Fix the SQL from #43. Show the missing employee
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
SELECT e.EmployeeID, e.LastName, a.AllOrders, l.TotalLateOrders
FROM Employees e
JOIN AllOrders_CTE a ON a.EmployeeID = e.EmployeeID
LEFT JOIN TotalLateOrders_CTE l ON l.EmployeeID = e.EmployeeID;
