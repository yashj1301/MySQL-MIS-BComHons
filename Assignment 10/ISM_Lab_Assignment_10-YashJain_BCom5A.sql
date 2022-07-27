
#ASSIGNMENT 10 - ALTER COMMAND II

use student_record;

#displaying all the client names
select client_name from client_master;

#retrieving all contents of client_master table
select * from client_master;

#changing city of client 104 to bangalore
update client_master set city='Bangalore' where client_no=104;
select * from client_master;

#adding new column designation
alter table client_master add(designation varchar(25));
desc client_master;

#deleting records where state is Haryana
select * from client_master;

delete from client_master where state='Haryana';
select * from client_master;













