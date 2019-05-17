select student_name, course_total
from (select course_class_num, course_total, course_student_num
		from course where course_student_num = '2019001') as CC
        join student
        on CC.course_student_num = student.student_num;