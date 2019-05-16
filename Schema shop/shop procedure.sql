drop procedure if exists update_grade;
delimiter //
create procedure update_grade(
in in_id varchar(45)
)
begin
declare total int;
declare grade varchar(45);

set total = (select member_total from member where member_id = in_id);
if total < 150000 then set grade = '환영';
end if;
if total >= 150000 and total < 300000 then set grade = '골드';
end if;
if total >= 300000 then set grade = '다이아';
end if;

update	member
set
member_grade = grade
where member_id = in_id;
end //
delimiter ;