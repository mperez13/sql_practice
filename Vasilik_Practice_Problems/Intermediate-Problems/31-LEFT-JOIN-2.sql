-- #31 Show only the customers who have never placed an order with Marget Peacock, employeeID 4.
SELECT customers.CustomerID, Orders.CustomerID FROM customers
LEFT JOIN Orders ON orders.customerID = customers.customerID AND orders.employeeID = '4'
WHERE Orders.CustomerID IS NULL;
