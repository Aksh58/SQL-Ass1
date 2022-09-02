create database sql_ass
use sql_ass

create table client_tb1
(
 CLIENTID  INT PRIMARY KEY,
 CNAME VARCHAR(40) NOT NULL,
 ADDRESS   VARCHAR(30), 
 EMAIL  VARCHAR(30) UNIQUE, 
 PHONE VARCHAR(10),
 BUSINESS  VARCHAR(20) NOT NULL,
 )
 
 create table Departments

(

 DeptNo int Primary key,

 DName VARCHAR(15) NOT NULL,

 Loc VARCHAR(20),

)
Insert into CLIENTS 

(CLIENT_ID,CNAME,ADDRESS,EMAIL,PHONE,BUSINESS) 

values (1001,'ACME 

Utilities','Noida','contact@acmeutil.com',9567880032,'Man

ufacturing');

Insert into CLIENTS 

(CLIENT_ID,CNAME,ADDRESS,EMAIL,PHONE,BUSINESS) 

values (1002,'Trackon Consultants','Mumbai','consult@trackon.com',8734210090,

'Consultant');

Insert into CLIENTS 

(CLIENT_ID,CNAME,ADDRESS,EMAIL,PHONE,BUSINESS) 

values (1003,'MoneySaver 

Distributors','Bangalore','save@moneysaver.com',7799886

655,'Reseller');

Insert into CLIENTS 

(CLIENT_ID,CNAME,ADDRESS,EMAIL,PHONE,BUSINESS) 

values (1004,'Lawful 

Corp','Chennai','justice@lawful.com',9210342219,'Professi

onal');
Insert into DEPARTMENTS (DEPTNO,DNAME,LOC) values 

(10,'Design','Pune');

Insert into DEPARTMENTS (DEPTNO,DNAME,LOC) values 

(20,'Development','Pune');

Insert into DEPARTMENTS (DEPTNO,DNAME,LOC) values 

(30,'Testing','Mumbai');

Insert into DEPARTMENTS (DEPTNO,DNAME,LOC) values 

(40,'Document','Mumbai');

 
  
select *from client_tb1
 select *from Departments
 

