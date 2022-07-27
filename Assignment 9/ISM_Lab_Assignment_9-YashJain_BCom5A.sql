
#ASSIGNMENT 9 - ALTER COMMAND

use student_record;

#adding a new column salary to the table
alter table client_master add(salary float(10,2));
desc client_master;

#updating salary for all the clients with different values
update client_master set salary=1000 where client_no=100;
update client_master set salary=2000 where client_no=101;
update client_master set salary=1500 where client_no=104;
update client_master set salary=18000 where client_no=107;
update client_master set salary=2500 where client_no=108;

select * from client_master;

#updating salary to 10000 for client id 101
update client_master set salary=10000 where client_no=101;
select * from client_master;

#add a column mobile number with int(10)
alter table client_master add(mobile int(10));
desc client_master;

#display all the clients with salary>3000 and baldue<15000
select * from client_master where salary>3000 and baldue<15000;









