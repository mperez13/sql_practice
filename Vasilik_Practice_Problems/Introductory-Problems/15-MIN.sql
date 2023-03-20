-- #15 Show the date of the first order ever made in the Orders table.
SELECT MIN(OrderDate) AS FirstOrder
FROM Orders;
