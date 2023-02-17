/* Customer grouping - flexible
Andrew, the VP of Sales is still thinking about how best to group customers, and define low, medium, high, and very high value customers. 
He now wants complete flexibility in grouping the customers, based on the dollar amount they've ordered. 
He doesn’t want to have to edit SQL in order to change the boundaries of the customer groups. 
How would you write the SQL? 
There's a table called CustomerGroupThreshold that you will need to use. Use only orders from 2016.
  Expected Result:
  CustomerID | CompanyName            | TotalOrderAmount | CustomerGroupName
  ALFKI      | Alfreds Futterkiste    | 2302.20          | Medium
  ...
  TRADH      | Tradição Hipermercados | 4401.62          | Medium  
  (81 row(s) affected)
Hint #1: As a starting point, use the SQL of the first CTE from the problem “Customer grouping with percentage”
    Select Customers.CustomerID, Customers.CompanyName, TotalOrderAmount = SUM(Quantity * UnitPrice)
    From Customers
    join Orders on Orders.CustomerID = Customers.CustomerID
    join OrderDetails on Orders.OrderID = OrderDetails.OrderID
    Where OrderDate >= '20160101' and OrderDate < '20170101'
    Group By Customers.CustomerID, Customers.CompanyName
Hint #2: When thinking about how to use the table CustomerGroupThreshold, note that when joining to a table, you don't need to only use an equi-join (i.e.,“=“ in the join). You can also use other operators, such as between, and greater than/less than (> and <).
*/
