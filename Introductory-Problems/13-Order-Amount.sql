-- In the OrderDetails table, create a new field, TotalPrice, that multiplies these two together. Ignore the Discount field.

-- Show the OrderID, ProductID, UnitPrice and Quantity. Order by OrderID and ProductID
SELECT OrderID, ProductID, UnitPrice, Quantity
FROM OrderDetails
ORDER BY OrderID, ProductID;
