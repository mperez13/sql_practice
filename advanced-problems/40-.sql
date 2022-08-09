-- Another way of completing #39 is using a derived table as shown as the SQL below. Fix the error in the SQL.
/*
SELECT OrderDetails.OrderID, ProductID, UnitPrice, Quantity, Discount
FROM OrderDetails
JOIN (
SELECT OrderID 
FROM OrderDetails 
WHERE Quantity >=60 
GROUP BY OrderID, Quantity 
Having Count(*) > 1
)
PotentialProblemOrders ON PotentialProblemOrders.OrderID = OrderDetails.OrderID
ORDER BY OrderID, ProductID
*/
SELECT DISTINCT OrderDetails.OrderID, ProductID, UnitPrice, Quantity, Discount
FROM OrderDetails
JOIN (
SELECT OrderID 
FROM OrderDetails 
WHERE Quantity >=60 
GROUP BY OrderID, Quantity 
Having Count(*) > 1
)
PotentialProblemOrders ON PotentialProblemOrders.OrderID = OrderDetails.OrderID
ORDER BY OrderID, ProductID
