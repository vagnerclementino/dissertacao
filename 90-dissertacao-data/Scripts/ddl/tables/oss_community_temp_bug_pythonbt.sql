drop table IF EXISTS oss_comunity.temp_bug_pythonbt;


CREATE TABLE oss_comunity.temp_bug_pythonbt(
    id_temp_bug_pythonbt SERIAL, 
	bug_id SERIAL,
	action_date TIMESTAMP,
	action_user VARCHAR(100),
	action_arg VARCHAR(500),
	action_desc VARCHAR(500)
);




alter table oss_comunity.temp_bug_pythonbt
add constraint pk_temp_bug_pythonbt primary KEY(id_temp_bug_pythonbt);