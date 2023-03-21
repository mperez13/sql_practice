-- #21 In the customers table, show the total number of customers per Country and City.
SELECT Country, City, Count(CustomerID) AS TotalCustomer
FROM Customers
GROUP BY Country, City
ORDER BY Country;
