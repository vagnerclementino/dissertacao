SET search_path TO mapeamento_its;

DROP TABLE strings;
DROP TABLE group_types;
DROP TABLE entry_group;
DROP TABLE groups;
DROP TABLE entries;
DROP TABLE entry_types;
DROP TABLE jabref_database;



-- Table: entry_types

CREATE TABLE entry_types
(
  entry_types_id serial NOT NULL,
  label text,
  abstract character varying(3) DEFAULT NULL::character varying,
  address character varying(3) DEFAULT NULL::character varying,
  annote character varying(3) DEFAULT NULL::character varying,
  author character varying(3) DEFAULT NULL::character varying,
  booktitle character varying(3) DEFAULT NULL::character varying,
  chapter character varying(3) DEFAULT NULL::character varying,
  comment character varying(3) DEFAULT NULL::character varying,
  crossref character varying(3) DEFAULT NULL::character varying,
  doi character varying(3) DEFAULT NULL::character varying,
  edition character varying(3) DEFAULT NULL::character varying,
  editor character varying(3) DEFAULT NULL::character varying,
  eid character varying(3) DEFAULT NULL::character varying,
  file character varying(3) DEFAULT NULL::character varying,
  howpublished character varying(3) DEFAULT NULL::character varying,
  institution character varying(3) DEFAULT NULL::character varying,
  journal character varying(3) DEFAULT NULL::character varying,
  key_ character varying(3) DEFAULT NULL::character varying,
  keywords character varying(3) DEFAULT NULL::character varying,
  language character varying(3) DEFAULT NULL::character varying,
  location character varying(3) DEFAULT NULL::character varying,
  month character varying(3) DEFAULT NULL::character varying,
  note character varying(3) DEFAULT NULL::character varying,
  "number" character varying(3) DEFAULT NULL::character varying,
  organization character varying(3) DEFAULT NULL::character varying,
  pages character varying(3) DEFAULT NULL::character varying,
  pdf character varying(3) DEFAULT NULL::character varying,
  pmid character varying(3) DEFAULT NULL::character varying,
  priority character varying(3) DEFAULT NULL::character varying,
  ps character varying(3) DEFAULT NULL::character varying,
  publisher character varying(3) DEFAULT NULL::character varying,
  qualityassured character varying(3) DEFAULT NULL::character varying,
  ranking character varying(3) DEFAULT NULL::character varying,
  relevance character varying(3) DEFAULT NULL::character varying,
  school character varying(3) DEFAULT NULL::character varying,
  search character varying(3) DEFAULT NULL::character varying,
  series character varying(3) DEFAULT NULL::character varying,
  title character varying(3) DEFAULT NULL::character varying,
  type character varying(3) DEFAULT NULL::character varying,
  url character varying(3) DEFAULT NULL::character varying,
  volume character varying(3) DEFAULT NULL::character varying,
  year character varying(3) DEFAULT NULL::character varying,
  date character varying(3) DEFAULT NULL::character varying,
  __groupsearch character varying(3) DEFAULT NULL::character varying,
  entrytype character varying(3) DEFAULT NULL::character varying,
  "timestamp" character varying(3) DEFAULT NULL::character varying,
  owner character varying(3) DEFAULT NULL::character varying,
  __search character varying(3) DEFAULT NULL::character varying,
  __markedentry character varying(3) DEFAULT NULL::character varying,
  bibtexkey character varying(3) DEFAULT NULL::character varying,
  CONSTRAINT entry_types_pkey PRIMARY KEY (entry_types_id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE entry_types
  OWNER TO vagner;


 -- Table: jabref_database



CREATE TABLE jabref_database
(
  database_id serial NOT NULL,
  database_name character varying(64) NOT NULL,
  md5_path character varying(32) NOT NULL,
  CONSTRAINT jabref_database_pkey PRIMARY KEY (database_id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE jabref_database
  OWNER TO vagner;


-- Table: group_types



CREATE TABLE group_types
(
  group_types_id serial NOT NULL,
  label character varying(100) DEFAULT NULL::character varying,
  CONSTRAINT group_types_pkey PRIMARY KEY (group_types_id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE group_types
  OWNER TO vagner;


-- Table: groups


CREATE TABLE groups
(
  groups_id serial NOT NULL,
  group_types_id integer,
  label character varying(100) DEFAULT NULL::character varying,
  database_id integer,
  parent_id integer,
  search_field character varying(100) DEFAULT NULL::character varying,
  search_expression character varying(200) DEFAULT NULL::character varying,
  case_sensitive boolean,
  reg_exp boolean,
  hierarchical_context integer,
  CONSTRAINT groups_pkey PRIMARY KEY (groups_id),
  CONSTRAINT groups_database_id_fkey FOREIGN KEY (database_id)
      REFERENCES jabref_database (database_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE groups
  OWNER TO vagner;

-- Table: strings


CREATE TABLE strings
(
  strings_id serial NOT NULL,
  label character varying(100) DEFAULT NULL::character varying,
  content character varying(200) DEFAULT NULL::character varying,
  database_id integer,
  CONSTRAINT strings_pkey PRIMARY KEY (strings_id),
  CONSTRAINT strings_database_id_fkey FOREIGN KEY (database_id)
      REFERENCES jabref_database (database_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE strings
  OWNER TO vagner;

-- Table: entries

CREATE TABLE entries
(
  entries_id serial NOT NULL,
  jabref_eid character varying(8) DEFAULT NULL::character varying,
  database_id integer,
  entry_types_id integer,
  cite_key character varying(100) DEFAULT NULL::character varying,
  abstract text,
  address text,
  annote text,
  author text,
  booktitle text,
  chapter text,
  comment text,
  crossref text,
  doi text,
  edition text,
  editor text,
  eid text,
  file text,
  howpublished text,
  institution text,
  journal text,
  key_ text,
  keywords text,
  language text,
  location text,
  month text,
  note text,
  "number" text,
  organization text,
  pages text,
  pdf text,
  pmid text,
  priority text,
  ps text,
  publisher text,
  qualityassured text,
  ranking text,
  relevance text,
  school text,
  search text,
  series text,
  title text,
  type text,
  url text,
  volume text,
  year text,
  date text,
  __groupsearch text,
  entrytype text,
  "timestamp" text,
  owner text,
  __search text,
  __markedentry text,
  bibtexkey text,
  CONSTRAINT entries_pkey PRIMARY KEY (entries_id),
  CONSTRAINT entries_database_id_fkey FOREIGN KEY (database_id)
      REFERENCES jabref_database (database_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT entries_entry_types_id_fkey FOREIGN KEY (entry_types_id)
      REFERENCES entry_types (entry_types_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE entries
  OWNER TO vagner;

-- Table: entry_group



CREATE TABLE entry_group
(
  entries_id serial NOT NULL,
  groups_id integer NOT NULL,
  CONSTRAINT entry_group_pkey PRIMARY KEY (groups_id, entries_id),
  CONSTRAINT entry_group_entries_id_fkey FOREIGN KEY (entries_id)
      REFERENCES entries (entries_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE CASCADE,
  CONSTRAINT entry_group_groups_id_fkey FOREIGN KEY (groups_id)
      REFERENCES groups (groups_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE entry_group
  OWNER TO vagner;