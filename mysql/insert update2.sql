insert into
	board (board_title, board_contents, board_writer, board_cafe_name)
values (' ', ' ', 'apple', '음악공장');

update member
set member_board_count = (select count(*) from board 
			where board_cafe_name = '음악공장' and board_writer = 'apple')
where member_cafe_name = '음악공장' and member_user_id = 'apple';
select * from member;
