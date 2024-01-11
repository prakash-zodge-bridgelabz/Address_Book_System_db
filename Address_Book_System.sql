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

-- Use case 7 : 
-- Ability to understand the size of address book by City and State 
-- - Here size indicates the count
select * from address_book;
insert into address_book values('Pavan','Zore','N-8, Gangapur','Aurangabad',
'Maharashtra','431007','9988776655','pavan@gmail.com');
select count(*) from address_book where city='Aurangabad' and state='Maharashtra';

-- Use case 8 : 	
-- Ability to retrieve entries sorted alphabetically by Person’s name for a given city
select * from address_book where city='Aurangabad' order by firstName asc;

-- Use case 9 : 
-- Ability to identify each Address Book with name and Type. 
-- - Here the type could Family, Friends, Profession, etc
-- - Alter Address Book to add name and type
alter table address_book add type varchar(15);
select * from address_book;
update address_book set type='Family' where firstName='Pavan';
update address_book set type='Friends' where firstName='Mrinal';
update address_book set type='Profession' where firstName='Nikhil';
update address_book set type='Profession' where firstName='Prakash';

-- Use case 10:
-- Ability to get number of contact persons i.e. count by type
select count(*) from address_book where type='Profession';

-- Use case 11: 
-- Ability to add person to both Friend and Family
insert into address_book values('Atharva','Belge','N-2, TV Center','Nashik',
'Maharashtra','444333','9879879870','atharv@gmail.com','Friends');
insert into address_book values('Atharva','Belge','N-2, TV Center','Nashik',
'Maharashtra','444333','9879879870','atharv@gmail.com','Family');