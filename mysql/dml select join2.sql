/* SELECT [속성명] FROM [테이블]
JOIN [연결할 테이블]
ON [두테이블을 연결하는 조건 기본키와 외래키를 같다로 연결]
*/

select class_num, subject_title, professor_name
from class
join subject
on class_subject_code = subject_code
join professor
on class_professor_num = professor_num
where professor_name = '김김이';
