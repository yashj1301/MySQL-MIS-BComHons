
#ASSIGNMENT 8 - UPDATE COMMAND

use student_record;

select * from client_master;

#updating city to Mumbai for client with client_ID=101
update client_master set city='Mumbai' where Client_No=101;

select * from client_master;

#updating baldue where city is Mumbai
update client_master set baldue='10000' where city='Mumbai';

select * from client_master;

#updating baldue to 10000 to all the clients
update client_master set baldue=10000;
select * from client_master;

#inserting new row into client master table
insert into client_master(client_no,client_name,address,state,city,pincode,baldue)
values(108,'Ratan Tata','Ecovillage 7','Delhi NCR','Delhi',201311,11324.52);

select * from client_master;

#increasing baldue by 10%
update client_master set baldue=baldue*1.1; 
select * from client_master;

#change the size of name column to 50

#display distinct city 
select distinct city from client_master;

#deleting record where baldue is less than 10000
insert into client_master(client_no,client_name,address,state,city,pincode,baldue)
values(109,'MS Dhoni','Ecovillage 8','Uttar Pradesh','Noida',201312,8432.77);

select * from client_master;

delete from client_master where baldue<10000;
select * from client_master;









