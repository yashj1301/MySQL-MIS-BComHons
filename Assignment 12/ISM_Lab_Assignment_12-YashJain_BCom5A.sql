
#ASSIGNMENT 12 - PRACTICE FOR ALTER COMMAND

use student_record;

#dropping pincode from clients
desc clients;

alter table clients drop column pincode;
desc clients;

#changing size of address column to 40
desc clients;

alter table clients modify address varchar(40);
desc clients;

#updating details for client 107
select * from clients where client_no=107;

update clients set client_name='SMITH' where client_no=107;
update clients set baldue=5000 where client_no=107;

select * from clients where client_no=107;

#renaming clients to client_master
show tables;

rename table clients to client_master;
show tables;

#deleting entries with state U.P.
select * from client_master;

delete from client_master where state='Uttar Pradesh';
select * from client_master;

#adding column city
alter table client_master add city char(15);
desc client_master;








