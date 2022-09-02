create database client
use client

create table client_tb1
(
 ClientID  int Primary key,
 Cname Varchar(40) NOT NULL,
 Address   VARCHAR(30), 
 Email  Varchar(30) UNIQUE, 
 Phone varchar(10),
 Business  Varchar(20) NOT NULL,
 )
 insert into client_tb1 values(1004,'Lawful Corp','Chennai','justice@lawful.com','9210342219','Professional')
 select *from client_tb1

