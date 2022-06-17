-- task 4:Đếm xem tương ứng với mỗi khách hàng đã từng đặt phòng bao nhiêu lần. 
-- Kết quả hiển thị được sắp xếp tăng dần theo số lần đặt phòng của khách hàng. 
-- Chỉ đếm những khách hàng nào có Tên loại khách hàng là “Diamond”.

use  furama_database ;

select khach_hang.ma_khach_hang	,
khach_hang.ho_ten,
count(hop_dong.ma_khach_hang) 'total'
from khach_hang join loai_khach on khach_hang.ma_loai_khach = loai_khach.ma_loai_khach
join hop_dong on hop_dong.ma_khach_hang = khach_hang.ma_khach_hang
where loai_khach.ma_loai_khach = 1
group by khach_hang.ma_khach_hang
order by total asc;
