-- Show the total number of products in each category. Sort the results by the total number of products, in descending order.
SELECT c.CategoryName, Count(p.CategoryID) AS TotalNumberOfProducts
FROM Categories c INNER JOIN Products p
ON c.CategoryID = p.CategoryID
GROUP BY c.CategoryName;
