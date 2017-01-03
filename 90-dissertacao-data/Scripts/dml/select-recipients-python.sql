select u.real_name,
	   u.github_mail as user_mail,
	   'Python' as project
	   
from oss_comunity.vw_user_python_project u
order by u.participations
