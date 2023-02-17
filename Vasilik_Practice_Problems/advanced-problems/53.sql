/* Countries with suppliers or customers, version 2
The employees going on the business trip don't want just a raw list of countries, they want more details.
  Expected Results
  SupplierCountry | CustomerCountry
  NULL            | Argentina
  Australia       | NULL
  ...
  UK              | UK
  USA             | USA
  NULL            | Venezuela
  (25 row(s) affected)
Hint #1: A good way to start would be with a list of countries from the Suppliers table, and a list of countries from the Customers table. Use either Distinct or Group by
to avoid duplicating countries. Sort by country name
Hint #2: You should have something like this:
        Select Distinct Country from Customers
        Select Distinct Country from Suppliers
  You can combine these with a CTEs or derived tables.
  Note that there’s a specific type of outer join you’ll need, designed to return rows from either resultset.
  What is it? Look online for the different types of outer join available.
*/
