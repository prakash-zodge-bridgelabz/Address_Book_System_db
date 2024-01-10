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
phoneNumber varchar(11),email varchar(30));
show tables;							-- use to display all tables from existing database

-- Use case 3 : 
-- Ability to insert new Contacts to Address Book
insert into address_book values
('Prakash','Zodge','N-5, CIDCO','Aurangabad',
'Maharashtra','431003','9876543210','prakash@gmail.com'),

('Pavan','Zore','N-8, Gangapur','Aurangabad',
'Maharashtra','431007','9988776655','pavan@gmail.com'),

('Mrinal','Keshav','N-1, Pisadevi','Patna',
'Uttar Pradesh','234123','9998887776','mrinal@gmail.com'),

('Nikhil','Namdev','N-9, Bajrang Chowk','Phulambri',
'Kannad','565291','8889997653','nikhil@gmail.com');
select * from address_book; 						-- Use to display all tables

-- Use case 4 : 
-- Ability to edit existing contact person using their name
SET SQL_SAFE_UPDATES = 0; 							-- Is use to convert from safe mode to unsafe mode
update address_book 
set email='zodge@gmail.com'
where firstName='Prakash';
select * from address_book;

-- Use case 5 : 
-- Ability to delete a person using person's name
delete from address_book where firstName='Pavan';
select * from address_book;

-- Use case 6 :
-- Ability to Retrieve Person belonging to a City or State from the Address Book
select * from address_book where city='Aurangabad';