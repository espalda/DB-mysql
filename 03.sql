SELECT board_writer, board_cafe_name, upload_filename
FROM upload
JOIN board
ON upload_board_no = board_no
WHERE board_writer = 'apple' AND board_cafe_name = '낚시의신';