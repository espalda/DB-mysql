/* 함수 
count(*) 모든 갯수
sum(*) 모든 합
avg(*) 모든 평균
min(*) 모든 최소값
max(*) 모든 최대값
*/

select avg(course_total), count(*)
from course
join student
on course_student_num = student_num
where course_student_num = 2019001;