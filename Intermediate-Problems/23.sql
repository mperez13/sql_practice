*/ Now we need to incorporate these fields—UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued—into our calculation
-- We’ll define “products that need reordering” with the following:
UnitsInStock plus UnitsOnOrder are less than
or equal to ReorderLevel
The Discontinued flag is false (0). */
