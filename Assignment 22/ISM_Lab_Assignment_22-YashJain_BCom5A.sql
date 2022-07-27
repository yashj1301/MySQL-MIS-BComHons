
#ASSIGNMENT 22 - INNER JOIN CLAUSE

use student_record;

truncate table employees;

INSERT INTO employees VALUES (1000,'Yash Jain','Manager','2000-07-13',4500,450,10,'Delhi'),(1100,'Chirag Arora','Manager','2001-10-11',4000,400,10,'Bangalore'),(1200,'Sanya Garg','Analyst','1994-03-05',3000,300,20,'Kolkata'),(1300,'Sudhanshu Gupta','Manager','1991-05-17',4500,450,20,'Bangalore'),(1400,'Mukesh Ambani','Salesman','1989-11-01',4800,480,30,'Kolkata'),(1500,'Ratan Tata','Analyst','1937-11-27',1500,150,30,'Noida'),(1600,'Azim Premji','Analyst','1993-08-22',2497,240,10,'Chennai'),(1700,'Kunal Shah','Salesman','2013-04-15',4000,400,40,'Gurugram'),(2000,'Elon Musk','President','1961-06-08',3000,300,20,'Mumbai');

select * from employees;
select * from departments;

#showing number of employees in each department
select count(employees.emp_no) 'Number of Employees',departments.dept_name 'Department Name' from employees 
inner join departments on employees.Dept_No=departments.Dept_No group by departments.dept_name ;

#------------------------------------------------------------------------------------------------------------
select employees.emp_name,employees.location 'Employee Location',departments.location 'Department Location' 
from employees inner join departments on departments.Dept_No=employees.Dept_No order by emp_name;

select employees.emp_name,employees.location 'Emp Location',departments.location 'Dep Location' 
from employees inner join departments on departments.location=employees.location;

select employees.emp_name 'Name',employees.location 'Employee Location',departments.location 'Department Location' 
from employees inner join departments on employees.Dept_No=departments.Dept_No where 
departments.location=employees.location;

#selecting deparments with number of employees more than 2
select count(employees.emp_no) 'No. of Employees',departments.dept_name 'Department' from employees 
inner join departments on employees.Dept_No=departments.Dept_No group by departments.dept_name 
having count(employees.emp_no)>2;

#selecting employees with salary > 1000 and names starting with S
select emp_name from employees where emp_name like 'S%' and salary>1000;

#displaying the maximum, minimum, and average salary from the table.
select avg(salary) 'Mean Salary', max(salary) 'Max', min(salary) 'Min' from employees;

