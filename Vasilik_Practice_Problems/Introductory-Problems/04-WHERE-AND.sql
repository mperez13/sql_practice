-- #4 Return the FirstName, LastName and HireDate of all employees with the Title of Sales Representative and the Country is USA.
SELECT FirstName, LastName, HireDate
FROM EMPLOYEES
WHERE Title='Sales Representative' AND Country='USA';
