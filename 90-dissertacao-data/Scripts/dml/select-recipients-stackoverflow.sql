select u.displayname as real_name,
	   u.usermail as user_mail,
	   'Stackoverflow' as project	   
from oss_comunity.vw_user_stackoverflow u
order by u.reputation desc;
