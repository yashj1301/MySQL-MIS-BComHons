
#ASSIGNMENT 7 - CHECK CONSTRAINT

use student_record;

#creating table with 'check' constraint
create table departments (
Dept_No int primary key,
Dept_Name varchar(20) check(Dept_Name='Sales' or Dept_Name='Marketing' or Dept_Name='IT' or Dept_Name='Accounting'),
location varchar(20) check(location='Delhi' or location='Mumbai' or location='Noida' or location='Gurugram')
);

desc departments;

#inserting values into the table 'departments'

insert into departments(Dept_No,Dept_Name,location)
values(10,'Sale','Delhi'); #getting error due to check constraint in dept name

insert into departments(Dept_No,Dept_Name,location)
values(10,'Sales','India'); #getting error due to check constraint in location

insert into departments(Dept_No,Dept_Name,location)
values(10,'Sales','Delhi');

insert into departments(Dept_No,Dept_Name,location)
values(20,'Marketing','Mumbai');

insert into departments(Dept_No,Dept_Name,location)
values(30,'IT','Noida');

insert into departments(Dept_No,Dept_Name,location)
values(40,'Accounting','Gurugram');

select * from departments;

#creating table employees with check constraint(s)
create table employees(
Emp_No int primary key check(Emp_No between 1000 and 2000), Emp_Name varchar(20),
Designation varchar(20) check(Designation='Salesman' or Designation='Analyst' 
or Designation='Manager' or Designation='President'),
Hire_Date date, salary int check(salary>=1000 and salary<=5000),
commission int, Dept_No int check(Dept_No=10 or Dept_No=20 or Dept_No=30 or Dept_No=40),
Foreign key (Dept_No)references departments(Dept_No));

desc employees;

#inserting values into employees
insert into employees(Emp_No,Emp_Name,Designation,Hire_Date,salary,commission,Dept_No)
values(100,'Yash Jain','Manager','2000-07-13',4500,450,10); #error due to check constraint in emp no

insert into employees(Emp_No,Emp_Name,Designation,Hire_Date,salary,commission,Dept_No)
values(1000,'Yash Jain','Manage','2000-07-13',4500,450,10); #error due to check constraint in designation
 
insert into employees(Emp_No,Emp_Name,Designation,Hire_Date,salary,commission,Dept_No)
values(1000,'Yash Jain','Manager','2000-07-13',45000,450,10); #error due to check constraint in salary

insert into employees(Emp_No,Emp_Name,Designation,Hire_Date,salary,commission,Dept_No)
values(1000,'Yash Jain','Manager','2000-07-13',4500,450,100); #error due to check constraint in dept no

insert into employees(Emp_No,Emp_Name,Designation,Hire_Date,salary,commission,Dept_No)
values(1000,'Yash Jain','Manager','2000-07-13',4500,450,10);

insert into employees(Emp_No,Emp_Name,Designation,Hire_Date,salary,commission,Dept_No)
values(1500,'Ratan Tata','Analyst','1937-11-27',1500,150,30);

insert into employees(Emp_No,Emp_Name,Designation,Hire_Date,salary,commission,Dept_No)
values(2000,'Elon Musk','President','1961-06-08',3000,300,20);

select * from employees;


