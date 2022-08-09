-- Change the query from #33 to use the discount when calculating high-value customers. Order by the total amount which includes the discount.
SELECT c.CustomerID, c.CompanyName, cast(SUM(oD.UnitPrice*oD.Quantity-oD.Discount) AS DECIMAL(12,2)) AS TotalOrderAmount
FROM Customers c
INNER JOIN Orders o ON o.CustomerID = c.CustomerID
INNER JOIN OrderDetails oD ON oD.OrderID = o.OrderID
WHERE Year(o.OrderDate) = 1998 
GROUP BY c.CustomerID, c.CompanyName
HAVING SUM(oD.UnitPrice*oD.Quantity) >= 15000
ORDER BY TotalOrderAmount desc;
