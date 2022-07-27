
#ASSIGNMENT 4 - PRACTICE FOR BASIC TABLE COMMANDS

#selecting the client names from the table
select client_name from client_master;

#displaying all the contents of the table
select * from client_master;

#displaying the name and city of the client from the table
select client_name,city from client_master;

#deleting rows where state is Rajasthan
delete from client_master where state='Rajasthan';
select * from client_master;

#inserting new row into the table
insert into client_master(client_No,Client_Name,Address,State,City,Pincode,Baldue)
values(107,'Max','Ecovillage 6','Maharashtra','Mumbai',400054,15500);
select * from client_master;

#deleting records where balance is less than 10000
select * from client_master;
delete from client_master where Baldue<10000;
