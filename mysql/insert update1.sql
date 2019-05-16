insert into member(member_user_id, member_grade, member_cafe_name)
values ('banana', '준회원', '자유여행');

update cafe
set cafe_total = (select count(*) from member
				  where member_cafe_name = '자유여행')
where cafe_name = '자유여행';
select * FROM web.member;