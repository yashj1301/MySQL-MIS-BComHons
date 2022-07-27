#ASSIGNMENT 29 - Converting ER Diagram to Relational model

create database education_institution;
use education_institution;

create table courses (
courseID varchar(6) primary key check(courseID like 'C%'),
course_name varchar(30) not null
);

desc courses;

create table student (
student_id int primary key,
student_name varchar(20),
email_ID varchar(20),
address varchar(30),
mobile int,
date_of_birth date,
marks float(5,2),
course_id varchar(6) not null check(course_id like 'C%'),
foreign key (course_id) references courses(courseID)
);

desc student;

create table lecturers (
lecturer_id varchar(6) primary key check( lecturer_id like 'L%'),
lecturer_name varchar(20),
course_id varchar(6) not null check(course_id like 'C%'),
foreign key (course_id) references courses(courseID)
);

desc lecturers;

create table student_hobby (
student_id int not null, foreign key (student_id) references student(student_id),
hobby varchar(40)
);

desc student_hobby;




