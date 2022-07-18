-- Show all orders placed by a specific employee. The EmployeeID for this Employee is 5.
SELECT OrderID, OrderDate
FROM Employees JOIN Orders
ON Employees.EmployeeID = Orders.EmployeeID
WHERE ORders.EmployeeID = 5;
