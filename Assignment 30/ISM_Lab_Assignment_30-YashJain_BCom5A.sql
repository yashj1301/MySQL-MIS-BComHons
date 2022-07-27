#ASSIGNMENT 30 - Converting ER Diagram to Relational model II

create database e_commerce_platform;
use e_commerce_platform;

create table customers (
cust_ID int primary key,
name varchar(25) not null,
mobile int(10) not null,
email varchar(12),
state varchar(30),
city varchar(30),
pincode int(6) not null
);

desc customers;

create table categories (
category_id varchar(7) primary key check(category_id like 'C%'),
category_name varchar(15) not null,
category_type varchar(10)
);

desc categories;

create table products (
product_id varchar(7) primary key check(product_id like 'P%'),
product_name varchar(25) not null,
category_id varchar(7) not null, foreign key (category_id) references categories(category_id)
);

desc products;

create table seller (
seller_id varchar(7) primary key check(seller_id like 'S%'),
seller_name varchar(25) not null,
product_id varchar(7) not null, foreign key (product_id) references products(product_id)
);

desc seller;

create table shopping_order (
order_id varchar(7) primary key check(order_id like 'O%'),
customer_id int not null, foreign key (customer_id) references customers(cust_ID),
order_date date not null
);

desc shopping_order;

create table payment (
payment_id varchar(7) primary key check(payment_id like 'M%'),
order_id varchar(7) not null, foreign key (order_id) references shopping_order(order_id),
payment_date date not null
);

desc payment;

create table deliveries (
delivery_id varchar(7) primary key check(delivery_id like 'D%'),
delivery_date date not null,
customer_id int not null, foreign key (customer_id) references customers(cust_ID),
order_id varchar(7) not null, foreign key (order_id) references shopping_order(order_id)
);

desc deliveries;

create table transaction_reports (
report_id int primary key,
customer_id int not null, foreign key (customer_id) references customers(cust_ID),
order_id varchar(7) not null, foreign key (order_id) references shopping_order(order_id),
product_id varchar(7) not null, foreign key (product_id) references products(product_id),
payment_id varchar(7) not null, foreign key (payment_id) references payment(payment_id)
);

desc transaction_reports;

