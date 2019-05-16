DROP TRIGGER IF EXISTS state; 
DELIMITER // 
CREATE TRIGGER state AFTER insert ON shop.order
FOR EACH ROW  
BEGIN 
declare i_price int;
declare _point int default 0;

set i_price = (select item_price from item where new.order_item_name = item_name) * new.order_count;

set _point = i_price *0.01;

update  
 member 
set 
 member_point = member_point + _point
where 
 member_id = new.order_member_id; 
END  //
DELIMITER ;