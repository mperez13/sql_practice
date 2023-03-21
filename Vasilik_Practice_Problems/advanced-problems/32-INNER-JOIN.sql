-- #32 Display high-value customers. High-value customers are those who've made at least 1 order with a total value (not including the discount) equal to $10,000 or more. Only display orders made in year 1998.
SELECT c.CustomerID, c.CompanyName, o.OrderID, SUM(oD.UnitPrice*oD.Quantity) AS TotalOrderAmount
FROM Customers c
INNER JOIN Orders o ON o.CustomerID = c.CustomerID
INNER JOIN OrderDetails oD ON oD.OrderID = o.OrderID
WHERE Year(o.OrderDate) = 1998 
GROUP BY c.CustomerID, c.CompanyName, o.OrderID
HAVING SUM(oD.UnitPrice*oD.Quantity) >= 10000
ORDER BY TotalOrderAmount desc;
