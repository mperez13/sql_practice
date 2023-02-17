-- Show all orders made on the last day of the month. Order by EmployeeID and OrderID.
SELECT EmployeeID, OrderID, OrderDate
FROM Orders
WHERE OrderDate = EOMONTH(OrderDate)
ORDER BY EmployeeID, OrderID;
