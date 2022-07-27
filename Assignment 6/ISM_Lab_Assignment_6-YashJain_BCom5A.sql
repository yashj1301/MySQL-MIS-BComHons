
#ASSIGNMENT 6 - FOREIGN KEY CONSTRAINT

use student_record;

#creating table with foreign key
create table xyz(
serial_no int(10) primary key,
name_ varchar(25),
enrollment int(10),
foreign key (enrollment) references student(enrollment_no));

desc xyz;

#creating table persons and order

create table person(
person_ID int(10) primary key,
last_name varchar(25) not null,
first_name varchar(25) not null,
age int(2) not null);

desc person;

create table orders(
order_ID int(10) primary key,
order_number int(10) not null,
person_ID int(10) not null,
foreign key (person_ID) references person(person_ID));

desc orders;

#inserting values in both the tables

insert into person(person_ID,last_name,first_name,age)
values(1,'Hansen','Ola',30);

insert into person(person_ID,last_name,first_name,age)
values(2,'Svenson','Tove',23);

insert into person(person_ID,last_name,first_name,age)
values(3,'Petterson','Kari',20);

insert into orders(order_ID,order_number,person_ID)
values(1,77895,3);

insert into orders(order_ID,order_number,person_ID)
values(2,44678,3);

insert into orders(order_ID,order_number,person_ID)
values(3,22456,2);

insert into orders(order_ID,order_number,person_ID)
values(4,24562,1);

select * from person;
select * from orders;

insert into orders(order_ID,order_number,person_ID)
values(5,23251,4); 

#deleting record

delete from orders where person_ID=1;
select * from orders;

delete from person where person_ID=1;
select * from person;











