/* 회원이 지금까지 구매한 금액의 총 합계 계산 트리거 */
DROP TRIGGER IF EXISTS total_price;
DELIMITER //
CREATE TRIGGER total_price AFTER INSERT ON shop.order
FOR EACH ROW
BEGIN

declare m_price int default 0;
declare m_count int default 0;

set m_count = new.order_count;
set m_price = (select item_price from item where item_name = new.order_item_name);

update member
set
member_total = m_price * m_count
where
member_id = new.order_member_id;
END//
DELIMITER ;