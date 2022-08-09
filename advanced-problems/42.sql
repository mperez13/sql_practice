- Show which salespeople have the most orders arriving late
SELECT e.EmployeeID, e.LastName, Count(e.employeeID) AS TotalLateOrders
FROM Orders o
JOIN Employees e 
ON o.EmployeeID = e.EmployeeID
WHERE ShippedDate >= RequiredDate
GROUP BY e.EmployeeID, e.LastName
ORDER BY TotalLateOrders desc;
