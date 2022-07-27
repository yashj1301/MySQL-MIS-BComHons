
#ASSIGNMENT 5 - PRIMARY KEY CONSTRAINT

use student_record;

#creating table with primary key enrollment number
create table student (
enrollment_no int(10) primary key,
student_name varchar(20),
email_ID varchar(20),
address varchar(30),
mobile int(10),
date_of_birth date,
marks float(5,2)
);

desc student;

#inserting rows
insert into student(enrollment_no,student_name,email_ID,address,mobile,date_of_birth,marks)
values (2004993460,'Yash Jain','yash.j106@gmail.com','Ecovillage-1',1023456789,'2000-07-13',94.47);

insert into student(enrollment_no,student_name,email_ID,address,mobile,date_of_birth,marks)
values (2004993461,'Elon Musk','elon.m107@gmail.com','Ecovillage-2',1234567890,'1971-06-08',98.72);

insert into student(enrollment_no,student_name,email_ID,address,mobile,date_of_birth,marks)
values (2004993462,'Ratan Tata','ratan.t108@gmail.com','Ecovillage-3',1432567890,'1937-11-27',96.46);

select * from student;

#checking the use of primary key - the following command won't be implemented as Roll no is primary key
insert into student(enrollment_no,student_name,email_ID,address,mobile,date_of_birth,marks)
values (2004993462,'Virat Kohli','virat.k109@gmail.com','Ecovillage-4',1356527891,'1988-11-05',92.61);

#this command will be implemented as primary key value is unique
insert into student(enrollment_no,student_name,email_ID,address,mobile,date_of_birth,marks)
values (2004993463,'Ratan Tata','ratan.t108@gmail.com','Ecovillage-3',1432567890,'1937-11-27',96.46);

select * from student;
