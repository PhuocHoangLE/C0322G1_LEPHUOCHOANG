-- task 19: Cập nhật giá cho các dịch vụ đi kèm được sử dụng trên 10 lần trong năm 2020 lên gấp đôi.
use furama_database ;
update dich_vu_di_kem
set gia = gia*2
where dich_vu_di_kem.ma_dich_vu_di_kem in (select* from (select dich_vu_di_kem.ma_dich_vu_di_kem from dich_vu_di_kem
join hop_dong_chi_tiet hdct on hdct.ma_dich_vu_di_kem = dich_vu_di_kem.ma_dich_vu_di_kem
join hop_dong hd on hdct.ma_hop_dong = hd.ma_hop_dong
where hdct.so_luong>10 and year(hd.ngay_lam_hop_dong)=2020) tdlTmp);

select dich_vu_di_kem.ma_dich_vu_di_kem,
ten_dich_vu_di_kem,
gia
from dich_vu_di_kem;