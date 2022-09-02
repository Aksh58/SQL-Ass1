create database client
use client

create table client_tb1
(
 CLIENTID  INT PRIMARY KEY,
 CNAME VARCHAR(40) NOT NULL,
 ADDRESS   VARCHAR(30), 
 EMAIL  VARCHAR(30) UNIQUE, 
 PHONE VARCHAR(10),
 BUSINESS  VARCHAR(20) NOT NULL,
 )
 insert into client_tb1 values(1004,'Lawful Corp','Chennai','justice@lawful.com','9210342219','Professional')
 select *from client_tb1

