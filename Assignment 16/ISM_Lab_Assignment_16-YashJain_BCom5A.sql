
#ASSIGNMENT 16 - AGGREGATE FUNCTIONS II

show tables;

#updating city to delhi for client no 101
update client_master set city='Delhi' where client_no=101;
select * from client_master where client_no=101;

#adding values in the table for designation
update client_master set designation='Manager' where client_no=101;
update client_master set designation='Salesman' where client_no=107;
update client_master set designation='Manager' where client_no=108;
update client_master set designation='Admin' where client_no=110;

select * from client_master;

#displaying the salary and baldue info for clients 101, and 108
select salary,baldue from client_master where client_no IN(101,108);

#counting total number of clients
select count(*) from client_master;

#calculating average salary for all clients
select avg(salary) from client_master;

#Listing clients staying in city starting with D
select * from client_master where city like 'D%';

#displaying total salary and average salary
select sum(salary),avg(salary) from client_master;

#changing the city of Salesman to Pune
update client_master set city='Pune' where designation='Salesman';
select * from client_master where designation='Salesman';











