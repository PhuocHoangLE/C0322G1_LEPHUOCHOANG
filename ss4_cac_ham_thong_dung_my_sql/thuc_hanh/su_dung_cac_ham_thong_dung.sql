use quanlysinhvien ;
select address, count(StudentId) as 'Số Lượng học viên'
from Student
group by address ;

select S.StudentId,S.StudentName, avg(Mark)
from Student S join Mark M on S.StudentId = M.StudentId
group by S.StudentId, S.StudentName ;

select S.StudentId,S.StudentName , avg(mark)
from Student S join Mark M on S.StudentId = M.StudentId
group by S.StudentId , S.StudentName
having avg(mark) > 15 ;

select S.StudentId , S.StudentName , avg(mark)
from Student s join mark M on S.StudentId = M.StudentId
group by S.StudentId , S.StudentName ;

select S.StudentId, S.StudentName, avg(Mark)
from Student S join Mark M on S.StudentId = M.StudentId
group by S.StudentId, S.StudentName
having avg(Mark) >= ALL (select avg(Mark) from Mark group by Mark.StudentId);