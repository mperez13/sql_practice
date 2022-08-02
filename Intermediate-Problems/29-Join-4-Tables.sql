-- Show the EmployeeID, LastName, OrderID, ProductName, Quantity. Sort by OrderID and Product ID.
SELECT e.EmployeeID, e.LastName, o.OrderID, ProductName, Quantity 
FROM Orders o JOIN Employees e
ON o.employeeID = e.employeeID
JOIN Product p
ON ;
