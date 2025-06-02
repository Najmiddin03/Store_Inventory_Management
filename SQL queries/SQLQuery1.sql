select p.ProductName, sum(b.quantity) as total
from batches b
join products p on p.SKU=b.product_SKU
GROUP BY p.ProductName;

alter table batches
add batch_name varchar(50)

select * from batches
where product_SKU in(select product_SKU
                     from batches
                     group by product_SKU
                     having count(*)>1)

select p.ProductName from products p
left join shelfItems b on p.SKU = b.product_SKU
where b.product_SKU is null

select
    s.name,
    c.name,
    p.ProductName
from  subcategories s
join dbo.categories c on c.id = s.category_id
join products p on s.id = p.Subcategory_id

ALTER TABLE dbo.shelfs
ALTER COLUMN name VARCHAR(50);

alter table products
alter column is_weighted bit;

update products
set is_weighted=1 where id in (select id
                      from products
                      where UnitSize=1.0 and MeasurementUnit='kg' and Subcategory_id between 26 and 31)

update products
set is_weighted=1 where id in (select id
                      from products
                      where UnitSize=1.0 and MeasurementUnit='kg' and Subcategory_id between 43 and 44)

select p.ProductName, i.quantity from products p
join shelfItems i on p.SKU = i.product_SKU

update products set is_weighted=0 where is_weighted is null
select count(*) from sales
select count(*) from saleItems
select count(*) from batches


select count(i.id), s.id
from saleItems i
join dbo.sales s on s.id = i.sale_id
group by s.id

truncate table saleItems;
truncate table sales;
delete from saleItems
delete from sales
delete from batches

alter table saleItems
alter column quantity decimal(10,2)

alter table batches
alter column quantity decimal(10,2)

select
    s.id,
    s.transaction_number,
    i.product_SKU,
    count(*) as quantity,
    p.Price
from sales s
join saleItems i on s.id = i.sale_id
join dbo.products p on p.SKU = i.product_SKU
group by s.id,s.id, s.transaction_number, i.product_SKU, p.Price
order by s.id


select
    s.transaction_number,
    sum(sI.quantity*p.Price)
from sales s
join dbo.saleItems sI on s.id = sI.sale_id
join dbo.products p on p.SKU = sI.product_SKU
group by s.transaction_number
order by s.transaction_number




drop table [dbo].[batches]
drop table [dbo].[products]
drop table [dbo].[subcategories]
drop table [dbo].[categories]
drop table sales
drop table saleItems
drop table shelfs
drop table shelfItems

