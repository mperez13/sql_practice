-- Show OrderID, OrderDate (date only), and CompanyName of the Shipper. Sort by OrderID. Show only orders with OrderID less than 10300.
SELECT Orders.OrderID, convert(varchar(20),Orders.OrderDate,110) AS OrderDate, Shippers.CompanyName
FROM Shippers JOIN Orders 
ON Shippers.ShipperID = Orders.ShipVia
WHERE Orders.OrderID < 10300;


