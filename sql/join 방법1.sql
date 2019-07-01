/* 학번, 학생이름, 과목명, 학점, 교수이름 쿼리 */

select student_name as 학생이름, subject_title as 과목명, course_grade as 학점, professor_name as 교수이름
from course
join student
on course_student_num = student_num
join class
on course_class_num = class_num
join subject
on class_subject_code = subject_code
join professor
on class_professor_num = professor_num


where course_student_num = 2019001;