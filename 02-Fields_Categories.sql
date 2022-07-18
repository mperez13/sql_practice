-- Drop table Categories
DROP TABLE Categories;

-- CREATE TABLE Categories
CREATE TABLE Categories (
  CategoryID int NOT NULL AUTO_INCREMENT,
  CategoryName varchar(50),
  Description varchar(255),
  Picture varchar(50),
  PRIMARY KEY CategoryID
)

-- INSERT Entries to Table Categories
INSERT INTO Categories(CategoryID, CategoryName,Description,Status)
Values (1, 'Beverages', 'Soft drinks, coffees, teas, beers, and ales', beverage.jpg),
(2, 'Condiments', 'Sweet and savory sauces, relishes, spreads, and seasonings', Condiments.jpg)
(3, 'Confections', 'Desserts, candies, and sweet breads', confections.jpg)
(4, 'Dairy Products', 'Cheeses', dairy.jpg)
(5,'Grains/Cereals','Bread, crackers, pasta, and cereal', grains.jpg)
(6,'Meat/Poultry','Prepared meats', meat.jpg)
(7,'Produce','Dried fruit and bean curd', produce.jpg)
(8,'Seafood','Seaweed and fish', fish.jpg)

-- Return all from CategoryName and Description from Table Categories
SELECT CategoryName, Description FROM Categories;
