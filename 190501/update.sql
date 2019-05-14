/* 게시글 board 의 조회수 board_view_count 변경하기 */
update board
set board_view_count = board_view_count + 1
where board_cafe_name = '낚시의신';
select * from board;