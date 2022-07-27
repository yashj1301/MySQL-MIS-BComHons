
#ASSIGNMENT 14 - IN and NOT IN operators

use student_record;

#listing client details whose salary is between 10,000 and 20,000
select * from client_master where salary between 10000 and 20000;

#listing customers whose names begin with 'S'
select * from client_master where client_name like 'S%';

#listing clients with names 'SMITH' and 'Elon Musk'
select * from client_master where client_name='SMITH' or client_name='Elon Musk';

#using IN predicate for the same question
select * from client_master where client_name IN ('SMITH','Elon Musk');

#listing clients with names other than 'SMITH' and 'Elon Musk'
select * from client_master where client_name!='SMITH' and client_name!='Elon Musk';

#using NOT IN predicate for the same question
select * from client_master where client_name NOT IN ('SMITH','Elon Musk');

#listing details of clients living in state starting with 'M'
select * from client_master where state like 'M%';

#listing clients staying in maharashtra or delhi ncr
select * from client_master where state IN ('Delhi NCR','Maharashtra');

#listing clients with baldue <5000 and >12000
select * from client_master where baldue<=7000 or baldue>=12000;
















