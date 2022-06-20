-- task 13:Hiển thị thông tin các Dịch vụ đi kèm được sử dụng nhiều nhất bởi các Khách hàng đã đặt phòng. 
-- (Lưu ý là có thể có nhiều dịch vụ có số lần sử dụng nhiều như nhau).
select dvdk.ma_dich_vu_di_kem,
dvdk.ten_dich_vu_di_kem,
sum(ifnull(hdct.so_luong,0)) as total
from dich_vu_di_kem dvdk
join hop_dong_chi_tiet hdct on hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
group by hdct.ma_dich_vu_di_kem
having sum(ifnull(hdct.so_luong,0)) >= (select max(hop_dong_chi_tiet.so_luong) from hop_dong_chi_tiet );
