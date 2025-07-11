update products
set is_weighted=1 where id in (select id
                      from products
                      where UnitSize=1.0 and MeasurementUnit='kg' and Subcategory_id between 26 and 31)

update products
set is_weighted=1 where id in (select id
                      from products
                      where UnitSize=1.0 and MeasurementUnit='kg' and Subcategory_id between 43 and 44)

update products set is_weighted=0 where is_weighted is null

update p
set p.ReorderLevel=sI.quantity*0.7
from products p
join dbo.shelfItems sI on p.SKU = sI.product_SKU