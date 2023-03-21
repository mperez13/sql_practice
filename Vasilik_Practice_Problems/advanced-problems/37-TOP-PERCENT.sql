-- #37 Show a random assortment of orders. Show a random set of 2% of all orders.
SELECT TOP 2 PERCENT OrderID, NewID() AS RandomValue
FROM OrderDetails
ORDER BY RandomValue;

-- Table without displaying the Random value
SELECT TOP 2 PERCENT OrderID
FROM OrderDetails
ORDER BY NewID();
