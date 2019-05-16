/* 상품 배송이 완료 되었을 때 적립금이 추가되도록 하는 트리거 */
DROP TRIGGER IF EXISTS m_point; 
DELIMITER // 
CREATE TRIGGER m_point AFTER insert ON shop.order
FOR EACH ROW 
BEGIN 
declare i_price int;
declare _point int default 0;

set i_price = (select item_price from item where new.order_item_name = item_name) * new.order_count;
set _point = i_price * 0.01;

if new.order_state = '배송완료' then

update  
 member 
set 
 member_point = member_point + _point
where 
 member_id = new.order_member_id;
 end if;
END