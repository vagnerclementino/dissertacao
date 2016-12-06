drop table if exists oss_comunity.temp_pythonbt_users;

create table oss_comunity.temp_pythonbt_users(
	id_temp_pythonbt_users SERIAL,
	user_name VARCHAR(3000),
	user_mail VARCHAR(3000),
	github_mail VARCHAR(3000),
	github_user VARCHAR(3000),
	real_name VARCHAR(3000),
	project_name VARCHAR(3000)
);

alter table oss_comunity.temp_pythonbt_users
add constraint pk_temp_pythonbt_users primary KEY(id_temp_pythonbt_users);


alter table oss_comunity.temp_pythonbt_users
add constraint uq_tempstack_username unique (user_name);




