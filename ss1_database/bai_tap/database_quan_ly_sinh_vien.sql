create table `class` (
id int not null ,
name varchar(45) not null ,
primary key (`id`)
) ;

create table teacher (
id int not null primary key ,
name varchar(45) not null ,
age int not null ,
country varchar(45)
) ;