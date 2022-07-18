-- Drop the table named Shippers in case there is one already craated.
DROP TABLE Shippers;

-- Create a table name Shippers
CREATE TABLE Shippers (
  ShipperID int NOT NULL,
  CompanyName varchar(255) NOT NULL,
  Phone varchar(20)
  CONSTRAINT PK_Shipper PRIMARY KEY (ShipperID)
)
-- Insert all all the entries for the table Shippers.
INSERT INTO Shippers (ShipperID, CompanyName, Phone)
VALUES (1,'Speedy Express', '(503) 555-9831'),
  (2,'United Package','(503) 555-3199'),
  (3,'Federal Shipping','(503) 555-9931');

-- Return all fields from all the shippers.
SELECT * FROM Shippers;
