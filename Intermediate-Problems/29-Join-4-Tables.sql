-- Show the EmployeeID, LastName, OrderID, ProductName, Quantity. Sort by OrderID and Product ID.
SELECT o.EmployeeID, e.LastName, o.OrderID, p.ProductName, od.Quantity 
FROM Orders o 
INNER JOIN Employees e ON o.employeeID = e.employeeID
INNER JOIN OrderDetails od ON o.orderID = od.orderID
INNER JOIN Products p ON p.productID = od.productID
ORDER BY orderID, p.productID;
