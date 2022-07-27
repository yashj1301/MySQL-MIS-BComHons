
#ASSIGNMENT 20 - SQL SUB-QUERIES

select * from employees;
select * from departments;

#fetching employee names with sales department using subqueries
SELECT Emp_name from employees where Dept_no=(Select Dept_No from departments where Dept_name='Sales');

#fetching employee mean salary with sales department using subqueries
select avg(salary) 'Mean Salary' from employees where 
Dept_no=(Select Dept_No from departments where Dept_name='Sales');

#fetching employee name and designation from marketing department
select emp_name,designation from employees where 
Dept_No=(select dept_no from departments where Dept_Name='Marketing');

#displaying average salary for each designation
select designation,avg(salary) from employees group by designation;

#displaying average salary and commission for IT department
select avg(salary),avg(commission) from employees where 
Dept_No=(select dept_no from departments where Dept_Name='IT');


