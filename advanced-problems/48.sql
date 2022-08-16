/* Categorize cusomters into groups based on how much they ordered in 1998. Depending on which group the customer is, the customer with different sales materials will be targeted.
The customer grouping categories:
0 to 1,000
1,000 to 5,000
5,000 to 10,000
over 10,000
Order the results by CustomerID.
*/
SELECT c.CustomerID, c.CompanyName, UnitPrice--, TotalOrderAmount, CustomerGroup
FROM Customers c JOIN Orders o
ON c.customerID = o.customerID
JOIN OrderDetails oD
ON o.OrderID = oD.OrderID
WHERE Year(OrderDate) = 1998
ORDER BY CustomerID;
