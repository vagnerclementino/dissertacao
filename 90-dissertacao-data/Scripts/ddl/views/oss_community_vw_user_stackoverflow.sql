create or replace view oss_comunity.vw_user_stackoverflow as (
SELECT  id as user_id, 
		reputation,
		creationdate,
		displayname,
		lastaccessdate,
		websiteurl,
		location,
		aboutme,
		age,
		accountid,
		usermail
FROM oss_comunity.temp_stackoverflow_users 
where date_part('year', lastaccessdate) >= 2015 
and usermail is not null
);