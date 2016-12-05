drop table IF EXISTS oss_comunity.temp_bug_eclipsebt;

CREATE TABLE oss_comunity.temp_bug_eclipsebt (
    id_temp_bug_eclipsebt SERIAL,
	what VARCHAR(3000),
	added  VARCHAR(3000),
	who  VARCHAR(3000),
	"when" TIMESTAMP,
	bug_id SERIAL,
	removed  VARCHAR(3000)
);


alter table oss_comunity.temp_bug_eclipsebt
add constraint pk_temp_bug_eclipsebt primary KEY(id_temp_bug_eclipsebt);
