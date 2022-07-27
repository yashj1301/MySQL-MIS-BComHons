
#ASSIGNMENT 17 - GROUP BY and HAVING Clauses

show tables;

select * from client_master;

#displaying number of clients in each city
select City,count(client_no) 'No of clients' from client_master group by city;

#displaying the number of clients in each designation
select designation,count(client_no) 'No of Clients' from client_master group by designation;

#displaying the cities with no of clients greater than equal to 2
select City,count(client_no) 'No of Clients' from client_master group by city having count(client_no)>=2;

#displaying the designations with no of clients greater than equal to 2
select designation,count(client_no) 'No of Clients' from client_master group by designation 
having count(Client_No)>=2;

#displaying cities where baldue is greater than 5000 and no of clients is greater than equal to 2000
select city,count(client_no) from client_master where baldue>=5000 group by city having count(Client_No)>=2;










