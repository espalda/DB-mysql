/* 학번, 학생이름, 과목명, 학점, 교수이름 쿼리 */
select student_name as 학생이름, D.subject_title as 과목명,
C.course_grade as 학점, D.professor_name as 교수이름
from (select course_student_num, course_class_num, course_grade
		 from course
		 where course_student_num = 2019001) as C
join student
on course_student_num = student_num
join(select * from class
	join subject on class_subject_code = subject_code
    join professor on class_professor_num = professor_num) as D
on course_class_num = class_num;