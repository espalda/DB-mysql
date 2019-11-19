/* order_state 가 배송완료 일 때 회원이 구매한 상품의 총 합계 */
DROP TRIGGER IF EXISTS total_price; 
DELIMITER // 
CREATE TRIGGER total_price AFTER insert ON shop.order
FOR EACH ROW 
BEGIN

declare m_price int default 0;
declare m_count int default 0;

set m_count = new.order_count;
set m_price = (select item_price from item where item_name = new.order_item_name);

if new.order_state = '배송완료' then
update member
set
member_total = m_price * m_count
where
member_id = new.order_member_id;
end if;
END //
DELIMITER ;