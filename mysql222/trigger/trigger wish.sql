/* 각 회원당 장바구니에 넣은 상품을 계산하는 트리거*/
DROP TRIGGER IF EXISTS basket;
DELIMITER //
CREATE TRIGGER basket AFTER INSERT ON shop.order
FOR EACH ROW
BEGIN
declare m_wish int default 0;

set m_wish = (select count(*) from shop.order
				where new.order_state = '장바구니' and
                new.order_member_id = order_member_id);

update member
set
member_wish = m_wish
where
member_id = new.order_member_id;
END//
DELIMITER ;