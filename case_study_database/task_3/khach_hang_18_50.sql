-- Task 3 : Hiển thị thông tin của tất cả khách hàng có độ tuổi từ 
-- 18 đến 50 tuổi và có địa chỉ ở “Đà Nẵng” hoặc “Quảng Trị”.
use furama_database ;

select * from khach_hang 
where (round(datediff(curdate(),khach_hang.ngay_sinh)/365,0) >= 18 
and round(datediff(curdate(),khach_hang.ngay_sinh)/365,0) <=50
and ((khach_hang.dia_chi like '%Đà Nẵng%') 
or (khach_hang.dia_chi like '%Quảng Trị%'))
) ;
