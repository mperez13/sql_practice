-- Drop the table named Shippers in case there is one already craated.
DROP TABLE Shippers;

-- Create a table name Shippers
CREATE TABLE Shippers {
  ShipperID int NOT NULL,
  CompanyName varchar(255) NOT NULL,
  Phone int
  CONSTRAINT PK_Shipper PRIMARY KEY (ShipperID)
}
-- Insert all all the entries for the table Shippers.
INSERT INTO Shippers (ShipperID, CompanyName, Phone)
VALUES (1,Speedy Express, 5035559831),
  (2,United Package,5035553199),
  (3,Federal Shipping,5035559931);

-- Return all fields from all the shippers.
SELECT * FROM Shippers;
