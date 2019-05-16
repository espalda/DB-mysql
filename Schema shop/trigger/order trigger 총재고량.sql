/* order_state 가 장바구니나 위시리스트를 제외한 총 재고의 수량을 나타내는 트리거 */
DROP TRIGGER IF EXISTS total_item_cnt; 
DELIMITER // 
CREATE TRIGGER total_item_cnt AFTER insert ON shop.order
FOR EACH ROW 
BEGIN 
declare i_cnt int default 0;

set i_cnt = (select item_count from item where new.order_item_name = item_name); 

if order_state != '장바구니' or '위시리스트' then
update  
 item 
set 
 item_count =i_cnt - new.order_count
where 
 item_name = new.order_item_name; 
 end if;
END //
DELIMITER ;