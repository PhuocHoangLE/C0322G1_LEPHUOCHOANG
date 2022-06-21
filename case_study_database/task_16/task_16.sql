-- Xóa những Nhân viên chưa từng lập được hợp đồng nào từ năm 2019 đến năm 2021.
select * from nhan_vien ;
delete from nhan_vien
where nhan_vien.ma_nhan_vien not in ( select distinct ma_nhan_vien from hop_dong
where year(hop_dong.ngay_lam_hop_dong) between 2019 and 2021);