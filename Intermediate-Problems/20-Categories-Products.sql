-- Show the total number of products in each category. Sort the results by the total number of products, in descending order.
SELECT c.CategoryName, Count(p.CategoryID) AS TotalNumberOfProducts
FROM Products p JOIN Categories c
ON p.CategoryID = c.CategoryID;
