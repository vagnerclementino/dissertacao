drop table IF EXISTS oss_comunity.temp_stackoverflow_users;

create table oss_comunity.temp_stackoverflow_users(

	id_temp_stackoverflow_users SERIAL,
	Id SERIAL,
	Reputation SERIAL,
	CreationDate TIMESTAMP,
	DisplayName VARCHAR(40),
	LastAccessDate TIMESTAMP,
	WebsiteUrl VARCHAR(200),
	Location VARCHAR(100),
	AboutMe TEXT,
	Views SERIAL,
	UpVotes SERIAL,
	DownVotes SERIAL,
	ProfileImageUrl VARCHAR(200),
	EmailHash VARCHAR(32),
	Age NUMERIC(3),
	AccountId SERIAL,
	UserMail VARCHAR(100),
	UserMailAlternative01 VARCHAR(100),
	UserMailAlternative02 VARCHAR(100),
	UserMailAlternative03 VARCHAR(100),
	UserMailAlternative04 VARCHAR(100),
	UserMailAlternative05 VARCHAR(100)
	);


alter table oss_comunity.temp_stackoverflow_users
add constraint pk_temp_stackoverflow_users primary KEY(id_temp_stackoverflow_users);


alter table oss_comunity.temp_stackoverflow_users
add constraint uq_cite_key unique (Id);