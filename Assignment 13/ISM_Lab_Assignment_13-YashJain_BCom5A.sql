
#ASSIGNMENT 13 - ORDER BY and LIKE Clauses

use student_record;

#sorting the table client_master according to name 
select * from client_master order by Client_Name; #ascending order

select * from client_master order by Client_Name desc; #descending order

#finding names of clients starting with 'E'
select client_name from client_master where client_name like 'E%';

#finding names of clients with 2nd character 'A' in their names
select client_name from client_master where client_name like '_A%';

#Listing the customers whose names have second character 'A' or 'S
select client_name from client_master where client_name like '_A%' or client_name like '_L%';

#Listing the customers whose names begin with the letters 'SM' and it has five letter word.
select client_name from client_master where Client_Name like 'SM___';

