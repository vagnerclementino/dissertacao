 create or replace view oss_comunity.vw_user_python_project as (
 SELECT t.user_name, t.github_user, t.github_mail, t.real_name, 'python' as project,
    count(1) AS participations
   FROM oss_comunity.temp_bug_pythonbt u
   JOIN oss_comunity.temp_pythonbt_users t ON t.user_name::text = u.action_user::text
  WHERE t.github_mail IS NOT NULL AND date_part('year'::text, u.action_date) >= 2015::double precision
  GROUP BY t.user_name, t.github_user, t.github_mail, t.real_name
  );
  
