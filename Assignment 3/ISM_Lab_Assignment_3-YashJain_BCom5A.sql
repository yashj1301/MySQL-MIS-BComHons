
#ASSIGNMENT 3 - BASIC TABLE COMMANDS III

use student_record;

select * from client_master;

#displaying values where city is Delhi and balance less than or equal to 5000
select * from client_master where city='Delhi' and baldue<=5000;

#displaying values where city is Delhi or Noida
select * from client_master where city='Delhi' or city='Noida';

#displaying all values where state is UP and city is Noida or Ghaziabad
select * from client_master where state='Uttar Pradesh' and city='Noida' or city='Ghaziabad';

#displaying values where city is not Delhi 
select * from client_master where city!='Delhi';

#displaying distinct city values 
select distinct city from client_master;

#deleting all records from persons table where city is Delhi
select * from persons;
delete from persons where city='Delhi';
 