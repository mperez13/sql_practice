-- Show Customers that have never placed an order.
SELECT DISTINCT(c.CustomerID) AS Customers_CustomerID, o.CustomerID AS Orders_CustomerID
FROM Customers c FULL OUTER JOIN Orders o
ON c.CustomerID = o.CustomerID
WHERE o.CustomerID IS NULL;
