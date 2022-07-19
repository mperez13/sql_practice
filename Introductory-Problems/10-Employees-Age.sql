-- For all the employees in the Employes table, show the FirstName, LastName, Title, and BirthDate. Order the results by BirthDate, so we have the oldest employees first.
SELECT FirstName, LastName, Title, BirthDate 
FROM Employees
ORDER BY BirthDate asc;
