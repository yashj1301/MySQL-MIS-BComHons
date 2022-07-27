
#ASSIGNMENT 15 - AGGREGATE FUNCTIONS

use student_record;

#counting number of not null values in the salary column of the table
select count(salary) from client_master;

desc client_master;
insert into client_master(Client_No) values (110);
select * from client_master;

#counting the total records in the table
select count(*) from client_master;

#counting the distinct values for state
select count(distinct state) from client_master;

#showing total balance due
select sum(baldue) from client_master;

#showing average salary
select avg(salary) from client_master;

#showing minimum salary
select min(salary) from client_master;

#showing maximum baldue
select max(Baldue) from client_master;
