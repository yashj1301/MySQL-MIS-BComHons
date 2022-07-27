
#ASSIGNMENT 23 - INNER JOIN CLAUSE II

#Calculate average salary of each department.
select departments.dept_name 'Department',avg(employees.salary) 'Mean Salary' from employees 
inner join departments on employees.Dept_No=departments.Dept_No
group by departments.dept_name;

#Find out the department id where the number of employees is more than 2.
select dept_no 'Dept Id',count(emp_no) 'No of Employees' from employees group by dept_no having count(emp_no)>2;

#Display the distinct location from employee table in descending order.
select distinct location from employees order by location desc;

#Update the salary of all employees whose location is Chennai by 20%.
update employees set salary=salary*1.02 where location='Chennai';
select * from employees where location='Chennai';

#Display the employee name whose commission is more than the average commission.
select emp_name,commission from employees where 
commission > (select avg(commission) from employees);
