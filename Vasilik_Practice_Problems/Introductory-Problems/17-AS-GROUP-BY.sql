-- #17 Show a list of all the different values in the Customers table for ContactTitles. Include the count for each ContactTitle.
SELECT ContactTitle, Count(*) AS TotalContactTitle
FROM Customers
GROUP BY ContactTitle
ORDER BY TotalContactTitle desc;
