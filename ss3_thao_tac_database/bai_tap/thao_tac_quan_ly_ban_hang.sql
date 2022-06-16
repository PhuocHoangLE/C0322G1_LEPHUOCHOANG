use quan_ly_ban_hang ;

insert into customer
value (1,'Minh Quan',10) ,
(2,'Ngoc Oanh',20) ,
(3,'Hong Ha',50);

insert into `order`
values (1,1,'2006/3/21',Null),
(2,2,'2006/3/23',Null),
(3,1,'2006/3/16',Null);

insert into product
value (1,'May Giat',3) ,
(2,'Tu Lanh',5) ,
(3,'Dieu Hoa',7) ,
(4,'Quat',1) ,
(5,'Bep Dien',2)  ;

insert into order_detail
values (1,1,3),
(1,3,7),
(1,4,2),
(2,1,1),
(3,1,8),
(2,5,4),
(2,3,3);

-- Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order
select 
order_id , order_date , order_total_price 
from `order` ;

-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách
select 
customer_name , product_name
from customer
join `order` on customer.customer_id = `order`.customer_id 
join order_detail on `order`.order_id = order_detail.order_id
join `product` on order_detail.product_id = product.product_id ;

-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào
select
customer.customer_name 
from customer
where customer.customer_name not in (select customer.customer_name
from
customer 
join `order` on customer.customer_id = `order`.customer_id
join order_detail on order_detail.order_id = `order`.order_id
join product on product.product_id = order_detail.product_id);

-- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn (giá một hóa đơn được tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn.
-- Giá bán của từng loại được tính = odQTY*pPrice)
select 
`order`.order_id , `order`.order_date ,
sum(order_detail.order_qty * product.product_price) as gia_ban 
from 
`order` join
order_detail on order_detail.order_id = `order`.order_id
        join
product on product.product_id = order_detail.product_id
group by order_id ;        
        

 