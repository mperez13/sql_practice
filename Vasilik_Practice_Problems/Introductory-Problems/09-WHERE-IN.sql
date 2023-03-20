-- #9 Show all the orders from any Latin American country.
SELECT OrderID, CustomerID, ShipCountry 
FROM ORDERS 
WHERE ShipCountry IN ('Brazil', 'Mexico', 'Venezuela');
