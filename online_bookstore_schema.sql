-- Schemas

create database online_bookstore;

use online_bookstore;

drop table if exists books;
create table books(
	book_id int auto_increment primary key,
    title varchar(100),
    author varchar(100),
    genre varchar(50),
    published_year int,
    price decimal(10,2),
    stock int
);

drop table if exists customers;
create table customers(
	customer_id int auto_increment primary key,
    name varchar(100),
    email varchar(100),
    phone varchar(15),
    city varchar(50),
    country varchar(50)
);

drop table if exists orders;
create table orders(
	order_id int auto_increment primary key,
    customer_id int,
    book_id int,
    order_date date,
    quantity int,
    total_amount decimal(10,2),
	foreign key (customer_id) references customers(customer_id),
    foreign key (book_id) references books(book_id)
);

select * from books;
select * from customers;
select * from orders;




