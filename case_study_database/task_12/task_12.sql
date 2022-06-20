-- task 12:Hiển thị thông tin ma_hop_dong, ho_ten (nhân viên), ho_ten (khách hàng), so_dien_thoai (khách hàng), 
-- ten_dich_vu, so_luong_dich_vu_di_kem (được tính dựa trên việc sum so_luong ở dich_vu_di_kem), tien_dat_coc của tất cả các dịch vụ 
-- đã từng được khách hàng đặt vào 3 tháng cuối năm 2020 nhưng chưa từng được khách hàng đặt vào 6 tháng đầu năm 2021.
select hd.ma_hop_dong,
nv.ho_ten,
kh.ho_ten,
kh.so_dien_thoai,
dv.ten_dich_vu,
sum(ifnull(hdct.so_luong,0)) as so_luong_dich_vu_di_kem,
hd.tien_dat_coc
from hop_dong hd
join nhan_vien nv on hd.ma_nhan_vien = nv.ma_nhan_vien
join khach_hang kh on kh.ma_khach_hang = hd.ma_khach_hang
join dich_vu dv on dv.ma_dich_vu = hd.ma_dich_vu
left join hop_dong_chi_tiet hdct on hdct.ma_hop_dong = hd.ma_hop_dong
where  hd.ma_hop_dong in (
select hd.ma_hop_dong from hop_dong where (month(hd.ngay_lam_hop_dong) between 10 and 12) and year(hd.ngay_lam_hop_dong)=2020)
and hd.ma_hop_dong not in (select hd.ma_hop_dong from hop_dong where (month(hd.ngay_lam_hop_dong) between 1 and 6) and year(hd.ngay_lam_hop_dong)=2021)
group by hd.ma_hop_dong;