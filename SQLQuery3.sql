create database Deptartments
use Deptartments

create table dep_tb2
(
 DeptNo int Primary key,
 DName VARCHAR(15) NOT NULL,
 Loc VARCHAR(20),
)
 insert into dep_tb2 values(40,'Document','Mumbai')
 select *from dep_tb2