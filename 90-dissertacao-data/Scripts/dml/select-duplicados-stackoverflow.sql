select
	*
from
	oss_comunity.temp_stackoverflow_users u 
where
	u.usermail in(
		select
			vw.usermail
		from
			(
				select
					usermail as usermail,
					count( 1 ) as total
				from
					oss_comunity.temp_stackoverflow_users t
				where
					t.usermail is not null
				group by
					t.usermail
				having
					count( 1 )> 1
			) vw
	)
	
