/* 주문상태가 위시리스트일때 위시리스트의 갯수를 알려주는 트리거 */
DROP TRIGGER IF EXISTS basket; 
DELIMITER // 
CREATE TRIGGER basket AFTER insert ON shop.order
FOR EACH ROW 
BEGIN
declare m_wish int default 0;

set m_wish = (select count(*) from shop.order
				where new.order_state = '위시리스트' and
                new.order_member_id = order_member_id);

update member
set
member_wish = m_wish
where
member_id = new.order_member_id;
END //
DELIMITER ;