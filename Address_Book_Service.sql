create database Address_Book_Service;
show databases;
create table address_book(id int auto_increment,firstname varchar(50),lastname varchar(50),address varchar(100),city varchar(50),
state varchar(50),zip int,phone_number int,email varchar(100),primary key (id));
select * from address_book;
insert into address_book(firstname,lastname,address,city,state,zip,phone_number,email) values ("Dhanashree","Hakke","Kavalapur",
"Sangli","Maharashtra",416416,1234567890,"dhanashreehakke7@gmail.com");
insert into address_book(firstname,lastname,address,city,state,zip,phone_number,email) values ("Dhruvi","Yamgar","Kamothe",
"Mumbai","Maharashtra",416416,1234567890,"dhruviyamgar7@gmail.com");
insert into address_book(firstname,lastname,address,city,state,zip,phone_number,email) values ("Dhruvi","Yamgar","Kamothe",
"Mumbai","Maharashtra",416416,1234567890,"dhruviyamgar7@gmail.com");
insert into address_book(firstname,lastname,address,city,state,zip,phone_number,email) values ("Ovi","Yamgar","Kamothe",
"Hydrabad","Maharashtra",416416,1234587890,"Oviyamgar7@gmail.com");
select * from address_book;
update address_book set firstname = "Sampada", lastname = "Hakke" ,address = "Mumbai",city = "Mumbai",
state = "Maharashtra",zip = "1234",phone_number = 232323232,email = "sampadahakke7@gmail.com" where firstname = "Dhanashree";  
delete from address_book where firstname = "Sampada";
select * from address_book where state ="Maharashtra" or city= "Mumbai";
select count(state) from address_book where city = "Mumbai";
select * from address_book where city = "Mumbai" order by firstname asc;
alter table address_book add addressbook_name varchar(100);
alter table address_book add type varchar(100);
update address_book set addressbook_name = "AddressBook_1", type = "Family" where id = 2 ;
update address_book set addressbook_name = "AddressBook_2", type = "Friend" where id = 3 ;
select count(type) from address_book where type = "Family";
insert into address_book(firstname,lastname,address,city,state,zip,phone_number,email,addressbook_name,type) values ("Satyjeet","Yadav","Padmale",
"Sangli","Maharashtra",416416,1234587890,"Satyabharati7@gmail.com","AddressBook_1","Family");
insert into address_book(firstname,lastname,address,city,state,zip,phone_number,email,addressbook_name,type) values ("Ravindra","Patil","Manjarde",
"Miraj","Maharashtra",416416,1234587890,"Ravi7@gmail.com","AddressBook_2","Friend");
select sum(zip) from address_book group by city;






