-- task 8: 	Hiển thị thông tin ho_ten khách hàng có trong hệ thống, với yêu cầu ho_ten không trùng nhau.

select khach_hang.ho_ten
from khach_hang
group by khach_hang.ho_ten;