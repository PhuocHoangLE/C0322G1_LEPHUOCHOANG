-- task 18:	Xóa những khách hàng có hợp đồng trước năm 2021 (chú ý ràng buộc giữa các bảng).
use furama_database ;
set foreign_key_checks = 0;
delete from khach_hang 
where kh.ma_khach_hang in (select hop_dong.ma_khach_hang from hop_dong
where year(hop_dong.ngay_lam_hop_dong)<2021);

select kh.ma_khach_hang,
kh.ho_ten
from khach_hang kh;