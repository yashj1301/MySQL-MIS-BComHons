
#ASSIGNMENT 24 - CROSS JOIN AND LEFT JOIN CLAUSES

use student_record;

#creating both tables
create table movies (
id int primary key,
title varchar(40),
category varchar(25)
);

desc movies;

create table members (
id int primary key,
first_name varchar(15),
last_name varchar(15),
movie_id int,
foreign key (movie_id) references movies(id)
);

desc members;

#inserting rows in both tables
insert into movies(id,title,category) values (1,'Assassins Creed: Embers','Animation'),(2,'Real Steel(2012)','Animation'),(3,'Alvin and the Chipmunks','Animation'),(4,'Adventures of Tin Tin','Animation'),(5,'Safe(2012)','Action'),(6,'Safe House(2012)','Action');

select * from movies;

insert into members(id,first_name,last_name,movie_id) values (1,'Adam','Smith',1),(2,'Ravi','Kumar',2),(3,'Susan','Davidson',5),(4,'Jenny','Adrianna',4),(6,'Lee','Pong',5);

select * from members;

#showing all member records with all movie records
select * from movies cross join members;

#showing records for members who rented movies
select me.first_name,me.last_name,mo.title from members me, movies mo 
where me.movie_id=mo.id;

select me.first_name,me.last_name,mo.title from members me inner join movies mo
on me.movie_id=mo.id;

#showing records for all movies along with members who rented them
select mo.title,me.first_name,me.last_name from movies mo left join 
members me on me.movie_id=mo.id;
