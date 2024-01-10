-- Welcome to Address Book System

-- Use case 1 : 
-- Ability to create a Address Book Service DB
-- - Use SQL Client to create DB and DB Records
create database address_book_service;
show databases; 						-- Use to display databases

-- Use case 2 : 
-- Ability to create a Address Book Table with first and  last names, address, city, 
-- state, zip, phone number and email as its attributes
use address_book_service;				-- use to apply conditions on perticular database
create table address_book(firstName varchar(15),lastName varchar(15),
address varchar(30),city varchar(15),state varchar(15),zip varchar(15),
phoneNumber varchar(10),email varchar(30));
show tables;							-- use to display all tables from existing database
