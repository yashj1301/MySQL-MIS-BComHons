
#ASSIGNMENT 18 - GROUP BY and HAVING Clauses II

show tables;
desc employees;

#displaying average salary of each department
select dept_no,avg(salary) from employees group by dept_no;

#displaying the number of employees from each department having salary greater than 2000
select dept_no,count(emp_no) 'No of Employees' from employees where salary>=2000 group by Dept_No;

#displaying employee names with hire date after 1 Jan 1960
select emp_name,hire_date from employees where hire_date>='1960-01-01';

#displaying employee names with second character 'l'
select emp_name from employees where emp_name like '_l%';

#displaying average salary of the table
select avg(salary) 'Average Salary' from employees;