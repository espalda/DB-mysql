/*
UPDATE 테이블명
SET 변경할내용
WHERE 조건 */

/* 게시글 board 의 조회수 board_view_count 변경하기 */
update board
set board_view_count = board_view_count + 1
where board_cafe_name = '낚시의신';
select * from board;

/* 카페 총 회원수를 수정하기*/
update cafe
set cafe_total = (select count(*) from member
					where member_cafe_name='낚시의신')
where cafe_name = '낚시의신;';
select * from cafe;