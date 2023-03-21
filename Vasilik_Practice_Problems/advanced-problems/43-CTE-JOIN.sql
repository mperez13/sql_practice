-- #43Show the employees's orders that arrive late and compared them to their total number of orders.
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
JOIN TotalLateOrders_CTE l ON l.EmployeeID = e.EmployeeID
WHERE l.TotalLateOrders > 1;
