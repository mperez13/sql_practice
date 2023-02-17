-- Show the FirstName and LastName columns from the Employees table and then create a new column called FullName, showing FirstName and LastName joined together in one column, with a space inbetween
SELECT FirstName + ' ' + LastName AS FullName
FROM Employees;
