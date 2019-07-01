DROP TRIGGER IF EXISTS state; 
DELIMITER // 
CREATE TRIGGER state AFTER insert ON shop.order
FOR EACH ROW  
BEGIN 
declare i_cnt int default 0;

set i_cnt = (select item_count from item where new.order_item_name = item_name); 

if new.order_state != '장바구니' or new.order_state !='위시리스트' then

update  
 item 
set 
 item_count =i_cnt - new.order_count
where 
 item_name = new.order_item_name; 
 end if;
END //
DELIMITER ;