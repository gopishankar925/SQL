create database task3;
use task3;
create table customer(ID int,Name varchar(20),City varchar(20));
create table orders(O_ID int, C_ID int, Product varchar(20));
insert into customer values(1,"Alica","New York"),(2,"Bob","Chicago"),(3,"Charlie","Miami");
insert into orders values(101,1,"Laptop"),(102,1,"Mouse"),(103,2,"Keyboard"),(104,4,"Monitor");
select * from customer;
select * from orders;
select c.id,c.name,o.product from customer c inner join orders o on c.id=o.c_id;
select c.id,c.name,o.product from customer c left join orders o on c.id=o.c_id;
select c.id,c.name,o.product from customer c right join orders o on c.id=o.c_id;

