-- 정렬시 조건 걸기
select (case when  TOP_FIX_YN = 'Y' then 1 else 99 end), a.*
  from DLIT_NOTICE a
		order by (case when  TOP_FIX_YN = 'Y' then 1 else 99 end), isnull(update_date, create_date) DESC
;



        case when TOP_FIX_YN = 'Y' then TOP_FIX_YN END DESC
               , case when TOP_FIX_YN = 'Y' then IDX END ASC

update DLIT_NOTICE set VIEW_COUNT += 1 where idx = 2

select row_number() over(order by a.idx) IDX, a.*
FROM DLIT_NOTICE a
;

SELECT row_number() over(order by idx) as IDX, CATEGORY, TITLE, VIEW_COUNT, TOP_FIX_YN, LOGIN_ID, CONTENT
			, convert(char(10), CREATE_DATE, 111) as CREATE_DATE
			, convert(char(10), UPDATE_DATE, 111) as UPDATE_DATE
		FROM DLIT_NOTICE
		order by (case when  TOP_FIX_YN = 'Y' then 1 else 99 end), isnull(update_date, create_date) DESC
