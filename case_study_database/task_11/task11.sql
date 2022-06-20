-- task 11 : Hiển thị thông tin các dịch vụ đi kèm đã được sử dụng bởi những khách hàng có ten_loai_khach là 
-- “Diamond” và có dia_chi ở “Vinh” hoặc “Quảng Ngãi”.
select dvdk.ma_dich_vu_di_kem,
dvdk.ten_dich_vu_di_kem,
dvdk.gia,
dvdk.don_vi,
dvdk.trang_thai,
lk.ten_loai_khach,
kh.dia_chi
from dich_vu_di_kem dvdk 
join hop_dong_chi_tiet hdct on hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
join hop_dong hd on hdct.ma_hop_dong = hd.ma_hop_dong
join khach_hang kh on kh.ma_khach_hang = hd.ma_khach_hang
join loai_khach lk on lk.ma_loai_khach = kh.ma_loai_khach
where lk.ten_loai_khach = 'Diamond' and (kh.dia_chi like '%Vinh%' or kh.dia_chi like '%Quãng Ngãi%');