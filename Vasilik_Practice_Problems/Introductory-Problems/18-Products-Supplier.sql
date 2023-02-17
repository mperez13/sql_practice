-- For each product show the associated Supplier. Show the ProductID, ProductName and the CompanyName of the Supplier. Sort by ProductID
SELECT p.ProductID, p.ProductName, s.CompanyName
FROM Products p JOIN Suppliers s
ON p.SupplierID = s.SupplierID
ORDER BY ProductID;

