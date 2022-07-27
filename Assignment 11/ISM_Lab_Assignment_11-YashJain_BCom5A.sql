
#ASSIGNMENT 11 - ALTER COMMAND III

use student_record;

#dropping the column city
select * from client_master;

alter table client_master drop column city;
select * from client_master;

#modifying data type of name 
desc client_master;

alter table client_master modify Client_Name varchar(35);
desc client_master;

#renaming the table
show tables;

rename table client_master to clients;

#truncating table
create table temp(
temp_id int,
temp_name char(20),
marks int);

insert into temp(temp_id,temp_name,marks) values(1,'Yash',100);
insert into temp(temp_id,temp_name,marks) values(1,'Yash',100);
insert into temp(temp_id,temp_name,marks) values(1,'Yash',100);

select * from temp;

truncate table temp;
select * from temp;

#dropping table temp
show tables;

drop table temp;
show tables;












