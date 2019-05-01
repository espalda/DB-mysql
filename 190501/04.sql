SELECT board_writer, board_cafe_name, upload_filename
FROM upload		/*외래키가 있는 테이블*/
JOIN board		/*기본키를 가진 테이블*/
ON upload_board_no = board_no		/*외래키와 기본키가 연결*/
WHERE board_writer = 'apple' AND board_cafe_name = '낚시의신';