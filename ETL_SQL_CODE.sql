use ecom;

create table products (
product_id int primary key auto_increment,
product_name varchar(100),
p_description varchar(255),
price decimal(8,2),
stock_quantity int,
category varchar(50));


create table users(
user_id int primary key auto_increment,
username varchar(50),
email varchar(100),
address varchar(255),
u_password varchar(20));


create table orders(
order_id int primary key auto_increment,
userid int,
order_date date,
total_amt decimal(8,2),
email varchar(100),
constraint foreign key (userid) references users(user_id));

create table payments(
payment_id int primary key auto_increment,
orderid int,
payment_method varchar(30),
payment_date date,
amount decimal(8,2),
constraint foreign key (orderid) references orders(order_id));


create table reviews(
productid int,
userid int,
rating int,
review_text varchar(255),
constraint foreign key (productid) references products(product_id),
constraint foreign key (userid) references users(user_id));



drop table products;
drop table users;
drop table orders;
drop table payments;
drop table reviews;