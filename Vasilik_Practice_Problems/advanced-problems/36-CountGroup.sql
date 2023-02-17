-- Show orders that have lots of individual line items. Show the 10 orders with the most items, in order of total line items.
SELECT TOP 10 OrderID, Count(OrderID) AS TotalOrderDetails
FROM OrderDetails
GROUP BY OrderID
ORDER BY TotalOrderDetails desc;
