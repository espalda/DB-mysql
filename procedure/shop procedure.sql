use shop;
drop procedure if exists membertotalprice;
delimiter // 
create procedure membertotalprice(
IN in_member_id varchar(45)
)
begin
declare i int default 0;
declare max_cnt int;
declare cnt int;
declare price int;
declare total int default 0;
set max_cnt = (select count(*) from shop.order join item on shop.order.order_item_name = item.item_name where shop.order.order_member_id = 'grape');
while i<max_cnt do
	set price = (select item_price from shop.order join item on shop.order.order_item_name = item.item_name where shop.order.order_member_id = 'grape' limit i,1);
    set cnt = (select order_count from shop.order join item on shop.order.order_item_name = item.item_name where shop.order.order_member_id = 'grape' limit i,1);
    set total = total + price * cnt;
    set i = i+1;
end while;
update member set member_total = total where member_id = in_member_id;
end //
delimiter ;

call membertotalprice('grape');
select * from member;