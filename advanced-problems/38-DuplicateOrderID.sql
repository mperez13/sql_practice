-- Show all orderIDs with line items of 60 or more. Order by OrderID
SELECT OrderID, Quantity
FROM OrderDetails
WHERE Quantity >= 60
GROUP BY OrderID, Quantity
HAVING Count(*)>1
Order BY OrderID;
