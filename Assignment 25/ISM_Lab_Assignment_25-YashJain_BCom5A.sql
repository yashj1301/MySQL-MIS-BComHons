
#ASSIGNMENT 25 - SQL STRING FUNCTIONS

#displaying first 3 characters from name column
select substring(Emp_Name,1,3) 'First 3 characters' from employees;

#selecting distinct location values
select distinct location from employees;

#trimming spaces from right
select rtrim(Emp_Name) from employees;

#trimming spaces from left
select ltrim(Emp_Name) from employees;

#printing names after replacing words
select replace(emp_name,'A','a') from employees;

#sorting data by asc names
select * from employees order by Emp_Name;


#sorting data using multiple sort
select * from employees order by Emp_Name asc,Dept_No desc;

#selecting values excluding given values
select * from employees where emp_name not in ('Ratan Tata','Elon Musk');

#selecting records with last character a in names
select * from employees where emp_name like '%a';

#selecting records hired in Apr 2013.
select * from employees where hire_date between '2013-04-01' and '2013-04-30';

