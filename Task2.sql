create database task2;
use task2;
create table users(
user_id int auto_increment primary key,
user_name varchar(20) unique not null,
pass varchar(20) not null,
email varchar(20) unique not null,
age int check (age>=13),
country varchar(20) default "USA");
insert into users(user_id,user_name,pass,email,age,country) values
(1001,"Gopi",2609,"gopi2609@gmail",20,"India");
select * from users;
insert into users(user_name,pass,email,age) values
("Ram",2314,"ram2341@gmail.com",21);
select * from users;
insert into users(user_name,pass,email,age,country) values
("John",4536,"john4536@gmail.com",19,"Dubai");
select * from users;
insert into users(user_name,pass,email,age,country) values    //Error for user_name & email, because we set unique constraint in these fields.
("Ram",1234,"ram2341@gmail.com",21,"Dubai");
insert into users(user_name,pass,email,age) values          //Error for age, because we set condition for above 13 years old 
("Priya",3425,"prinya3452@gmail.com",12)