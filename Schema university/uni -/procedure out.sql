/* 현재 날짜를 기준으로 yyyymmdd의 번호를 만드는 함수 */
drop procedure if exists getNo;
delimiter //
create procedure getNo(out no varchar(30))

/* in 매개변수
out 리턴타입 */

begin
	/* delcare 이전값을 사용하면 필요없고 각각 새로운 값을 입력해야 할때는 초기화 선언인  declare로 정의한다 */
	/* in 또는 out 에서 선언한 변수는 declare로 다시 선언 불가능 */
    declare year varchar(4);
    declare month varchar(2);
    declare day varchar(2);
    
    /* year()는 매개변수로 날짜를 넘겨주면 해달 날짜의 년도를 정수로 추출해서 넘겨준다 */
    set year = year(now());
    
    /* 월이 한자리이면 앞에 0을 붙이는 작업 */
    set month = month(now());
    
		if month < 10 then
		set month = concat('0', month); /* concat()은 문자열들을 순서대로 붙이는 함수 */
    end if;
    
    set day = day(now());
		if day < 10 then
			set day = concat('0', month); /* concat()은 문자열들을 순서대로 붙이는 함수 */
		end if;
    set no = concat(year,month,day);
    
end //
delimiter ;