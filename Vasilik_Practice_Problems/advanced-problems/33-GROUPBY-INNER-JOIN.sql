-- #33 Show those customers who have orders totaling $15,000 or more in 2016. How would you change the answer to #32.
SELECT c.CustomerID, c.CompanyName, SUM(oD.UnitPrice*oD.Quantity) AS TotalOrderAmount
FROM Customers c
INNER JOIN Orders o ON o.CustomerID = c.CustomerID
INNER JOIN OrderDetails oD ON oD.OrderID = o.OrderID
WHERE Year(o.OrderDate) = 1998 
GROUP BY c.CustomerID, c.CompanyName
HAVING SUM(oD.UnitPrice*oD.Quantity) >= 15000
ORDER BY TotalOrderAmount desc;
