/* update trigger 에서 old 를 이용하는 예제 */

/* insert 는 new 만 가능
delete 는 old 만 가능
update 는  old, new 둘다 사용 가능 */

DROP TRIGGER IF EXISTS update_course;
DELIMITER //
CREATE TRIGGER update_course AFTER update ON course
FOR EACH ROW
BEGIN

/* giveup 이 n 였다가 y 로 바뀌는 경우 수강생 인원수 감소 */
if old.giveup = 'n' and new.giveup = 'y' then
update class
set
	total = total-1
where
	no = new.class_no;
end if;
    
 /* 수강포기 y 상태에서 n 로 바뀌는 경우 */
 if old.giveup = 'y' and new.giveup = 'n' then
    update class
set
	total = total+1
where
	no = new.class_no;
end if;
    
END//
DELIMITER ;