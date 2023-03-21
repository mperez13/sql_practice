-- #22 Use fields UnitsInStock and ReoroderLevel, where UnitsInStock is less than or equal to the ReorderLevel. Sort by ProductID
SELECT *
FROM Products
WHERE UnitsInStock <= ReorderLevel AND Discontinued = 0
ORDER BY ProductID;
