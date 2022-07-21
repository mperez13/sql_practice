-- Show all customers, sorted by region, alphabetically. Customers with no region should be at the end of the list. Companies should be sorted by CustomerID.
SELECT * 
FROM Customers
ORDER BY CustomerID asc, Region desc;
