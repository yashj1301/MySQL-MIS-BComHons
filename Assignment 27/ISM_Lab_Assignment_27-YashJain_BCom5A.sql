# ASSIGNMENT 27 - REVISION OF CONCEPTS

#showing clients with city mumbai
select * from clients where city='Mumbai';


#updating city of C0001 to Bangalore
update clients set city='Bangalore' where client_id='C0001';
select city from clients where client_id='C0001'; #after updation

#Changing the cost price of jeans to rs 950
update products set cost_price=950 where description_='Jeans';
select distinct description_,cost_price from products;

#adding a new column telephone
alter table clients add column tel int(10) default '123456789';
desc clients;

#renaming table 
rename table salesman to sales_master;
show tables like 's%'; #after renaming 

#listing products with conditions 
select description_ 'Name',sell_price 'Selling Price',sell_price*1.15 'New Selling Price' 
from products where sell_price>=500;

#counting number of products with SP>500
select count(product_id) from products where sell_price>500;

#showing products having qty on hand more than reorder level
select description_ 'Name of Product',qty_in_hand 'Qty in Hand',reorder_level 'Reorder Level'
from products where qty_in_hand>reorder_level;

#showing max and min price for products
select max(sell_price),min(sell_price) from products;

#selecting client records with state ending with 'a'
select * from clients where state like '%a';

