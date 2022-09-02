create database PROJ
use PROJ

create table EMPPROJECTTASKS

CREATE TABLE EMPPROJECTTASKS(

PROJECT_ID NUMBER(3) REFERENCES 

PROJECTS(PROJECT_ID),

EMPNO NUMBER(4) REFERENCES EMPLOYEES(EMPNO),

START_DATE DATE,

END_DATE DATE,

TASK VARCHAR2(25) NOT NULL,

STATUS VARCHAR2(15) NOT NULL,

PRIMARY KEY(PROJECT_ID,EMPNO));

Insert into EMPPROJECTTASKS 

(PROJECT_ID,EMPNO,START_DATE,END_DATE,TASK,STATUS)

values (401,7001,to_date('01-APR-11','DD-MON-

RR'),to_date('20-APR-11','DD-MON-RR'),'System 

Analysis','Completed');

Insert into EMPPROJECTTASKS 

(PROJECT_ID,EMPNO,START_DATE,END_DATE,TASK,STATUS)

values (401,7002,to_date('21-APR-11','DD-MON-

RR'),to_date('30-MAY-11','DD-MON-RR'),'System 

Design','Completed');
Insert into EMPPROJECTTASKS 

(PROJECT_ID,EMPNO,START_DATE,END_DATE,TASK,STATUS)

values (401,7003,to_date('01-JUN-11','DD-MON-

RR'),to_date('15-JUL-11','DD-MON-

RR'),'Coding','Completed');

Insert into EMPPROJECTTASKS 

(PROJECT_ID,EMPNO,START_DATE,END_DATE,TASK,STATUS)

values (401,7004,to_date('18-JUL-11','DD-MON-

RR'),to_date('01-SEP-11','DD-MON-

RR'),'Coding','Completed');

Insert into EMPPROJECTTASKS 

(PROJECT_ID,EMPNO,START_DATE,END_DATE,TASK,STATUS)

values (401,7006,to_date('03-SEP-11','DD-MON-

RR'),to_date('15-SEP-11','DD-MON-

RR'),'Testing','Completed');

Insert into EMPPROJECTTASKS 

(PROJECT_ID,EMPNO,START_DATE,END_DATE,TASK,STATUS)

values (401,7009,to_date('18-SEP-11','DD-MON-

RR'),to_date('05-OCT-11','DD-MON-RR'),'Code 

Change','Completed');

Insert into EMPPROJECTTASKS 

(PROJECT_ID,EMPNO,START_DATE,END_DATE,TASK,STATUS)

values (401,7008,to_date('06-OCT-11','DD-MON-

RR'),to_date('16-OCT-11','DD-MON-

RR'),'Testing','Completed');

Insert into EMPPROJECTTASKS 

(PROJECT_ID,EMPNO,START_DATE,END_DATE,TASK,STATUS)

values (401,7007,to_date('06-OCT-11','DD-MON-

RR'),to_date('22-OCT-11','DD-MON-

RR'),'Documentation','Completed');

Insert into EMPPROJECTTASKS 

(PROJECT_ID,EMPNO,START_DATE,END_DATE,TASK,STATUS)

values (401,7011,to_date('22-OCT-11','DD-MON-

RR'),to_date('31-OCT-11','DD-MON-RR'),'Sign 

of','Completed');

Insert into EMPPROJECTTASKS 

(PROJECT_ID,EMPNO,START_DATE,END_DATE,TASK,STATUS)

values (402,7010,to_date('01-AUG-11','DD-MON-

RR'),to_date('20-AUG-11','DD-MON-RR'),'System 

Analysis','Completed');

Insert into EMPPROJECTTASKS 

(PROJECT_ID,EMPNO,START_DATE,END_DATE,TASK,STATUS)

values (402,7002,to_date('22-AUG-11','DD-MON-

RR'),to_date('30-SEP-11','DD-MON-RR'),'System 

Design','Completed');

Insert into EMPPROJECTTASKS 

(PROJECT_ID,EMPNO,START_DATE,END_DATE,TASK,STATUS)

values (402,7004,to_date('01-OCT-11','DD-MON-

RR'),null,'Coding','In Progress');

SELECT * FROM CLIENTS;

SELECT * FROM DEPARTMENTS;
