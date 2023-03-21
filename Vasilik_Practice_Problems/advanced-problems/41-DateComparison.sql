-- #41 Show orders that are arriving late.
SELECT OrderID, OrderDate, RequiredDate, ShippedDate
FROM Orders
WHERE ShippedDate > RequiredDate;
