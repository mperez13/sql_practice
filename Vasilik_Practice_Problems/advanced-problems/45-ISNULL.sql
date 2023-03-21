-- #45 Fix the NULL in #43. Show 0 if answer is NULL
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
SELECT e.EmployeeID, e.LastName, ISNULL(a.AllOrders,0), ISNULL(l.TotalLateOrders,0)
FROM Employees e
JOIN AllOrders_CTE a ON a.EmployeeID = e.EmployeeID
LEFT JOIN TotalLateOrders_CTE l ON l.EmployeeID = e.EmployeeID
ORDER BY e.EmployeeID asc;
