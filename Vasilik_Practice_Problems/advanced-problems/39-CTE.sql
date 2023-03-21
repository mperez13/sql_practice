-- #39 Based on #39, show the details of the order, for orders that match the criteria for #38 problem.
WITH DoubleEntries_CTE (OrderID, Quantity)
AS(
SELECT OrderID, Quantity
FROM OrderDetails
WHERE Quantity >= 60
GROUP BY OrderID, Quantity
HAVING Count(*)>1
)
SELECT OrderID, ProductID, UnitPrice, Quantity, Discount
FROM OrderDetails
WHERE OrderID IN (SELECT OrderID FROM DoubleEntries_CTE)
ORDER BY OrderID;
