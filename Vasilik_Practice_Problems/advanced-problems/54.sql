/* Countries with suppliers or customers - version 3
The output of #53 is improved, but it’s still not ideal
What we’d really like to see is the country name, the total suppliers, and the total customer
    Expected Result:
    Country   | TotalSuppliers | TotalCustomers 
    Argentina | 0              | 3
    ...
    Venezuela | 0              | 4
    (25 row(s) affected)
Hint #1: You should be able to use the above query, and make a few changes to the CTE source queries to show the total number of Supplier countries and Customer countries. You won’t be able to use the Distinct keyword anymore.
Hint #2: When joining the 2 CTEs together, you can use a computed column, with the IsNull function to show a non-null Country field, instead of the Supplier country or the Customer country.
*/
