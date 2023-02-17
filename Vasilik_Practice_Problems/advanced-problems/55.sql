/* First order in each country
From the Orers table, show details for each order that was the first in that particular country, order by OrderID.
We need one row per ShipCountry, and CustomerID, OrderID, and OrderDate should be of the first order from that country.
      Expected Results
      ShipCountry CustomerID OrderID OrderDate
      --------------- ---------- ----------- ----------
      Argentina OCEAN 10409 2015-01-09
      Austria ERNSH 10258 2014-07-17
      Belgium SUPRD 10252 2014-07-09
      ...
      UK BSBEV 10289 2014-08-26
      USA RATTC 10262 2014-07-22
      Venezuela HILAA 10257 2014-07-16
      (21 row(s) affected)
Hint #1: Your first step will probably be to create a query like this:
        Select ShipCountry, CustomerID, OrderID, OrderDate = convert(date, OrderDate) 
        From orders
        Order by ShipCountry, OrderID
  …which shows all the rows in the Order table, sorted first by Country and then by OrderID.
Hint #2: Your next step is to create a computed column that shows the row number for each order, partitioned appropriately.
There’s a class of functions called Window functions or Ranking functions that you can use for this problem. Specifically, use the Row_Number()
function, with the Over and Partition clause, to get the number, per country, of a particular order.
Hint #3: You’ll have something like this:
        Select
        ShipCountry, CustomerID, OrderID, OrderDate = convert(date, OrderDate), RowNumberPerCountry = Row_Number()
        over (Partition by ShipCountry Order by ShipCountry, OrderID)
        From Orders
  Because of some limitations with Window functions, you can’t directly filter the computed column created above. Use a CTE to solve the problem.
*/
