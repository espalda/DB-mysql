/*
ascending 오름차순 : 작은 것 부터 큰 것 차례로 정렬
descending 내림차순 : 큰 것부터 작은 것의 차례로 정렬

학생 테이블에서 학년이 1인 학생의 이름을 오름차순으로 정렬
*/

select student_name
from student
where student_grade = 1
order by student_name asc;
