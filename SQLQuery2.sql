create database DB
use DB

create table tblDept
(
	DeptNo int primary key,
	DName varchar(30),
	Loc varchar(30)
)

-- create table Employee
create table tblEmp
(  EmpNo int Primary Key,
   EName varchar(30),
   Job varchar(30),
   MgrId int,
   HireDate Date,
   Salary float,
   Comm int,
   DeptNo int references tblDept(DeptNo)
)

-- Select everthing (formatted date) from table Employee
select EmpNo, EName, Job, MgrId, Format(HireDate,'dd-MMM-yy'), Salary, Comm, DeptNo from tblEmp;

-- Select everything from table Department
select * from tblDept;

--Insert into table Department
insert into tblDept(DeptNo,DName,Loc) Values(10,'ACCOUNTING','NEW YORK'),
insert into tblDept(DeptNo,DName,Loc) Values(20,'RESEARCH','DALLAS'),
insert into tblDept(DeptNo,DName,Loc) Values(30,'SALES','CHICAGO'),
insert into tblDept(DeptNo,DName,Loc) Values(40,'OPERATIONS','BOSTON')

-- Insert into table Employee
Insert into tblEmp Values(7369,'SMITH','CLERK',7902,'1980-12-17',800,NULL,20)
Insert into tblEmp Values(7369,'SMITH','CLERK',7902,'1980-12-17',800,NULL,20)
Insert into tblEmp Values(7499,'ALLEN','SALESMAN',7698,'1981-02-20',1600,300,30),
Insert into tblEmp Values(7521,'WARD','SALESMAN',7698,'1981-02-22',1250,500,30),
Insert into tblEmp Values(7566,'JONES','MANAGER',7839,'1981-04-02',2975, null,20),
Insert into tblEmp Values(7654,'MARTIN','SALESMAN',7698,'1981-09-28',1250,1400,30),
Insert into tblEmp Values(7698,'BLAKE','MANAGER',7839,'1981-05-01',2850,null,30),
Insert into tblEmp Values(7782,'CLARK','MANAGER',7839,'1981-06-09',2450,null,10),
Insert into tblEmp Values(7788,'SCOTT','ANALYST',7566,'1987-04-19',3000,null,20),
Insert into tblEmp Values(7839,'KING','PRESIDENT',null,'1981-11-17',5000,null,10),
Insert into tblEmp Values(7844,'TURNER','SALESMAN',7698,'1981-09-08',1500,0,30),
Insert into tblEmp Values(7876,'ADAMS','CLERK',7788,'1987-05-23',1100,null,20),
Insert into tblEmp Values(7900,'JAMES','CLERK',7698,'1981-12-03',950,null,30),
Insert into tblEmp Values(7902,'FORD','ANALYST',7566,'1981-12-03',3000,null,20),
Insert into tblEmp Values(7934,'MILLER','CLERK',7782,'1982-01-23',1300,null,10)


--ASSIGNMENT QUESTIONS

-- 1. List all employees whose name begins with 'A'. 
select * from tblEmp where EName like 'A%'

-- 2. Select all those employees who don't have a manager. 
select * from tblEmp where MgrId is null;

-- 3. List employee name, number and salary for those employees who earn in the range 1200 to 1400.
select EmpNo, EName, Salary from tblEmp where Salary between 1200 and 1400

-- 4. Give all the employees in the RESEARCH department a 10% pay rise. Verify that this has been done by listing all their details before and after the rise. 
   -- before altering
   select * from tblEmp
   where DeptNo = (Select DeptNo from tblDept where DName='Research')
   --altering
   update tblEmp
   set Salary = Salary+(Salary*10/100)
   where DeptNo = (Select DeptNo from tblDept where DName='Research')
   --after altering
   select * from tblEmp
   where DeptNo = (Select DeptNo from tblDept where DName='Research')

-- 5. Find the number of CLERKS employed. Give it a descriptive heading. 
   select count(*) as 'Number of Clerk' from tblEmp 
   where job='CLERK'

-- 6. Find the average salary for each job type and the number of people employed in each job. 
   select Job, Count(*), Avg(Salary) as 'Average Salary' from tblEmp
   group by Job

-- 7. List the employees with the lowest and highest salary. 
   select * from tblEmp
   where Salary in (select min(Salary) from tblEmp) or Salary in (select max(Salary) from tblEmp)


-- 8. List full details of departments that don't have any employees.
   select * from tblDept
   where DeptNo not in (select DeptNo from tblEmp)

-- 9. Get the names and salaries of all the analysts earning more than 1200 who are based in department 20. Sort the answer by ascending order of name. 
   select EName, Salary from tblEmp
   where Job='ANALYST' and Salary > 1200 and DeptNo = 20
   order by EName
   
-- 10. For each department, list its name and number together with the total salary paid to employees in that department. 
   select e.DeptNo, d.Dname, sum(e.Salary) as 'Total Salary'
   from tblEmp e , tblDept d 
   where e.DeptNo = d.DeptNo
   group by e.DeptNo, d.DName
   

-- 11. Find out salary of both MILLER and SMITH.
   select Ename, Salary from tblEmp
   where EName in ('MILLER','SMITH')

-- 12. Find out the names of the employees whose name begin with ‘A’ or ‘M’. 
   select EName from tblEmp
   where EName like '[AM]%'

-- 13. Compute yearly salary of SMITH. 
   Select EName , Salary*12 as 'Yearly Salary'
   from tblEmp
   where EName='SMITH'

-- 14. List the name and salary for all employees whose salary is not in the range of 1500 and 2850. 
   select EName, Salary from tblEmp
   where Salary not between 1500 and 2850


-- SET - II
-- 1. Retrieve a list of MANAGERS. 
   select distinct(mgr.EName) as 'Manager'
   from tblEmp emp join tblEmp mgr
   on emp.MgrId = mgr.EmpNo

-- 2. Find out the names and salaries of all employees earning more than 1000 per month. 
   select EName, Salary from tblEmp
   where Salary > 1000

-- 3. Display the names and salaries of all employees except JAMES.
   select EName, Salary from tblEmp
   where EName != 'James'

-- 4. Find out the details of employees whose names begin with ‘S’. 
   select * from tblEmp
   where EName like 'S%'

-- 5. Find out the names of all employees that have ‘A’ anywhere in their name. 
   select * from tblEmp
   where EName like '%A%'

-- 6. Find out the names of all employees that have ‘L’ as their third character in their name. 
   select * from tblEmp
   where EName like '__L%'

-- 7. Compute daily salary of JONES. 
   select EName, (Salary/30) as 'Daily Salary' from tblEmp
   where EName = 'Jones'

-- 8. Calculate the total monthly salary of all employees. 
   select SUM(Salary) as 'Total Monthly Salary' from tblEmp

-- 9. Print the average annual salary . 
   select AVG(Salary*12) as 'Average Annual Salary' from tblEmp

-- 10. Select the name, job, salary, department number of all employees except SALESMAN 
--     from department number 30. 
   select e.EmpNo, e.EName, e.Job, e.Salary, e.DeptNo from tblEmp e
   except (select empNo, EName, Job, Salary, DeptNo from tblEmp 
   where DeptNo = 30 and Job = 'Salesman') 
  

-- 11. List unique departments of the EMP table. 
   select distinct(e.DeptNo), d.DName from tblEmp e join tblDept d
   on e.DeptNo = d.DeptNo

-- 12. List the name and salary of employees who earn more than 1500 and are in department 10 or 30.
--     Label the columns Employee and Monthly Salary respectively.
   select EName as 'Employee', Salary as 'Monthly Salary', DeptNo
   from tblEmp
   where Salary > 1500 and DeptNo in (10,30)

-- 13. Display the name, job, and salary of all the employees whose job is MANAGER or 
--     ANALYST and their salary is not equal to 1000, 3000, or 5000. 
   select EName, Job, Salary from tblEmp
   where Job in ('Manager', 'Analyst') and Salary not in (1000,3000,5000)

-- 14. Display the name, salary and commission for all employees whose commission 
--     amount is greater than their salary increased by 10%. 
   select EName, Salary, Comm from tblEmp
   where Comm > (Salary + (Salary * 10/100))
   
-- 15. Display the name of all employees who have two Ls in their name and are in 
--     department 30 or their manager is 7782. 
       select * from tblEmp
       where EName like '%L%l%' and DeptNo=30 or MgrId=7782

-- 16. Display the names of employees with experience of over 10 years and under 20 yrs.
--     Count the total number of employees. 
       
       select EName, DateDiff(Year,DateName(YEAR,HireDate),DateName(YEAR,GETDATE())) as Experience
       from tblEmp
       where DateDiff(Year,DateName(YEAR,HireDate),DateName(YEAR,GETDATE()))  >10 and 
	   DateDiff(Year,DateName(YEAR,HireDate),DateName(YEAR,GETDATE())) < 20
	   
       select eName, year(getdate())-year(hiredate) from tblEmp
       where year(getdate())-year(hiredate)>10 and
	   year(getdate())-year(hiredate)<20

	 
-- 17. Retrieve the names of departments in ascending order and their employees in 
--     descending order. 
       select d.DeptNo, d.DName, e.EName from tblDept d, tblEmp e
       where d.DeptNo = e.DeptNo
       order by d.DName, e.EName desc

-- 18. Find out experience of MILLER.
   select EName, DateDiff(Year,DateName(YEAR,HireDate),DateName(YEAR,GETDATE())) as Experience
   from tblEmp
   where EName='Miller'
   
   select eName, year(getdate())-year(hiredate) from tblEmp
   where ename='Miller'
