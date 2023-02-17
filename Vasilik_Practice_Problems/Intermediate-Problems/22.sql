-- Use fields UnitsInStock and ReoroderLevel, where UnitsInStock is less than or equal to the ReorderLevel. Sort by ProductID
SELECT ProductID, ProductName, UnitsInStock, ReorderLevel
FROM Products
WHERE UnitsInStock <= ReorderLevel 
ORDER BY ProductID;
