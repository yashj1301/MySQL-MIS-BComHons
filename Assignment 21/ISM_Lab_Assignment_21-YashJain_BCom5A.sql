
#ASSIGNMENT 21 - SQL SUB-QUERIES PRACTICE

select * from employees;
select * from departments;


#displaying records where salary between min value and 2500
select * from employees where salary between (select min(salary) from employees) and 2500;

#displaying number of employees from each department
select count(emp_no),dept_no from employees group by dept_no;

#displaying employee records with location Delhi
select emp_no,emp_name,designation from employees 
where dept_no=(select dept_no from departments where location='Delhi');

#displaying employee records with salary greater than average salary
select emp_name,designation from employees where 
salary>(select avg(salary) from employees);

#adding a new column location to the table employees
alter table employees add location varchar(30);

#inserting values into location column
update employees set location='Delhi' where dept_no=10;
update employees set location='Mumbai' where dept_no=20;
update employees set location='Noida' where dept_no=30;
update employees set location='Gurugram' where dept_no=40;

select * from employees;


