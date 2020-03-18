
select *
	from DLIT_TEMP_HUM_COLLECTION A
    join DLIT_TEMP_MANAGE B on A.GUBUN_CODE = B.GUBUN_CODE
    where B.GUBUN_CODE like 'TH%'
;


select A.IDX, A.GUBUN_CODE, A.GUBUN_NAME, A.ALLOW_MAX_TEMP, A.ALLOW_MIN_TEMP, a.ALLOW_MAX_HUM, A.ALLOW_MIN_HUM, A.COLL_CYCLE, A.MONITOR_YN
     , CASE WHEN A.GUBUN_CODE LIKE 'MT%' THEN B.EQUIP_NAME
            ELSE A.INSTALL_LOCATE
       END INSTALL_LOCATE
       , a.equip_desc
  from DLIT_TEMP_MANAGE a
       LEFT JOIN DLIT_EQUIP_MANAGE B ON A.INSTALL_LOCATE = B.EQUIP_CODE
  where a.gubun_code like 'TH%'
    and a.MONITOR_YN = 'Y'
  ;
    ;
    SELECT *
      FROM DLIT_EQUIP_MANAGE a
     WHERE A.EQUIP_CODE NOT IN (SELECT INSTALL_LOCATE
                                  FROM DLIT_TEMP_MANAGE
                                 WHERE GUBUN_CODE LIKE 'MT%'
                                   AND GUBUN_CODE <> 'MT002'
                                )
     ORDER BY a.EQUIP_CODE ASC


    ;
  SELECT *
    FROM DLIT_TEMP_HUM_COLLECTION b
    WHERE GUBUN_CODE IN (SELECT GUBUN_CODE
                           FROM DLIT_TEMP_MANAGE a
                          where a.gubun_code like 'TH%'
                            and a.MONITOR_YN = 'Y'
                         )
     AND B.COLLECTION_DATE = (SELECT MAX(COLLECTION_DATE)
                                FROM DLIT_TEMP_HUM_COLLECTION Z
                               WHERE Z.GUBUN_CODE = B.GUBUN_CODE)
   ORDER BY B.GUBUN_CODE
   ;


INSERT INTO dbo.DLIT_TEMP_HUM_COLLECTION ( COLLECTION_DATE,GUBUN_CODE,COLLECTION_TEMP,COLLECTION_HUM )	VALUES (SYSDATETIME(), 'TH007', 1.5, 50 );