create database sql_ass
use sql_ass

create table clients
(
 CLIENTID  INT PRIMARY KEY,
 CNAME VARCHAR(40) NOT NULL,
 ADDRESS   VARCHAR(30), 
 EMAIL  VARCHAR(30) UNIQUE, 
 PHONE VARCHAR(10),
 BUSINESS  VARCHAR(20) NOT NULL);
 
 create table Departments
(
 DeptNo INT Primary key,
 DName VARCHAR(15) NOT NULL,
 Loc VARCHAR(20));
 
CREATE TABLE EMPLOYEES
(
EMPNO INT PRIMARY KEY,
ENAME VARCHAR(20) NOT NULL,
JOB VARCHAR(15),
SALARY INT CHECK (SALARY > 0),
DEPTNO INT REFERENCES DEPARTMENTS(DEPTNO));

CREATE TABLE PROJECTS
(
PROJECT_ID INT PRIMARY KEY,
DESCR VARCHAR2(30) NOT NULL,
START_DATE DATE,
PLANNED_END DATE DATE,
ACTUAL_END_DATE DATE,
BUDGET INT CHECK(BUDGET > 0),
CLIENT_ID INT REFERENCES CLIENTS(CLIENT_ID));

CREATE TABLE EMPPROJECTTASKS(
PROJECT_ID INT REFERENCES 
PROJECTS(PROJECT_ID),
EMPNO INT REFERENCES EMPLOYEES(EMPNO),
START_DATE DATE,
END_DATE DATE,
TASK VARCHAR2(25) NOT NULL,
STATUS VARCHAR2(15) NOT NULL,
PRIMARY KEY(PROJECT_ID,EMPNO));


Insert into CLIENTS (CLIENT_ID,CNAME,ADDRESS,EMAIL,PHONE,BUSINESS) values (1001,'ACME Utilities','Noida','contact@acmeutil.com',9567880032,'Manufacturing');
Insert into CLIENTS (CLIENT_ID,CNAME,ADDRESS,EMAIL,PHONE,BUSINESS) values (1002,'Trackon Consultants','Mumbai','consult@trackon.com',8734210090,'Consultant');
Insert into CLIENTS (CLIENT_ID,CNAME,ADDRESS,EMAIL,PHONE,BUSINESS) values (1003,'MoneySaver Distributors','Bangalore','save@moneysaver.com',7799886655,'Reseller');
Insert into CLIENTS (CLIENT_ID,CNAME,ADDRESS,EMAIL,PHONE,BUSINESS) values (1004,'Lawful Corp','Chennai','justice@lawful.com',9210342219,'Professional');

Insert into DEPARTMENTS (DEPTNO,DNAME,LOC) values (10,'Design','Pune');
Insert into DEPARTMENTS (DEPTNO,DNAME,LOC) values (20,'Development','Pune');
Insert into DEPARTMENTS (DEPTNO,DNAME,LOC) values (30,'Testing','Mumbai');
Insert into DEPARTMENTS (DEPTNO,DNAME,LOC) values (40,'Document','Mumbai');

Insert into EMPLOYEES (EMPNO,ENAME,JOB,SALARY,DEPTNO) values (7001,'Sandeep','Analyst',25000,10);
Insert into EMPLOYEES (EMPNO,ENAME,JOB,SALARY,DEPTNO) values (7002,'Rajesh','Designer',30000,10);
Insert into EMPLOYEES (EMPNO,ENAME,JOB,SALARY,DEPTNO) values (7003,'Madhav','Developer',40000,20);
Insert into EMPLOYEES (EMPNO,ENAME,JOB,SALARY,DEPTNO) values (7004,'Manoj','Developer',40000,20);
Insert into EMPLOYEES (EMPNO,ENAME,JOB,SALARY,DEPTNO) values (7005,'Abhay','Designer',35000,10);
Insert into EMPLOYEES (EMPNO,ENAME,JOB,SALARY,DEPTNO) values (7006,'Uma','Tester',30000,30);
Insert into EMPLOYEES (EMPNO,ENAME,JOB,SALARY,DEPTNO) values (7007,'Gita','Tech. Writer',30000,40);
Insert into EMPLOYEES (EMPNO,ENAME,JOB,SALARY,DEPTNO) values (7008,'Priya','Tester',35000,30);
Insert into EMPLOYEES (EMPNO,ENAME,JOB,SALARY,DEPTNO) values (7009,'Nutan','Developer',45000,20);
Insert into EMPLOYEES (EMPNO,ENAME,JOB,SALARY,DEPTNO) values (7010,'Smita','Analyst',20000,10);
Insert into EMPLOYEES (EMPNO,ENAME,JOB,SALARY,DEPTNO) values (7011,'Anand','Project Mgr',65000,10);

Insert into PROJECTS (PROJECT_ID,DESCR,START_DATE,PLANNED_END_DATE,ACTUAL_END_DATE,BUDGET,CLIENT_ID) values (401,'Inventory',to_date('01-APR-11','DD-MON-RR'),to_date('01-OCT-11','DD-MON-RR'),to_date('31-OCT-11','DD-MON-RR'),150000,1001);
Insert into PROJECTS (PROJECT_ID,DESCR,START_DATE,PLANNED_END_DATE,ACTUAL_END_DATE,BUDGET,CLIENT_ID) values (402,'Accounting',to_date('01-AUG-11','DD-MON-RR'),to_date('01-JAN-12','DD-MON-RR'),null,500000,1002);
Insert into PROJECTS (PROJECT_ID,DESCR,START_DATE,PLANNED_END_DATE,ACTUAL_END_DATE,BUDGET,CLIENT_ID) values (403,'Payroll',to_date('01-OCT-11','DD-MON-RR'),to_date('31-DEC-11','DD-MON-RR'),null,75000,1003);
Insert into PROJECTS (PROJECT_ID,DESCR,START_DATE,PLANNED_END_DATE,ACTUAL_END_DATE,BUDGET,CLIENT_ID) values (404,'Contact Mgmt',to_date('01-NOV-11','DD-MON-RR'),to_date('31-DEC-11','DD-MON-RR'),null,50000,1004);

Insert into EMPPROJECTTASKS (PROJECT_ID,EMPNO,START_DATE,END_DATE,TASK,STATUS)values (401,7001,to_date('01-APR-11','DD-MORR'),to_date('20-APR-11','DD-MON-RR'),'System Analysis','Completed');
Insert into EMPPROJECTTASKS (PROJECT_ID,EMPNO,START_DATE,END_DATE,TASK,STATUS)values (401,7002,to_date('21-APR-11','DD-MON-RR'),to_date('30-MAY-11','DD-MON-RR'),'System Design','Completed');
Insert into EMPPROJECTTASKS (PROJECT_ID,EMPNO,START_DATE,END_DATE,TASK,STATUS)values (401,7003,to_date('01-JUN-11','DD-MON-RR'),to_date('15-JUL-11','DD-MON-RR'),'Coding','Completed');
Insert into EMPPROJECTTASKS (PROJECT_ID,EMPNO,START_DATE,END_DATE,TASK,STATUS)values (401,7004,to_date('18-JUL-11','DD-MON-RR'),to_date('01-SEP-11','DD-MON-RR'),'Coding','Completed');
Insert into EMPPROJECTTASKS (PROJECT_ID,EMPNO,START_DATE,END_DATE,TASK,STATUS)values (401,7006,to_date('03-SEP-11','DD-MON-RR'),to_date('15-SEP-11','DD-MON-RR'),'Testing','Completed');
Insert into EMPPROJECTTASKS (PROJECT_ID,EMPNO,START_DATE,END_DATE,TASK,STATUS)values (401,7009,to_date('18-SEP-11','DD-MON-RR'),to_date('05-OCT-11','DD-MON-RR'),'Code Change','Completed');
Insert into EMPPROJECTTASKS (PROJECT_ID,EMPNO,START_DATE,END_DATE,TASK,STATUS)values (401,7008,to_date('06-OCT-11','DD-MON-RR'),to_date('16-OCT-11','DD-MON-RR'),'Testing','Completed');
Insert into EMPPROJECTTASKS (PROJECT_ID,EMPNO,START_DATE,END_DATE,TASK,STATUS)values (401,7007,to_date('06-OCT-11','DD-MON-RR'),to_date('22-OCT-11','DD-MON-RR'),'Documentation','Completed');
Insert into EMPPROJECTTASKS (PROJECT_ID,EMPNO,START_DATE,END_DATE,TASK,STATUS)values (401,7011,to_date('22-OCT-11','DD-MON-RR'),to_date('31-OCT-11','DD-MON-RR'),'Sign of','Completed');
Insert into EMPPROJECTTASKS (PROJECT_ID,EMPNO,START_DATE,END_DATE,TASK,STATUS) values (402,7010,to_date('01-AUG-11','DD-MON-RR'),to_date('20-AUG-11','DD-MON-RR'),'System Analysis','Completed');
Insert into EMPPROJECTTASKS (PROJECT_ID,EMPNO,START_DATE,END_DATE,TASK,STATUS)values (402,7002,to_date('22-AUG-11','DD-MON-RR'),to_date('30-SEP-11','DD-MON-RR'),'System Design','Completed');
Insert into EMPPROJECTTASKS(PROJECT_ID,EMPNO,START_DATE,END_DATE,TASK,STATUS)values (402,7004,to_date('01-OCT-11','DD-MON-RR'),null,'Coding','In Progress');

SELECT * FROM CLIENTS;

SELECT * FROM DEPARTMENTS;

SELECT * FROM EMPLOYEES;

SELECT * FROM PROJECTS;

SELECT * FROM EMPPROJECTTASKS;

