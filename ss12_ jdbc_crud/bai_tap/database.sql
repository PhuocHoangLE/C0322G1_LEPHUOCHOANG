drop database demo ;
CREATE DATABASE demo;
USE demo;

create table users (
 id  int(3) NOT NULL AUTO_INCREMENT,
 name varchar(120) NOT NULL,
 email varchar(220) NOT NULL,
 address varchar(120),
 PRIMARY KEY (id)
);
insert into users(name, email, address) values('Minh','minh@codegym.vn','Viet Nam');
insert into users(name, email, address) values('Kante','kante@che.uk','Kenia');