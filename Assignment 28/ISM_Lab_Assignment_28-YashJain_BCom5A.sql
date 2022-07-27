# ASSIGNMENT 28 - REVISION OF CONCEPTS II

#displaying the description and total qty for each product
select description_ 'Name of Product',sum(qty_ordered) 'Total Qty' 
from products p left join sales_order_details sod
on p.product_id=sod.product_no group by description_;

#displaying the non-moving products ,i.e. the products that are not sold
select product_id, description_ from products where product_id not in 
(select product_no from sales_order_details);

select product_id, description_ from products p left join sales_order_details sod 
on p.product_id=sod.product_no where sod.product_no is NULL group by product_id;

#displaying client details for clients with order no O19001
select so.order_no,client_id,client_name, concat(city,', ',state,' - ',pincode) 'Address' 
from clients c inner join sales_order so on c.client_id=so.client_no where so.order_no='O19001';

select so.client_no,so.order_no,client_name, concat(city,', ',state,' - ',pincode) 'Address', so.order_status 'STATUS' 
from clients c left join sales_order so on c.client_id=so.client_no where so.client_no='C0001';


#adding new column product_rate
alter table sales_order add column product_rate int default 100;

#updating values
update sales_order set product_rate=1500 where order_no='O19001';
update sales_order set product_rate=200 where order_no='O19002';
update sales_order set product_rate=370 where order_no='O19003';
update sales_order set product_rate=1300 where order_no='O46865';

select order_no,product_rate from sales_order;

#names of clients that have orders worth rs 1000 or more
select client_id,client_name,sum(product_rate) from clients c 
inner join sales_order s on c.client_id=s.client_no group by 
client_id having sum(product_rate)>=1000; 

alter table sales_order_details add client_no varchar(6) check(client_no like 'C%');
alter table sales_order_details add foreign key (client_no) references clients(client_id);
desc sales_order_details;

select * from sales_order_details;
select * from sales_order;

update sales_order_details set client_no='C0001' where order_no IN('O19001','O19003');
update sales_order_details set client_no='C0002' where order_no='O19002';
update sales_order_details set client_no='C0003' where order_no='O46865';







