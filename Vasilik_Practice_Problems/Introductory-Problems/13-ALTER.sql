-- In the OrderDetails table, create a new field, TotalPrice, that multiplies UnitPrice and Quantity. Ignore the Discount field.
ALTER TABLE OrderDetails
ADD TotalPrice AS (UnitPrice*Quantity) PERSISTED;

-- Show the OrderID, ProductID, UnitPrice and Quantity. Order by OrderID and ProductID
SELECT OrderID, ProductID, UnitPrice, Quantity, TotalPrice
FROM OrderDetails
ORDER BY OrderID, ProductID;
