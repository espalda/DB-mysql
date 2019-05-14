use shop;
drop procedure if exists membertotalprice;
delimiter // 
create procedure membertotalprice(
IN in_member_id int
)
begin
declare _count 	int default 0;
declare _total 	int default 0;
declare _price 	int default 0;
declare i 		int default 0;
set _total = _price * _count;

while i < (select count(*) from shop.order where order_member_id = in_member_id) do
	_total = (SELECT shop.order.order_count FROM `order` join item on order_item_name = item_name where order_member_id = in_member_id limit i,1)
      * (SELECT shop.order.order_price FROM `order` join item on order_item_name = item_name where order_member_id = in_member_id limit i*1,1);
	set i = i+1;
end while;

UPDATE 	member
        SET		member_total =_total,
				order_count = _count,
                item_price = _price
			_count=(SELECT order_count FROM member join shop.order on member_id = order_member_id),
			_price=(SELECT item_price FROM member join shop.order on member_id = order_member_id join item on order_item_name = item_name)
		WHERE	member_id = in_member_id;

END;
delimiter //;
