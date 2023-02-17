-- For all the employees in the Employes table, show the FirstName, LastName, Title, and BirthDate. Order the results by BirthDate, so we have the oldest employees first. On the BirthDate field, show only the date portion.
SELECT FirstName, LastName, Title, CONVERT(varchar(10), BirthDate, 110) AS DateOnlyBirthDate 
FROM Employees
ORDER BY BirthDate desc;

