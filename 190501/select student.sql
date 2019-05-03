/*학생 테이블에서 학년이 1인 학생의 이름을 내림차순으로 정렬*/
select student_name
from student
where student_grade = 1
order by student_name asc;
