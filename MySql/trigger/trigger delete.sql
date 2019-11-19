/* course 테이블의 정보가 삭제됐을때 처리하는 트리거를 작성
giveup y 이면 update 트리거에 의해 자동으로 total 이 차감되고
n 이었을 때 행이 삭제될 때를 처리하면 된다.
 */
 
 drop trigger if exists delete_course;
 delimiter //
create trigger delete_course after delete on course
for each row
begin

if old.giveup = 'n' then
update class
set
total = total - 1
where
	old.class_no = no;
end if;

end //
delimiter ;

 
 