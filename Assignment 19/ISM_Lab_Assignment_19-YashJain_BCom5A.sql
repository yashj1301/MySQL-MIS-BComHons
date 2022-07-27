
#ASSIGNMENT 19 - PRACTICE QUESTIONS

show tables;

select * from employees;

#displaying average salary of the table
select avg(salary) from employees;

#selecting minimum and maximum salary
select min(salary),max(salary) from employees;

#displaying total commission
select sum(commission) from employees;

#displaying average salary of employees who joined after 1 Jan 1960
select avg(salary) from employees where hire_date>='1960-01-01';

#displaying columns for employees who have salary >=2000 and commission>=200
select emp_name,salary,commission from employees where salary>=2000 and commission>=200;

#displaying columns for employees where name has second character 'a' and salary>=1000.
select emp_name,salary from employees where Emp_Name like '_a%' and salary>=1000;

#counting the number of employees having commission less than 500rs
select count(emp_name) from employees where commission<500;

#displaying the maximum and minimum values of commission
select max(commission) 'Max_Commission',min(commission) 'Min_Commission' from employees;

#displaying column salary, and a derived column 'new salary' which is 0.15*salary
select emp_name,salary,salary*0.15 'New Salary' from employees where salary>=1000;

















