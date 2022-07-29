-- Active: 1659098375332@@localhost@3306

  #ASSIGNMENT 1 - BASIC TABLE COMMANDS

create database student_record;
use student_record;

show tables;

#Creating Table Persons

create table persons (
personID int,
FirstName char(20),
LastName char(20),
Address varchar(25),
City char(15)
);

insert into persons (personID,FirstName,LastName,Address,City)
values (100,'Yash','Jain','Eco-village 1','Greater Noida');

insert into persons (personID,FirstName,LastName,Address,City)
values (101,'Elon','Musk','Eco-village 2','Delhi');

insert into persons (personID,FirstName,LastName,Address,City)
values (102,'Ratan','Tata','Eco-village 3','Bangalore');

insert into persons (personID,FirstName,LastName,Address,City)
values (103,'Mukesh','Ambani','Eco-village 4','Mumbai');

insert into persons (personID,FirstName,LastName,Address,City)
values (104,'Virat','Kohli','Eco-village 5','Chennai');

select * from persons;
