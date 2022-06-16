use quanlysinhvien ;
-- Hiển thị tất cả các sinh viên có tên bất đầu bằng chữ 'h'
select * from student where StudentName like "h%" ;

-- Hiển thị các thông tin lớp học có thời gian bắt đầu vào tháng 12.
select * from class where StartDate like "%-12-%" ; 

-- Hiển thị tất cả các thông tin môn học có credit trong khoảng từ 3-5.
select * from `subject` where Credit between 3 and 5 ;

-- Thay đổi mã lớp(ClassID) của sinh viên có tên ‘Hung’ là 2.
set sql_safe_updates = 0 ;
update student set ClassId = `2` where StudentName ='Hung';
set sql_safe_updates = 1 ;

-- Hiển thị các thông tin: StudentName, SubName, Mark. Dữ liệu sắp xếp theo điểm thi (mark) giảm dần. nếu trùng sắp theo tên tăng dần.
select s.StudentName,su.SubName,m.Mark 
from student s join mark m on s.StudentId=m.StudentId join `subject` su on m.SubId = su.SubId
order by m.Mark desc ,s.StudentName asc;




