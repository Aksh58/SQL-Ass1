create database Dept
use Dept

create table Departments
(
 DeptNo int Primary key,
 DName VARCHAR(15) NOT NULL,
 Loc VARCHAR(20),
)
 insert into Departments values(40,'Document','Mumbai')
 select *from Departments
