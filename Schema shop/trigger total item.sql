/* 전체 상품의 재고를 파악하는 트리거*/
DROP TRIGGER IF EXISTS item_cnt; 
DELIMITER // 
CREATE TRIGGER item_cnt AFTER insert ON shop.order
FOR EACH ROW  
BEGIN 
declare i_cnt int default 0;

set i_cnt = (select item_count from item where new.order_item_name = item_name); 

update  
 item 
set 
 item_count =i_cnt - new.order_count
where 
 item_name = new.order_item_name; 
END// 
DELIMITER ;