create database demo ;
use demo ;

create table product (
id int primary key,
product_code int,
product_name varchar(50),
product_price int,
product_amount int,
product_description varchar(50),
product_status varchar(50)
);
-- Thêm thông tin cho product
insert into product
values
(1,111,'itel',200000,2,'China','100%'),
(2,222,'SamSung J7 Prime',3000000,4,'Korea','99%'),
(3,333,'Iphone 12 Promax',36000000,1,'U.S','100%');

-- Tạo Unique Index trên bảng Products (sử dụng cột productCode để tạo chỉ mục)
create unique index index_product_code 
on product(product_code) ;

-- Tạo Composite Index trên bảng Products (sử dụng 2 cột productName và productPrice)
create unique index index_product_name_price 
on product(product_name,product_price) ;

-- Sử dụng câu lệnh EXPLAIN để biết được câu lệnh SQL của bạn thực thi như nào
explain select product_name , product_price from product
where product_name = 'Iphone 12 Promax' ;

-- Tạo view lấy về các thông tin: productCode, productName, productPrice, productStatus từ bảng products.
create view product_view as
select product_code,
product_name,
product_price,
product_status 
from product ;
select * from product_view ; 

-- Tiến hành sửa đổi view
create or replace view product_view as
select product_code ,
product_price ,
product_status 
from product ;

select * from product_view ;

-- Tiến hành xoá view
drop view product_view ;

-- Tạo store procedure lấy tất cả thông tin của tất cả các sản phẩm trong bảng product
delimiter //
create procedure sp_find_products()  
begin
select * from product ;
end ;
// delimiter ;
call sp_find_products() ;

 -- Tạo store procedure thêm một sản phẩm mới
 delimiter //
 create procedure new_product(id int ,
 product_code int ,
 product_name varchar(50),
 product_price double ,
 product_amount int ,
 product_description varchar(50) ,
 product_status varchar(50)) 
 begin
 insert into product 
 value (id,product_code,product_name,product_price,product_amount,product_description,product_status) ;
 end
 // delimiter ;
 call new_product(4,444,'Iphone 10',20000000,1,'U.S','100%') ;
 call new_product(5,555,'Iphone 11',20000002,2,'U.g','10%') ;
 
 -- Tạo store procedure sửa thông tin sản phẩm theo id

delimiter //
create procedure edit_product( id int ,
product_code int ,
product_name varchar(50),
product_price int ,
product_amount int ,
product_description varchar(50) ,
product_status varchar(50)
)
begin
update product
set product_code = product_code,
product_name = product_name,
product_price = product_price,
product_amount = product_amount,
product_description = product_description,
product_status = product_status
where product.id = id ;
end ; //
delimiter ;
call edit_product(4,444,'Iphone 10',20000000,6,'U.S','100%');

-- Tạo store procedure xoá sản phẩm theo id
delimiter //
create procedure delete_product (id int)
begin 
delete 
from product
where product.id = id;
end ; //
delimiter ;
call delete_product(4);