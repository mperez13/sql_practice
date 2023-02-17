/* Customers with multiple orders in 5 day period
There are some customers for whom freight is a major expense when ordering from Northwind. 
However, by batching up their orders, and making one larger order instead of multiple smaller orders in a short period of time, they could reduce their freight costs significantly.
Show those customers who have made more than 1 order in a 5 day period. The sales people will use this to help customers reduce their costs.
Note: There are more than one way of solving this kind of problem. For this problem, we will not be using Window functions.
          Expected Result
          CustomerID InitialOrderID InitialOrderDate NextOrderID NextOrderDateDaysBetween
          ---------- -------------- ---------------- ----------- ------------- -----------
          ANTON 10677 2015-09-22 10682 2015-09-25 3
          AROUT 10741 2015-11-14 10743 2015-11-17 3
          BERGS 10278 2014-08-12 10280 2014-08-14 2
          BERGS 10444 2015-02-12 10445 2015-02-13 1
          ....
          WHITC 10693 2015-10-06 10696 2015-10-08 2
          WILMK 10873 2016-02-06 10879 2016-02-10 4
          (71 row(s) affected)
Hint #1: You can use a self-join, with 2 instances of the Orders table, joined by CustomerID. 
Good naming for the table aliases (table instances) are important for readability. Don't name them Order1 and Order2.
Hint #2: 
          Select
          InitialOrder.CustomerID
          ,InitialOrderID = InitialOrder.OrderID
          ,InitialOrderDate = InitialOrder.OrderDate
          ,NextOrderID = NextOrder.OrderID
          ,NextOrderDate = NextOrder.OrderDate
          from Orders InitialOrder
          join Orders NextOrder
          on InitialOrder.CustomerID = NextOrder.CustomerID
          Order by
          InitialOrder.CustomerID
          ,InitialOrder.OrderID
This is a good start. You will need to filter on additional fields in the join clause between InitialOrder and NextOrder, because as it is, this returns far too many orders. It has what's called a cartesian product between the 2 instances of the Orders table. This means that for the total number of orders for a particular customer in Orders, you'll have that number, squared, in the output. Look at some of the OrderID and OrderDate values in InitialOrder and NextOrder. Some of them definitely disqualify a row based on our criteria.
Hint #3: Should the OrderID of the NextOrder ever be less than or equal to the OrderID of the NextOrder?
Hint #4: Based on the hint above, we added a where clause.
        Select
        InitialOrder.CustomerID
        ,InitialOrderID = InitialOrder.OrderID
        ,InitialOrderDate = InitialOrder.OrderDate
        ,NextOrderID = NextOrder.OrderID
        ,NextOrderDate = NextOrder.OrderDate
        from Orders InitialOrder
        join Orders NextOrder
        on InitialOrder.CustomerID = NextOrder.CustomerID
        where
        InitialOrder.OrderID < NextOrder.OrderID
        Order by
        InitialOrder.CustomerID
        ,InitialOrder.OrderID
Adding this filter:
and InitialOrder.OrderID < NextOrder.OrderID
…has cut down the output a lot. However, we still need to filter for the 5 day period. Create a new field called DaysBetween that calculates the number of days between the InitialOrder OrderDate and the NextOrder OrderDate. Use the DateDiff function.
Hint #5: You should now have a line like this:
      DaysBetween = datediff(dd, InitialOrder.OrderDate,
      NextOrder.OrderDate)
Use this calculation in the Where clause to filter for 5 days or less between orders.
*/
