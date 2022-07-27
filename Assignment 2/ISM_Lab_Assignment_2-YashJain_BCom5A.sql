
#ASSIGNMENT 2 - BASIC TABLE COMMANDS II

use student_record;

#creating Table 

create table client_master (
Client_No int,
Client_Name varchar(20),
Address varchar(20),
State varchar(15),
City varchar(20),
Pincode int,
Baldue float(10,2)
);

insert into client_master (Client_No,Client_Name,Address,State,City,Pincode,Baldue)
values ('100','Yash Jain','Ecovillage 1','Uttar Pradesh','Noida',201306,10523.42);

insert into client_master (Client_No,Client_Name,Address,State,City,Pincode,Baldue)
values ('101','Elon Musk','Ecovillage 2','Delhi NCR','Delhi',201307,11673.77);

insert into client_master (Client_No,Client_Name,Address,State,City,Pincode,Baldue)
values ('102','Ratan Tata','Ecovillage 3','Rajasthan','Jaipur',201308,3271.56);

insert into client_master (Client_No,Client_Name,Address,State,City,Pincode,Baldue)
values ('103','Jeff Bezos','Ecovillage 4','Delhi NCR','Delhi',201309,1934.67);

insert into client_master (Client_No,Client_Name,Address,State,City,Pincode,Baldue)
values ('104','Virat Kohli','Ecovillage 5','Haryana','Faridabad',201310,17835.83);

#selecting all values 
select * from client_master;

#selecting all details where city is Delhi
select * from client_master where city='Delhi';

#displaying the client names that belong to Haryana
select client_name from client_master where state='Haryana';

#displaying Client no and client name who have baldue >=5000
select client_No,Client_Name from client_master where baldue>=5000;

#displaying client no, city and pincode of clients with city Delhi
select client_no,city,pincode from client_master where city='Delhi';

#displaying client name and balance for clients in Rajasthan
select client_name,baldue from client_master where state='Rajasthan';















