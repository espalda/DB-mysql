/*이씨성을 가진 학생의 이름
LIKE '문자열%' 문자열로 시작하는 모든 문자열
LIKE '%문자열%' 문자열이 들어간 모든 문자열
LIKE '문자열%' 문자열로 끝나는 모든 문자열
*/
select student_name
from student
where student_name like '이%';