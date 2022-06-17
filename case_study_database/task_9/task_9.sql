-- task 9 : Thực hiện thống kê doanh thu theo tháng, nghĩa là tương ứng với mỗi tháng trong năm 2021 thì sẽ có bao nhiêu khách hàng thực hiện đặt phòng.
select month(hop_dong.ngay_lam_hop_dong) as tháng,
count(month(hop_dong.ngay_lam_hop_dong)) as số_khách_đặt_phòng 
from hop_dong
where
year(hop_dong.ngay_lam_hop_dong)=2021
group by month( hop_dong.ngay_lam_hop_dong)
order by  month(hop_dong.ngay_lam_hop_dong);