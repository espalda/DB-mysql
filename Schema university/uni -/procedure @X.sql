drop procedure if exists today;
delimiter //
create procedure today(out no varchar(20))

begin
call getNo(no);
end //
delimiter ;