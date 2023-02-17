/* Customers with multiple orders in 5 day period, version 2
There’s another way of solving #56, using Window functions. We would like to see the following results.
  Expected Results
  CustomerID OrderDate NextOrderDate DaysBetweenOrders
  ---------- ---------- ------------- -----------------
  ANTON 2015-09-22 2015-09-25 3
  AROUT 2015-11-14 2015-11-17 3
  ...
  WHITC 2015-10-06 2015-10-08 2
  WILMK 2016-02-06 2016-02-10 4
  (69 row(s) affected)
Hint #1: The window function to use here is the Lead function.
Look up some examples of the Lead function online. As a first step, write SQL using the Lead function to return results like the following. The NextOrderDate is a computed column that uses the Lead function.
      CustomerID OrderDate NextOrderDate
      ---------- ---------- -------------
      ALFKI 2015-08-25 2015-10-03
      ALFKI 2015-10-03 2015-10-13
      ALFKI 2015-10-13 2016-01-15
      ALFKI 2016-01-15 2016-03-16
      ALFKI 2016-03-16 2016-04-09
      ALFKI 2016-04-09 NULL
      ANATR 2014-09-18 2015-08-08
      ANATR 2015-08-08 2015-11-28
      ANATR 2015-11-28 2016-03-04
      ANATR 2016-03-04 NULL
Hint #2: You should have something like this:
      Select
      CustomerID
      ,OrderDate = convert(date, OrderDate)
      ,NextOrderDate =
      convert(
      date
      ,Lead(OrderDate,1)
      OVER (Partition by CustomerID order by CustomerID,
      OrderDate)
      )
      From Orders
      Order by
      CustomerID
      ,OrderID
  Now, take the output of this, and using a CTE and the DateDiff function, filter for rows which match our criteria.
*/
