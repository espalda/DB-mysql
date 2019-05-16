DROP TRIGGER IF EXISTS br_count; 
DELIMITER // 
CREATE TRIGGER br_count AFTER insert ON board
FOR EACH ROW  
BEGIN 
declare br_cnt int default 0;  /* 게시판 전체 글수를 계산하는 트리거*/
declare m_bcount int default 0;  /*각멤버당 작성글 개수를 계산하는 트리거*/

set br_cnt = (select count(*) from board);
set m_bcount = (select count(*) from board where new.board_member_id = board_member_id);

update member
set member_board = m_bcount
where
	new.board_member_id = member_id;

update seller 
set seller_board = br_cnt
where 
	seller_num = '889-23-15982'; 
END// 
DELIMITER ; 
