-- #24 Show all customers, sorted by region, alphabetically. Customers with no region should be at the end of the list. Companies should be sorted by CustomerID.
SELECT CustomerID, CompanyName, Region
FROM Customers
ORDER BY CASE WHEN Region is NULL THEN 1 ELSE 0 END, Region;
