/* 
트리거
student 테이블에서 insert 이벤트가 발생하면 추가된 student_num 학번의 정보를 이용하여 graduation 테이블에 insert 한다.
course 테이블에 update 이벤트가 발생하고
course_grade가 null이 아니면 이수학점 graduation_total을 업그레이드 한다.
 = 해당 학번과 동일한 graduation의 테이블의 graduation_total 에서 추가된 subject_point가 이수 학점이 추가된다.
해당학생이 졸업요건 정보를 만족하면 gradudaion_ok를 o로 업데이트한다.

subject_point가 수정되면 해당과목을 수강한 학생들의 총 이수학점을 수정한다.
프로시저
해당 학생의 졸업 가능 여부를 알려주는 프로시저


student_num = class_student_num
class_subject_code = subject_code
subject_point = subject_point + XXXX
*/

drop trigger if exists graduation_st;
delimiter //
create trigger graduation_st after insert on student
for each row
begin
declare r_num int;
declare r_year int;
	set r_year = new.student_num / 1000;
	if new.student_major is not null then
	set r_num = (select requirement_num from requirement where
		new.student_major = requirement_major and requirement_entrance_num = r_year);
 end if;
 
 
insert graduation(graduation_student_num, graduation_requirement_num)
values (new.student_num, r_num);

end //
delimiter 