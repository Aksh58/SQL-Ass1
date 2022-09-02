create database employee
use employee

create table employee_tb3
(
 EmpNo int Primary key,
 Ename Varchar(20) NOT NULL,
 Job  VARCHAR(20), 
 Salary int check(Salary>0),
 DeptNo int REFERENCES Departments(DeptNo));

 insert into employee_tb3 values(7001,'Sandeeep','Analyst',25000,10)
 insert into employee_tb3 values(7002,'Rajesh','Designer',30000,10)
 insert into employee_tb3 values(7003,'Madhva','Designer',40000,20)
 insert into employee_tb3 values(7004,'Manoj','Developer',40000,20)
 insert into employee_tb3 values(7005,'Abhay','Designer',35000,10)
 insert into employee_tb3 values(7006,'Uma','Tester',30000,30)
 insert into employee_tb3 values(7007,'Gita','Tech Writer',30000,40)
 insert into employee_tb3 values(7008,'Priya','Tester',35000,30)
 insert into employee_tb3 values(7009,'Nutan','Developer',45000,20)
 insert into employee_tb3 values(7010,'Smita','Analyst',20000,10)
 insert into employee_tb3 values(7011,'Anand','Project Mgr',65000,10)
 select *from employee_tb3

