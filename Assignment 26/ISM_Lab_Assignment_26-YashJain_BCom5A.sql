# ASSIGNMENT 26 - BASIC TABLE COMMANDS PRACTICE

create table clients (
client_id varchar(6) primary key check (client_id like 'C%' or client_id like 'c%'),
client_name varchar(20) not null,
city varchar(15),
state varchar(15),
pincode int,
baldue int
);

desc clients;

insert into clients (client_id,client_name,city,state,pincode,baldue)
values ('C0001','Ivan Bayross','Mumbai','Maharashtra',400054,15000),('C0002','Mamta Muzumdar','Madras','Tamil Nadu',780001,0),('C0003','Chhaya Bankar','Mumbai','Maharashtra',400057,5000),('C0004','Ashwini Joshi','Bangalore','Karnatka',560001,0);

select * from clients;

create table products (
product_id varchar(6) primary key check(product_id like 'P%' or product_id like 'p%'),
description_ varchar(15) not null,
qty_in_hand int not null,
reorder_level int not null,
sell_price int not null check(sell_price!=0),
cost_price int not null check(cost_price!=0)
);

desc products;

insert into products(product_id,description_,qty_in_hand,reorder_level,sell_price,cost_price)
values ('P0001','T-Shirts',200,50,350,250),('P0345','Shirts',150,50,500,350),('P06734','Cotton Jeans',100,20,600,450),('P07865','Jeans',100,20,750,500);

select * from products;

create table salesman (
salesman_id varchar(6) primary key check(salesman_id like 'S%' or salesman_id like 's%'),
salesman_name varchar(20) not null,
city varchar(20),
pincode int,
state varchar(20),
sales_amount int not null check(sales_amount!=0)
);

desc salesman;

insert into salesman (salesman_id,salesman_name,city,pincode,state,sales_amount)
values ('S00001','Aman','Mumbai',400002,'Maharashtra',3000),('S00002','Omkar','Mumbai',400001,'Maharashtra',3000),('S00003','Raj','Mumbai',400032,'Maharashtra',3000),('S00004','Ashish','Mumbai',400044,'Maharashtra',3000);

select * from salesman;

create table sales_order (
order_no varchar(6) primary key check(order_no like 'O%' or order_no like 'o%'),
client_no varchar(6), foreign key (client_no) references clients(client_id),
order_date date not null,
salesman_no varchar(6), foreign key (salesman_no) references salesman(salesman_id),
order_status varchar(10) check(order_status in ('IN PROCESS','CANCELLED','FULFILLED','BACK ORDERED')) 
);

desc sales_order;

insert into sales_order (order_no,client_no,order_date,salesman_no,order_status)
values ('O19001','C0001','2004-06-13','S00001','IN PROCESS'),('O19002','C0002','2004-06-25','S00002','CANCELLED'),('O46865','C0003','2004-02-18','S00003','FULFILLED'),('O19003','C0001','2004-04-03','S00001','FULFILLED');

select * from sales_order;

create table sales_order_details (
order_no varchar(6), foreign key (order_no) references sales_order(order_no),
product_no varchar(6), foreign key (product_no) references products(product_id),
qty_ordered int
);

desc sales_order_details;

insert into sales_order_details (order_no,product_no,qty_ordered)
values ('O19001','P0001',4),('O19002','P0001',10),('O19003','P0345',4),('O46865','P07865',1);

select * from sales_order_details;



