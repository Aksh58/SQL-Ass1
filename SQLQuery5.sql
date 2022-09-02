CREATE DATABASE TB
USE TB

CREATE TABLE PROJECTS
(
PROJECT_ID INT(3)  PRIMARY KEY,
DESCR VARCHAR2(30) NOT NULL,
START_DATE DATE,
PLANNED_END DATE DATE,
ACTUAL_END_DATE DATE,
BUDGET NUMBER(10) CHECK(BUDGET > 0),
CLIENT_ID NUMBER(4) REFERENCES CLIENTS(CLIENT_ID)
);
Insert into PROJECTS (PROJECT_ID,DESCR,START_DATE,PLANNED_END_DATE,ACTUAL_END_DATE,BUDGET,CLIENT_ID) values
(401,'Inventory',to_date('01-APR-11','DD-MON-RR'),to_date('01-OCT-11','DD-MON-RR'),to_date('31-OCT-11','DD-MON-RR'),150000,1001);
Insert into PROJECTS (PROJECT_ID,DESCR,START_DATE,PLANNED_END_DATE,ACTUAL_END_DATE,BUDGET,CLIENT_ID) values 
(402,'Accounting',to_date('01-AUG-11','DD-MON-RR'),to_date('01-JAN-12','DD-MON-RR'),null,500000,1002);
Insert into PROJECTS (PROJECT_ID,DESCR,START_DATE,PLANNED_END_DATE,ACTUAL_END_DATE,BUDGET,CLIENT_ID) values 
(403,'Payroll',to_date('01-OCT-11','DD-MON-RR'),to_date('31-DEC-11','DD-MON-RR'),null,75000,1003);
Insert into PROJECTS (PROJECT_ID,DESCR,START_DATE,PLANNED_END_DATE,ACTUAL_END_DATE,BUDGET,CLIENT_ID) values 
(404,'Contact Mgmt',to_date('01-NOV-11','DD-MON-RR'),to_date('31-DEC-11','DD-MON-RR'),null,50000,1004);
SELECT *FROM PROJECTS
