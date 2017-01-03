--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
-- SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: dissertacao; Type: COMMENT; Schema: -; Owner: dissertacao
--

COMMENT ON DATABASE dissertacao IS 'Bando de Dados criado para armezamento das informações da dissertação de mestrado de dissertacao Clementino';


--
-- Name: caracterizacao_its; Type: SCHEMA; Schema: -; Owner: dissertacao
--

CREATE SCHEMA caracterizacao_its;


ALTER SCHEMA caracterizacao_its OWNER TO dissertacao;

--
-- Name: SCHEMA caracterizacao_its; Type: COMMENT; Schema: -; Owner: dissertacao
--

COMMENT ON SCHEMA caracterizacao_its IS 'SCHEMA do banco de dados dissertação que será utilizado para armazenar 
objetos da caracterização dos ITS';


--
-- Name: mapeamento_its; Type: SCHEMA; Schema: -; Owner: dissertacao
--

CREATE SCHEMA mapeamento_its;


ALTER SCHEMA mapeamento_its OWNER TO dissertacao;

--
-- Name: SCHEMA mapeamento_its; Type: COMMENT; Schema: -; Owner: dissertacao
--

COMMENT ON SCHEMA mapeamento_its IS 'SCHEMA do banco de dados dissertação que será utilizado para armazenar objetos do
mapeamento sistemático realizado sobre o tema ITS';


--
-- Name: popularidade_its; Type: SCHEMA; Schema: -; Owner: dissertacao
--

CREATE SCHEMA popularidade_its;


ALTER SCHEMA popularidade_its OWNER TO dissertacao;

--
-- Name: SCHEMA popularidade_its; Type: COMMENT; Schema: -; Owner: dissertacao
--

COMMENT ON SCHEMA popularidade_its IS 'SCHEMA do banco de dados dissertação que será utilizado para armazenar objetos do
estudo feito para avaliar a popularidade dos ITS';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = mapeamento_its, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: entries; Type: TABLE; Schema: mapeamento_its; Owner: dissertacao; Tablespace: 
--

CREATE TABLE entries (
    entries_id integer NOT NULL,
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
    number text,
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
    bibtexkey text
);


ALTER TABLE entries OWNER TO dissertacao;

--
-- Name: entries_entries_id_seq; Type: SEQUENCE; Schema: mapeamento_its; Owner: dissertacao
--

CREATE SEQUENCE entries_entries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE entries_entries_id_seq OWNER TO dissertacao;

--
-- Name: entries_entries_id_seq; Type: SEQUENCE OWNED BY; Schema: mapeamento_its; Owner: dissertacao
--

ALTER SEQUENCE entries_entries_id_seq OWNED BY entries.entries_id;


--
-- Name: entry_group; Type: TABLE; Schema: mapeamento_its; Owner: dissertacao; Tablespace: 
--

CREATE TABLE entry_group (
    entries_id integer NOT NULL,
    groups_id integer NOT NULL
);


ALTER TABLE entry_group OWNER TO dissertacao;

--
-- Name: entry_group_entries_id_seq; Type: SEQUENCE; Schema: mapeamento_its; Owner: dissertacao
--

CREATE SEQUENCE entry_group_entries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE entry_group_entries_id_seq OWNER TO dissertacao;

--
-- Name: entry_group_entries_id_seq; Type: SEQUENCE OWNED BY; Schema: mapeamento_its; Owner: dissertacao
--

ALTER SEQUENCE entry_group_entries_id_seq OWNED BY entry_group.entries_id;


--
-- Name: entry_types; Type: TABLE; Schema: mapeamento_its; Owner: dissertacao; Tablespace: 
--

CREATE TABLE entry_types (
    entry_types_id integer NOT NULL,
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
    number character varying(3) DEFAULT NULL::character varying,
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
    bibtexkey character varying(3) DEFAULT NULL::character varying
);


ALTER TABLE entry_types OWNER TO dissertacao;

--
-- Name: entry_types_entry_types_id_seq; Type: SEQUENCE; Schema: mapeamento_its; Owner: dissertacao
--

CREATE SEQUENCE entry_types_entry_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE entry_types_entry_types_id_seq OWNER TO dissertacao;

--
-- Name: entry_types_entry_types_id_seq; Type: SEQUENCE OWNED BY; Schema: mapeamento_its; Owner: dissertacao
--

ALTER SEQUENCE entry_types_entry_types_id_seq OWNED BY entry_types.entry_types_id;


--
-- Name: group_types; Type: TABLE; Schema: mapeamento_its; Owner: dissertacao; Tablespace: 
--

CREATE TABLE group_types (
    group_types_id integer NOT NULL,
    label character varying(100) DEFAULT NULL::character varying
);


ALTER TABLE group_types OWNER TO dissertacao;

--
-- Name: group_types_group_types_id_seq; Type: SEQUENCE; Schema: mapeamento_its; Owner: dissertacao
--

CREATE SEQUENCE group_types_group_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE group_types_group_types_id_seq OWNER TO dissertacao;

--
-- Name: group_types_group_types_id_seq; Type: SEQUENCE OWNED BY; Schema: mapeamento_its; Owner: dissertacao
--

ALTER SEQUENCE group_types_group_types_id_seq OWNED BY group_types.group_types_id;


--
-- Name: groups; Type: TABLE; Schema: mapeamento_its; Owner: dissertacao; Tablespace: 
--

CREATE TABLE groups (
    groups_id integer NOT NULL,
    group_types_id integer,
    label character varying(100) DEFAULT NULL::character varying,
    database_id integer,
    parent_id integer,
    search_field character varying(100) DEFAULT NULL::character varying,
    search_expression character varying(200) DEFAULT NULL::character varying,
    case_sensitive boolean,
    reg_exp boolean,
    hierarchical_context integer
);


ALTER TABLE groups OWNER TO dissertacao;

--
-- Name: groups_groups_id_seq; Type: SEQUENCE; Schema: mapeamento_its; Owner: dissertacao
--

CREATE SEQUENCE groups_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE groups_groups_id_seq OWNER TO dissertacao;

--
-- Name: groups_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: mapeamento_its; Owner: dissertacao
--

ALTER SEQUENCE groups_groups_id_seq OWNED BY groups.groups_id;


--
-- Name: jabref_database; Type: TABLE; Schema: mapeamento_its; Owner: dissertacao; Tablespace: 
--

CREATE TABLE jabref_database (
    database_id integer NOT NULL,
    database_name character varying(64) NOT NULL,
    md5_path character varying(32) NOT NULL
);


ALTER TABLE jabref_database OWNER TO dissertacao;

--
-- Name: jabref_database_database_id_seq; Type: SEQUENCE; Schema: mapeamento_its; Owner: dissertacao
--

CREATE SEQUENCE jabref_database_database_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE jabref_database_database_id_seq OWNER TO dissertacao;

--
-- Name: jabref_database_database_id_seq; Type: SEQUENCE OWNED BY; Schema: mapeamento_its; Owner: dissertacao
--

ALTER SEQUENCE jabref_database_database_id_seq OWNED BY jabref_database.database_id;


--
-- Name: strings; Type: TABLE; Schema: mapeamento_its; Owner: dissertacao; Tablespace: 
--

CREATE TABLE strings (
    strings_id integer NOT NULL,
    label character varying(100) DEFAULT NULL::character varying,
    content character varying(200) DEFAULT NULL::character varying,
    database_id integer
);


ALTER TABLE strings OWNER TO dissertacao;

--
-- Name: strings_strings_id_seq; Type: SEQUENCE; Schema: mapeamento_its; Owner: dissertacao
--

CREATE SEQUENCE strings_strings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE strings_strings_id_seq OWNER TO dissertacao;

--
-- Name: strings_strings_id_seq; Type: SEQUENCE OWNED BY; Schema: mapeamento_its; Owner: dissertacao
--

ALTER SEQUENCE strings_strings_id_seq OWNED BY strings.strings_id;


SET search_path = popularidade_its, pg_catalog;

--
-- Name: semana; Type: TABLE; Schema: popularidade_its; Owner: dissertacao; Tablespace: 
--

CREATE TABLE semana (
    id_semana smallint NOT NULL,
    cod_semana smallint NOT NULL,
    data_inicio_semana date NOT NULL,
    data_fim_semana date NOT NULL
);


ALTER TABLE semana OWNER TO dissertacao;

--
-- Name: TABLE semana; Type: COMMENT; Schema: popularidade_its; Owner: dissertacao
--

COMMENT ON TABLE semana IS 'Tabela que armazena as semanas relativo ao período de tempo em que a popularidade foi avaliada';


--
-- Name: COLUMN semana.id_semana; Type: COMMENT; Schema: popularidade_its; Owner: dissertacao
--

COMMENT ON COLUMN semana.id_semana IS 'Chave primária incrementada automaticamente';


--
-- Name: COLUMN semana.cod_semana; Type: COMMENT; Schema: popularidade_its; Owner: dissertacao
--

COMMENT ON COLUMN semana.cod_semana IS 'Código da semana, valor único';


--
-- Name: COLUMN semana.data_inicio_semana; Type: COMMENT; Schema: popularidade_its; Owner: dissertacao
--

COMMENT ON COLUMN semana.data_inicio_semana IS 'Armazena o primeiro dia da semana';


--
-- Name: COLUMN semana.data_fim_semana; Type: COMMENT; Schema: popularidade_its; Owner: dissertacao
--

COMMENT ON COLUMN semana.data_fim_semana IS 'Coluna que armazena a data do fim da semana';


--
-- Name: semana_id_semana_seq; Type: SEQUENCE; Schema: popularidade_its; Owner: dissertacao
--

CREATE SEQUENCE semana_id_semana_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE semana_id_semana_seq OWNER TO dissertacao;

--
-- Name: semana_id_semana_seq; Type: SEQUENCE OWNED BY; Schema: popularidade_its; Owner: dissertacao
--

ALTER SEQUENCE semana_id_semana_seq OWNED BY semana.id_semana;


SET search_path = public, pg_catalog;

--
-- Name: issue_tracking_system; Type: TABLE; Schema: public; Owner: dissertacao; Tablespace: 
--

CREATE TABLE issue_tracking_system (
    id_issue_tracking_system smallint NOT NULL,
    cod_issue_tracking_system smallint NOT NULL,
    nome_issue_tracking_system character varying(50) NOT NULL,
    descricao character varying(3000) NOT NULL,
    criador character varying(50) NOT NULL,
    licenca character varying(100) NOT NULL,
    linguagem_implementacao character varying(100) NOT NULL,
    back_end character varying(100) NOT NULL,
    ano_lancamento smallint NOT NULL,
    url character varying(2000) NOT NULL
);


ALTER TABLE issue_tracking_system OWNER TO dissertacao;

--
-- Name: issue_tracking_system_id_issue_tracking_system_seq; Type: SEQUENCE; Schema: public; Owner: dissertacao
--

CREATE SEQUENCE issue_tracking_system_id_issue_tracking_system_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE issue_tracking_system_id_issue_tracking_system_seq OWNER TO dissertacao;

--
-- Name: issue_tracking_system_id_issue_tracking_system_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dissertacao
--

ALTER SEQUENCE issue_tracking_system_id_issue_tracking_system_seq OWNED BY issue_tracking_system.id_issue_tracking_system;


SET search_path = mapeamento_its, pg_catalog;

--
-- Name: entries_id; Type: DEFAULT; Schema: mapeamento_its; Owner: dissertacao
--

ALTER TABLE ONLY entries ALTER COLUMN entries_id SET DEFAULT nextval('entries_entries_id_seq'::regclass);


--
-- Name: entries_id; Type: DEFAULT; Schema: mapeamento_its; Owner: dissertacao
--

ALTER TABLE ONLY entry_group ALTER COLUMN entries_id SET DEFAULT nextval('entry_group_entries_id_seq'::regclass);


--
-- Name: entry_types_id; Type: DEFAULT; Schema: mapeamento_its; Owner: dissertacao
--

ALTER TABLE ONLY entry_types ALTER COLUMN entry_types_id SET DEFAULT nextval('entry_types_entry_types_id_seq'::regclass);


--
-- Name: group_types_id; Type: DEFAULT; Schema: mapeamento_its; Owner: dissertacao
--

ALTER TABLE ONLY group_types ALTER COLUMN group_types_id SET DEFAULT nextval('group_types_group_types_id_seq'::regclass);


--
-- Name: groups_id; Type: DEFAULT; Schema: mapeamento_its; Owner: dissertacao
--

ALTER TABLE ONLY groups ALTER COLUMN groups_id SET DEFAULT nextval('groups_groups_id_seq'::regclass);


--
-- Name: database_id; Type: DEFAULT; Schema: mapeamento_its; Owner: dissertacao
--

ALTER TABLE ONLY jabref_database ALTER COLUMN database_id SET DEFAULT nextval('jabref_database_database_id_seq'::regclass);


--
-- Name: strings_id; Type: DEFAULT; Schema: mapeamento_its; Owner: dissertacao
--

ALTER TABLE ONLY strings ALTER COLUMN strings_id SET DEFAULT nextval('strings_strings_id_seq'::regclass);


SET search_path = popularidade_its, pg_catalog;

--
-- Name: id_semana; Type: DEFAULT; Schema: popularidade_its; Owner: dissertacao
--

ALTER TABLE ONLY semana ALTER COLUMN id_semana SET DEFAULT nextval('semana_id_semana_seq'::regclass);


SET search_path = public, pg_catalog;

--
-- Name: id_issue_tracking_system; Type: DEFAULT; Schema: public; Owner: dissertacao
--

ALTER TABLE ONLY issue_tracking_system ALTER COLUMN id_issue_tracking_system SET DEFAULT nextval('issue_tracking_system_id_issue_tracking_system_seq'::regclass);


SET search_path = mapeamento_its, pg_catalog;

--
-- Data for Name: entries; Type: TABLE DATA; Schema: mapeamento_its; Owner: dissertacao
--

COPY entries (entries_id, jabref_eid, database_id, entry_types_id, cite_key, abstract, address, annote, author, booktitle, chapter, comment, crossref, doi, edition, editor, eid, file, howpublished, institution, journal, key_, keywords, language, location, month, note, number, organization, pages, pdf, pmid, priority, ps, publisher, qualityassured, ranking, relevance, school, search, series, title, type, url, volume, year, date, __groupsearch, entrytype, "timestamp", owner, __search, __markedentry, bibtexkey) FROM stdin;
1	00000287	1	9	Aggarwal:2014:MIT:2593801.2593810	\N	New York, NY, USA	\N	Aggarwal, Ayushi and Waghmare, Gajendra and Sureka, Ashish	Proceedings of the 3rd International Workshop on Realizing Artificial Intelligence Synergies in Software Engineering	\N	\N	\N	10.1145/2593801.2593810	\N	\N	\N	\N	\N	\N	\N	\N	Bugs, Defect Tracking System, Google Chromium, Issue Tracking System, Latent Dirichlet Allocation, Software Maintenance, Topic Modeling	\N	Hyderabad, India	\N	\N	\N	\N	52--58	\N	\N	\N	\N	ACM	\N	\N	\N	\N	\N	RAISE 2014	Mining Issue Tracking Systems Using Topic Models for Trend Analysis, Corpus Exploration, and Understanding Evolution	\N	http://doi.acm.org/10.1145/2593801.2593810	\N	2014	\N	\N	\N	\N	\N	\N	\N	Aggarwal:2014:MIT:2593801.2593810
2	00000288	1	1	Ahmadi2015	Dim object tracking in a heavy clutter environment is a theoretical and technological challenge in the field of image processing. For a small dim object, conventional tracking methods fail for the lack of geometrical information. Multiple hypotheses testing (MHT) is one of the generally accepted methods in target tracking systems. However, processing a tree structure with a significant number of branches in MHT has been a challenging issue. Tracking high-speed objects with traditional MHT requires some presumptions which limit the capabilities of these methods. This study presents a hierarchal tracking system in two levels to solve this problem. For each point in the lower-level, a multi objective particle swarm optimisation technique is applied to a group of consecutive frames to reduce the number of branches in each tracking tree. Thus, an optimum track for each moving object is obtained in a group of frames. In the upper-level, an iterative process is used to connect the matching optimum tracks of the consecutive frames based on the spatial information and fitness values. The experimental results show that the proposed method has a superior performance in relation to some common dim object tracking methods over different image sequence data sets.	\N	\N	K. Ahmadi and E. Salari	\N	\N	\N	\N	10.1049/iet-ipr.2014.0927	\N	\N	\N	\N	\N	\N	IET Image Processing	\N	clutter;image matching;image sequences;iterative methods;object tracking;particle swarm optimisation;target tracking;MHT;geometrical information;heavy clutter environment;image matching;image processing;image sequence data set;iterative process;multiobjective particle swarm optimisation technique;multiple hypotheses testing;small dim object tracking;target tracking system;tree structure	\N	\N	\N	\N	9	\N	820-826	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Small dim object tracking using a multi objective particle swarm optimisation technique	\N	\N	9	2015	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Ahmadi2015
3	00000289	1	9	Alipour:2013:CAT:2487085.2487123	\N	Piscataway, NJ, USA	\N	Alipour, Anahita and Hindle, Abram and Stroulia, Eleni	Proceedings of the 10th Working Conference on Mining Software Repositories	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	San Francisco, CA, USA	\N	\N	\N	\N	183--192	\N	\N	\N	\N	IEEE Press	\N	\N	\N	\N	\N	MSR '13	A Contextual Approach Towards More Accurate Duplicate Bug Report Detection	\N	http://dl.acm.org/citation.cfm?id=2487085.2487123	\N	2013	\N	\N	\N	\N	\N	\N	\N	Alipour:2013:CAT:2487085.2487123
4	00000291	1	9	An2014	A typical bug fixing cycle involves the reporting of a bug, the triaging of the report, the production and verification of a fix, and the closing of the bug. However, previous work has studied two phenomena where more than one fix are associated with the same bug report. The first one is the case where developers re-open a previously fixed bug in the bug repository (sometimes even multiple times) to provide a new bug fix that replace a previous fix, whereas the second one is the case where multiple commits in the version control system contribute to the same bug report (\\"supplementary bug fixes\\"). Even though both phenomena seem related, they have never been studied together, i.e., are supplementary fixes a subset of re-opened bugs or the other way around? This paper investigates the interplay between both phenomena in five open source software projects: Mozilla, Net beans, Eclipse JDT Core, Eclipse Platform SWT, and Web Kit. We found that re-opened bugs account for between 21.6% and 33.8% of all supplementary fixes. However, 33% to 57.5% of re-opened bugs had only one commit associated, which means that the original bug report was prematurely closed instead of fixed incorrectly. Furthermore, we constructed predictive models for re-opened bugs using historical information about supplementary bug fixes with a precision between 72.2% and 97%, as well as a recall between 47.7% and 65.3%. Software researchers and practitioners who are mining data repositories can use our approach to identify potential failures of their bug fixes and the re-opening of bug reports.	\N	\N	L. An and F. Khomh and B. Adams	Source Code Analysis and Manipulation (SCAM), 2014 IEEE 14th International Working Conference on	\N	\N	\N	10.1109/SCAM.2014.29	\N	\N	\N	\N	\N	\N	\N	\N	data mining;program debugging;public domain software;Eclipse JDT Core;Eclipse Platform SWT;Mozilla;Netbeans;WebKit;bug fixing cycle;bug report;mining data repositories;open source software projects;reopened bug subset;supplementary fix;version control system;Computer bugs;Control systems;Data mining;History;Open source software;Predictive models;mining software repositories;prediction model;re-opened bugs;supplementary fixes	\N	\N	Sept	\N	\N	\N	205-214	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Supplementary Bug Fixes vs. Re-opened Bugs	\N	\N	\N	2014	\N	\N	\N	2016.06.08	dissertacao	\N	\N	An2014
6	00000293	1	1	Antoniol2005	Versioning system repositories and bug tracking systems are valuable sources of information to study the evolution of large open source software systems. However, being conceived for specific purposes, i.e., to support the development or trigger maintenance activities, they do neither allow an easy information browsing nor support the study of software evolution. For example, queries such as locating and browsing the faultiest methods are not provided. This paper addresses such issues and proposes an approach and a framework to consistently merge information extracted from source code, versioning repositories and bug reports. Our information representation exploits the property concepts of the FAMIX information exchange meta-model, allowing to represent, browse, and query, at different level of abstractions, the concept of interest. This allows the user to navigate back and forth from versioning system modification reports to bug reports and to source code. This paper presents the analysis framework and approaches to populate it, tools developed and under development for it, as well as lessons learned while analyzing several releases of Mozilla. © 2005 Elsevier B.V.	\N	\N	Antoniol, G.a and Di Penta, M.a and Gall, H.b and Pinzger, M.c 	\N	\N	\N	\N	10.1016/j.entcs.2004.08.036	\N	\N	\N	\N	\N	\N	Electronic Notes in Theoretical Computer Science	\N	\N	\N	\N	\N	cited By 14	3	\N	87-99	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Towards the integration of versioning systems, bug reports and source code meta-models	\N	https://www.scopus.com/inward/record.uri?eid=2-s2.0-15544385242&partnerID=40&md5=ec6190f1286c80cb78380c54b480ea58	127	2005	\N	\N	\N	2016.06.08	dissertacao	\N	[dissertacao:]	Antoniol2005
7	00000294	1	9	Anvik:2005:COB:1117696.1117704	\N	New York, NY, USA	\N	Anvik, John and Hiew, Lyndon and Murphy, Gail C.	Proceedings of the 2005 OOPSLA Workshop on Eclipse Technology eXchange	\N	\N	\N	10.1145/1117696.1117704	\N	\N	\N	\N	\N	\N	\N	\N	bugzilla, duplicate detection, machine learning, triage	\N	San Diego, California	\N	\N	\N	\N	35--39	\N	\N	\N	\N	ACM	\N	\N	\N	\N	\N	eclipse '05	Coping with an Open Bug Repository	\N	http://doi.acm.org/10.1145/1117696.1117704	\N	2005	\N	\N	\N	\N	\N	\N	\N	Anvik:2005:COB:1117696.1117704
8	00000295	1	9	Anvik:2007:DIE:1260984.1261303	\N	Washington, DC, USA	\N	Anvik, John and Murphy, Gail C.	Proceedings of the 29th International Conference on Software Engineering Workshops	\N	\N	\N	10.1109/ICSEW.2007.84	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2--	\N	\N	\N	\N	IEEE Computer Society	\N	\N	\N	\N	\N	ICSEW '07	Determining Implementation Expertise from Bug Reports	\N	http://dx.doi.org/10.1109/ICSEW.2007.84	\N	2007	\N	\N	\N	\N	\N	\N	\N	Anvik:2007:DIE:1260984.1261303
9	00000296	1	9	Anvik2008	Managing and articulating development tasks is an important aspect of software maintenance. Developers already have a variety of specialty tools to support task management, for example, issue tracking and configuration management software, but they also make use of other tools within their software engineering environments to support software task management. An example of one such mechanism is the appropriation of source code comments to document finer grained details of formally specified tasks. In this research, we propose and present a tool that integrates these source code annotations with an issue tracking management system. We describe how this tool addresses deficiencies that occur in task management and propose future research to improve task management.	\N	\N	J. Anvik and M. A. Storey	Software Maintenance, 2008. ICSM 2008. IEEE International Conference on	\N	\N	\N	10.1109/ICSM.2008.4658104	\N	\N	\N	\N	\N	\N	\N	\N	groupware;software engineering;configuration management software;issue tracking system;software engineering;software maintenance;software task management;source code annotations;task articulation;Collaborative software;Collaborative work;Computer science;Engineering management;Environmental management;Software development management;Software engineering;Software maintenance;Software tools;Tagging	\N	\N	Sept	\N	\N	\N	460-461	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Task articulation in software maintenance: Integrating source code annotations with an issue tracking system	\N	\N	\N	2008	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Anvik2008
10	00000297	1	9	Atwood2010	The Computational Research and Engineering Acquisition Tools and Environments (CREATE) Program is charged with positively impacting the US Department of Defense (DoD) Acquisition Process via Computational Engineering for capability gaps identified by the CREATE Boards of Directors. These prioritized requirements have been characterized and are annually reconciled in terms of gaps associated with required analysis cycle-times, physical accuracy, and necessary analysis capabilities. Furthermore, the Office of the Secretary of Defense(OSD) Overarching Integrated Product Team (OIPT) has provided goals which drive the usage of CREATE software by DoD Acquisition Programs. In order to achieve these usage targets, the CREATE Program has established a governance model and thence a hosted set of services to enhance collaboration among the developer teams and the targeted Acquisition Program (AP) subject matter experts. The goals of these collaboration services are to: 1) scale and speed the feedback amongst the CREATE and AP teams, while 2) minimizing interruption to developer and user workflows. Towards these goals, the community services have been architected as discussion forums, issue tracking, and documentation. Such services are now common place in the enterprise and open-source software projects, and efficiently scale with the user community by enabling a searchable knowledge base. In addition, owing to the key capabilities of this DoD software, CREATE requires authenticated and authorized access for each member of the community. This paper summarizes the governance model and process by which the services were selected, the architecture implemented, and the challenges going forward.	\N	\N	C. A. Atwood and S. Adamec and D. Post and L. Handley-Blair and M. Murphy	High Performance Computing Modernization Program Users Group Conference (HPCMP-UGC), 2010 DoD	\N	\N	\N	10.1109/HPCMP-UGC.2010.25	\N	\N	\N	\N	\N	\N	\N	\N	defence industry;groupware;military computing;software architecture;CREATE program;OIPT;OSD;Office of the Secretary of Defense;Overarching Integrated Product Team;US Department of Defense;acquisition process;acquisition program;collaborative software development;computational research and engineering acquisition tools and environments;scalable DoD computational engineering;software architecture;Collaboration;Communities;Information services;Servers;Software;Software measurement;US Department of Defense	\N	\N	June	\N	\N	\N	414-420	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Collaborative Software Development of Scalable DoD Computational Engineering	\N	\N	\N	2010	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Atwood2010
11	00000298	1	9	Azarbakht2014	Software development in free and open source (FOSS) projects is a collective human activity. Software developers in these projects collaborate via FOSS informalisms, i.e. mailing list, bug repository and code repository. Analysing the human collaborative work of these software developers over a time period, e.g. five years, sheds light on the underlying structure and dynamics of how the software is being developed, how the project is led, who the influencers are, and how to achieve a state of sustainability. In this paper, we propose to use temporal social network analysis with temporal visualization to study the evolution and social dynamics of FOSS communities. With these techniques we aim to identify measures associated with unhealthy group dynamics, e.g. a simmering conflict, as well as early indicators of major events in the lifespan of a community. One dynamic we are especially interested in, are those of forked FOSS projects. We used the results of a study of forked FOSS projects by [Robles and Gonzalez-Barahona 2012] as the starting platform for our study, and tried to gain a better understanding of the evolution of these communities.	\N	\N	A. Azarbakht	2014 IEEE Symposium on Visual Languages and Human-Centric Computing (VL/HCC)	\N	\N	\N	10.1109/VLHCC.2014.6883055	\N	\N	\N	\N	\N	\N	\N	\N	public domain software;social networking (online);software engineering;FOSS forks;collaborative software development;free and open source software projects;temporal social network analysis;temporal visualization;unhealthy group dynamics;Accuracy;Collaboration;Communities;Data visualization;Social network services;Software;Visualization	\N	\N	July	\N	\N	\N	201-202	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Temporal visualization of collaborative software development in FOSS forks	\N	\N	\N	2014	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Azarbakht2014
12	00000299	1	9	Bacchelli:2010:PCM:2128562.2128570	\N	Berlin, Heidelberg	\N	Bacchelli, Alberto and D'Ambros, Marco and Lanza, Michele	Proceedings of the 13th International Conference on Fundamental Approaches to Software Engineering	\N	\N	\N	10.1007/978-3-642-12029-9_5	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Paphos, Cyprus	\N	\N	\N	\N	59--73	\N	\N	\N	\N	Springer-Verlag	\N	\N	\N	\N	\N	FASE'10	Are Popular Classes More Defect Prone?	\N	http://dx.doi.org/10.1007/978-3-642-12029-9_5	\N	2010	\N	\N	\N	\N	\N	\N	\N	Bacchelli:2010:PCM:2128562.2128570
13	00000300	1	9	Banerjee2015	Open source bug tracking systems provide a rich information suite that is actively used by software engineering researchers to design solutions to triaging, duplicate classification and developer assignment problems. Today, open repositories often contain in excess of 100, 000 reports, and in cases of RedHat and Mozilla, over a million. Obtaining and analyzing the contents of such datasets are both time and resource consuming. By summarizing the related work we demonstrate that researchers often focused on smaller subsets of the data, and seldom embrace the “big-dataism”. With the emergence of cloud based computation systems such as Amazon EC2, one expects it to be easier to perform large scale analyses. However, our detailed time and cost analysis indicates that significant challenges still remain. Acquiring the open source data can be time intensive, and prone to being misinterpreted as Denial of Service attacks. Generating similarity scores for all prior reports, for example, is a polynomial time problem. In this paper, we present actual costs that we incurred when analyzing the complete repositories from Eclipse, Firefox and Open Office. In our approach, we relied on computing clusters to process the data in an attempt to reduce the cost of analyzing large datasets on the cloud. We present estimated costs for a researcher attempting to analyze complete datasets from Eclipse, Mozilla, Novell and RedHat using the best possible resources. In an ideal situation, with no bottlenecks, a researcher investing just over $40, 000 and 2 weeks of non stop computing time would be able to measure similarity of problem reports within all four datasets.	\N	\N	S. Banerjee and B. Cukic	Big Data Software Engineering (BIGDSE), 2015 IEEE/ACM 1st International Workshop on	\N	\N	\N	10.1109/BIGDSE.2015.16	\N	\N	\N	\N	\N	\N	\N	\N	Big Data;cloud computing;computational complexity;data mining;public domain software;software engineering;Amazon EC2;Big-Dataism;Eclipse;Firefox;Novell;Open Office;RedHat;cloud based computation systems;cost analysis;data processing;denial of service attacks;open source bug tracking systems;polynomial time problem;software engineering;time analysis;very large open source repository mining;Accuracy;Computer crime;Data mining;Graphics processing units;Random access memory;XML	\N	\N	May	\N	\N	\N	37-43	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	On the Cost of Mining Very Large Open Source Repositories	\N	\N	\N	2015	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Banerjee2015
14	00000301	1	9	Banerjee:2012:ADB:2417496.2417520	\N	Washington, DC, USA	\N	Banerjee, Sean and Cukic, Bojan and Adjeroh, Donald	Proceedings of the 2012 IEEE 14th International Symposium on High-Assurance Systems Engineering	\N	\N	\N	10.1109/HASE.2012.38	\N	\N	\N	\N	\N	\N	\N	\N	String Algorithms, Duplicate Bug Reports, Documentation, Experimentation, Verification	\N	\N	\N	\N	\N	\N	74--81	\N	\N	\N	\N	IEEE Computer Society	\N	\N	\N	\N	\N	HASE '12	Automated Duplicate Bug Report Classification Using Subsequence Matching	\N	http://dx.doi.org/10.1109/HASE.2012.38	\N	2012	\N	\N	\N	\N	\N	\N	\N	Banerjee:2012:ADB:2417496.2417520
15	00000303	1	9	Banerjee2015a	Bug tracking systems play an important role in the development and maintenance of large-scale software systems. Having access to open source bug tracking systems has allowed researchers to take advantage of rich datasets and propose solutions to manage duplicate report classification, developer assignment and quality assessment. In spite of research advances, our understanding of the content of these repositories remains limited, primarily because of their size. In many cases, researchers analyze small portions of datasets thus limiting the understanding of the dynamics of problem reporting. The objective of this study is to explore the properties of two large-scale open source problem report repositories. The Eclipse dataset, at the time of download, consisted of 363; 770 reports spanning 11+ years, whereas Mozilla contained 699; 085 reports spanning 14+ years.Our research examines the evolution of datasets over time by analyzing the changes in the repository and the profiles of users who submit problem reports. We provide quantitative evidence on how submitter's maturity reduces the propensity to submit poor quality, insignificant or duplicate reports. We show that a diverse user base, characteristic of Mozilla, creates challenges for the development team as they spend more time triaging, rather than fixing, issues. Finally, we provide the research community with a series of observations and suggestions on how to study large-scale problem repositories.	\N	\N	S. Banerjee and J. Helmick and Z. Syed and B. Cukic	2015 IEEE 16th International Symposium on High Assurance Systems Engineering	\N	\N	\N	10.1109/HASE.2015.45	\N	\N	\N	\N	\N	\N	\N	\N	program debugging;public domain software;software maintenance;Eclipse dataset;Mozilla characteristic;Mozilla dataset;developer assignment;download time;duplicate report classification management;large-scale open source problem report repositories;large-scale software system development;large-scale software system maintenance;open source bug tracking systems;problem reporting dynamics;quality assessment;quantitative analysis;research community;user base;Communities;Computer bugs;Educational institutions;Maintenance engineering;Pragmatics;Quality assessment;Software systems	\N	\N	Jan	\N	\N	\N	263-270	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Eclipse vs. Mozilla: A Comparison of Two Large-Scale Open Source Problem Report Repositories	\N	\N	\N	2015	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Banerjee2015a
16	00000304	1	9	Bangcharoensap:2012:LSC:2419061.2419428	\N	Washington, DC, USA	\N	Bangcharoensap, Phiradet and Ihara, Akinori and Kamei, Yasutaka and Matsumoto, Ken-ichi	Proceedings of the 2012 Fourth International Workshop on Empirical Software Engineering in Practice	\N	\N	\N	10.1109/IWESEP.2012.14	\N	\N	\N	\N	\N	\N	\N	\N	Bug localization, Text mining, Code mining, Change history mining	\N	\N	\N	\N	\N	\N	10--15	\N	\N	\N	\N	IEEE Computer Society	\N	\N	\N	\N	\N	IWESEP '12	Locating Source Code to Be Fixed Based on Initial Bug Reports - A Case Study on the Eclipse Project	\N	http://dx.doi.org/10.1109/IWESEP.2012.14	\N	2012	\N	\N	\N	\N	\N	\N	\N	Bangcharoensap:2012:LSC:2419061.2419428
17	00000306	1	9	Banitaan2013	Bug Tracking System (BTS) is public ally accessible which enables geographically distributed developers to follow the work of each other and contribute in bug fixing. Developer interactions through commenting on bug reports generate a developer social network that can be used to improve software development and maintenance activities. In large scale complex software projects, software maintenance requires larger groups to participate in its activities. Most previous bug assignments approaches assign only one developer to new bugs. However, bug fixing is a collaborative effort between several developers (i.e., many developers contribute their experience in fixing a bug report). In this work, we build developers social networks based on developers comments on bug reports and detect developers communities. We also assign a relevant community to each newly committed bug report. Moreover, we rank developers in each community based on their experience. An experimental evaluation is conducted on three open source projects namely Net Beans, Free desktop, and Mandriva. The results show that the detected communities are significantly connected with high density. They also show that the proposed approach achieves feasible accuracy of bug assignment.	\N	\N	S. Banitaan and M. Alenezi	Machine Learning and Applications (ICMLA), 2013 12th International Conference on	\N	\N	\N	10.1109/ICMLA.2013.107	\N	\N	\N	\N	\N	\N	\N	\N	groupware;program debugging;project management;public domain software;social networking (online);software maintenance;BTS;DECOBA;Freedesktop project;Mandriva project;NetBeans project;bug assignment;bug fixing;bug reports;bug tracking system;developer communities;developer interactions;developer social network;large-scale complex software projects;open source projects;software development activity improvement;software maintenance activity improvement;Collaboration;Communities;Computer bugs;Measurement;Predictive models;Social network services;Vectors;Bug Report Assignment;Community Detection;Developer Ranking;Developers Social Network	\N	\N	Dec	\N	\N	\N	66-71	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	DECOBA: Utilizing Developers Communities in Bug Assignment	\N	\N	2	2013	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Banitaan2013
18	00000307	1	9	Baysal:2013:SAP:2486788.2486957	\N	Piscataway, NJ, USA	\N	Baysal, Olga and Holmes, Reid and Godfrey, Michael W.	Proceedings of the 2013 International Conference on Software Engineering	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	San Francisco, CA, USA	\N	\N	\N	\N	1185--1188	\N	\N	\N	\N	IEEE Press	\N	\N	\N	\N	\N	ICSE '13	Situational Awareness: Personalizing Issue Tracking Systems	\N	http://dl.acm.org/citation.cfm?id=2486788.2486957	\N	2013	\N	\N	\N	\N	\N	\N	\N	Baysal:2013:SAP:2486788.2486957
19	00000308	1	9	Baysal2012	Bug triaging is an error-prone, tedious and time-consuming task. However, little qualitative research has been done on the actual use of bug tracking systems, bug triage, and resolution processes. We are planning to conduct a qualitative study to understand the dynamics of bug triage and fixing process, as well as bug reassignments and reopens. We will study interviews conducted with Mozilla Core and Firefox developers to get insights into the primary obstacles developers face during the bug fixing process. Is the triage process flawed? Does bug review slow things down? Does approval takes too long? We will also categorize the main reasons for bug reassignments and reopens. We will then combine results with a quantitative study of Firefox bug reports, focusing on factors related to bug report edits and number of people involved in handling the bug.	\N	\N	O. Baysal and R. Holmes and M. W. Godfrey	User Evaluation for Software Engineering Researchers (USER), 2012	\N	\N	\N	10.1109/USER.2012.6226578	\N	\N	\N	\N	\N	\N	\N	\N	program debugging;Mozilla core;Mozilla developers;bug fixing process;bug reassignments;bug reopens;bug tracking systems;bug triage;resolution practices;Computer bugs;Educational institutions;Encyclopedias;Fires;Interviews;Software;Sorting	\N	\N	June	\N	\N	\N	29-30	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Revisiting bug triage and resolution practices	\N	\N	\N	2012	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Baysal2012
20	00000309	1	9	Baysal2013	When submitting a patch, the primary concerns of individual developers are “How can I maximize the chances of my patch being approved, and minimize the time it takes for this to happen?” In principle, code review is a transparent process that aims to assess qualities of the patch by their technical merits and in a timely manner; however, in practice the execution of this process can be affected by a variety of factors, some of which are external to the technical content of the patch itself. In this paper, we describe an empirical study of the code review process for WebKit, a large, open source project; we replicate the impact of previously studied factors - such as patch size, priority, and component and extend these studies by investigating organizational (the company) and personal dimensions (reviewer load and activity, patch writer experience) on code review response time and outcome. Our approach uses a reverse engineered model of the patch submission process and extracts key information from the issue tracking and code review systems. Our findings suggest that these nontechnical factors can significantly impact code review outcomes.	\N	\N	O. Baysal and O. Kononenko and R. Holmes and M. W. Godfrey	2013 20th Working Conference on Reverse Engineering (WCRE)	\N	\N	\N	10.1109/WCRE.2013.6671287	\N	\N	\N	\N	\N	\N	\N	\N	program diagnostics;reverse engineering;software quality;WebKit;code review outcome;code review process;code review response time;code review system;component;issue tracking system;nontechnical factors;open source project;patch size;patch submission process;priority;reverse engineered model;software quality;Browsers;Companies;Databases;Electronic mail;Google;Time factors;Code review;WebKit;non-technical factors;open source software;personal and organizational aspects	\N	\N	Oct	\N	\N	\N	122-131	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	The influence of non-technical factors on code review	\N	\N	\N	2013	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Baysal2013
26	00000316	1	9	Bettenburg2008a	In software development, bug reports provide crucial information to developers. However, these reports widely differ in their quality. We conducted a survey among developers and users of APACHE, ECLIPSE, and MOZILLA to find out what makes a good bug report. The analysis of the 466 responses revealed an information mismatch between what developers need and what users supply. Most developers consider steps to reproduce, stack traces, and test cases as helpful, which are at the same time most difficult to provide for users. Such insight is helpful to design new bug tracking tools that guide users at collecting and providing more helpful information. Our CUEZILLA prototype is such a tool and measures the quality of new bug reports; it also recommends which elements should be added to improve the quality. We trained CUEZILLA on a sample of 289 bug reports, rated by developers as part of the survey. In our experiments, CUEZILLA was able to predict the quality of 31 - 48% of bug reports accurately. &copy; 2008 ACM.	Atlanta, GA, United states	\N	Bettenburg, Nicolas and Just, Sascha and Schroter, Adrian and Weiss, Cathrin and Premraj, Rahul and Zimmermann, Thomas	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Proceedings of the ACM SIGSOFT Symposium on the Foundations of Software Engineering	Program debugging	Computer software selection and evaluation;Software engineering;Surveys;	English	\N	\N	Bug reports;Bug tracking;Mozilla;Software development;Test case;	\N	\N	308 - 318	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	What makes a good bug report?	\N	http://dx.doi.org/10.1145/1453101.1453146	\N	2008	\N	\N	\N	2016.06.08	dissertacao	\N	[dissertacao:6]	Bettenburg2008a
21	00000310	1	9	Beck2015	Locating features in large software systems is a fundamental maintenance task for developers when fixing bugs and extending software. We introduce In Situ Impact Insight (I3), a novel user interface to support feature location. In addition to a list of search results, I3 provides support for developers during browsing and inspecting the retrieved code entities. In situ visualizations augment results and source code with additional information relevant for further exploration. Developers are able to retrieve details on the textual similarity of a source code entity to the search query and to other entities, as well as the information on co-changed entities from a project's history. Execution traces recorded during program runs can be used as filters to further refine the search results. We implemented I3 as an Eclipse plug-in and tested it in a user study involving 18 students and professional developers that were asked to perform three feature location tasks chosen from the issue tracking system of jEdit. The results of our study suggest that I3's user interface is intuitive and unobtrusively supports developers with the required information when and where they need it.	\N	\N	F. Beck and B. Dit and J. Velasco-Madden and D. Weiskopf and D. Poshyvanyk	2015 IEEE 23rd International Conference on Program Comprehension	\N	\N	\N	10.1109/ICPC.2015.24	\N	\N	\N	\N	\N	\N	\N	\N	program diagnostics;program visualisation;query processing;software maintenance;source code (software);user interfaces;Eclipse plug-in;I3;I3 user interface;In Situ Impact Insight;feature location;in situ visualizations;jEdit tracking system;large software systems;program execution traces;retrieved code entity;search query;source code entity textual similarity;Feature extraction;History;Maintenance engineering;Software systems;User interfaces;Visualization	\N	\N	May	\N	\N	\N	151-162	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Rethinking User Interfaces for Feature Location	\N	\N	\N	2015	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Beck2015
22	00000311	1	9	Beckhaus2010	Researchers in the IS domain have addressed communication structure and its effect on performance. While early research focused on small networks and utilized sociometric surveys, recent works have concentrated on electronic data sources provided by open source software repositories. Surprisingly, software vendors have less frequently been studied despite their need for continuous enhancement of organizational design. In this study, we analyze a global business software vendor by utilizing existing data sources. We investigate the association of both collaboration network centrality and communication with process efficiency. Despite coping with complex, interweaved processes and social networks, we find that communication, centrality in the large case-study-wide network, and communication pattern homogeneity are positively associated with process efficiency. However, centrality in small work groups slows the analyzed issue tracking process down, possibly due to increased overhead and bottleneck effects that become visible when looking at single issues qualitatively.	\N	\N	A. Beckhaus and L. M. Karg and D. Neumann	System Sciences (HICSS), 2010 43rd Hawaii International Conference on	\N	\N	\N	10.1109/HICSS.2010.381	\N	\N	\N	\N	\N	\N	\N	\N	business data processing;groupware;information systems;public domain software;software houses;business software vendor;collaboration network structure;communication pattern homogeneity;electronic data sources;information system;issue tracking process;large business software vendor;open source software repositories;social networks;Business;Collaborative software;Collaborative work;Computer industry;Manufacturing industries;Open source software;Programming;Social network services;Software engineering;Software performance	\N	\N	Jan	\N	\N	\N	1-10	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	The Impact of Collaboration Network Structure on Issue Tracking's Process Efficiency at a Large Business Software Vendor	\N	\N	\N	2010	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Beckhaus2010
23	00000312	1	4	Behl2014	Bug report contains a vital role during software development, However bug reports belongs to different categories such as performance, usability, security etc. This paper focuses on security bug and presents a bug mining system for the identification of security and non-security bugs using the term frequency-inverse document frequency (TF-IDF) weights and naïve bayes. We performed experiments on bug report repositories of bug tracking systems such as bugzilla and debugger. In the proposed approach we apply text mining methodology and TF-IDF on the existing historic bug report database based on the bug s description to predict the nature of the bug and to train a statistical model for manually mislabeled bug reports present in the database. The tool helps in deciding the priorities of the incoming bugs depending on the category of the bugs i.e. whether it is a security bug report or a non-security bug report, using naïve bayes. Our evaluation shows that our tool using TF-IDF is giving better results than the naïve bayes method. © 2014 IEEE.	\N	\N	Behl, D. and Handa, S. and Arora, A.	\N	\N	\N	\N	10.1109/ICROIT.2014.6798341	\N	\N	\N	\N	\N	\N	ICROIT 2014 - Proceedings of the 2014 International Conference on Reliability, Optimization and Information Technology	\N	\N	\N	\N	\N	cited By 1	\N	\N	294-299	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	A bug Mining tool to identify and analyze security bugs using Naive Bayes and TF-IDF: A Comparative Analysis	\N	https://www.scopus.com/inward/record.uri?eid=2-s2.0-84900319880&partnerID=40&md5=ab7d68ceb18934d44e5ff6ba3b226ed8	\N	2014	\N	\N	\N	2016.06.08	dissertacao	\N	[dissertacao:]	Behl2014
25	00000314	1	9	Bettenburg:2007:QBR:1328279.1328284	\N	New York, NY, USA	\N	Bettenburg, Nicolas and Just, Sascha and Schr\\\\\\"{o}ter, Adrian and Wei\\\\ss, Cathrin and Premraj, Rahul and Zimmermann, Thomas	Proceedings of the 2007 OOPSLA Workshop on Eclipse Technology eXchange	\N	\N	\N	10.1145/1328279.1328284	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Montreal, Quebec, Canada	\N	\N	\N	\N	21--25	\N	\N	\N	\N	ACM	\N	\N	\N	\N	\N	eclipse '07	Quality of Bug Reports in Eclipse	\N	http://doi.acm.org/10.1145/1328279.1328284	\N	2007	\N	\N	\N	\N	\N	\N	\N	Bettenburg:2007:QBR:1328279.1328284
27	00000318	1	9	Bhattacharya:2011:BTP:1985441.1985472	\N	New York, NY, USA	\N	Bhattacharya, Pamela and Neamtiu, Iulian	Proceedings of the 8th Working Conference on Mining Software Repositories	\N	\N	\N	10.1145/1985441.1985472	\N	\N	\N	\N	\N	\N	\N	\N	bug report triage, bug-fix time, issue tracking, statistical model	\N	Waikiki, Honolulu, HI, USA	\N	\N	\N	\N	207--210	\N	\N	\N	\N	ACM	\N	\N	\N	\N	\N	MSR '11	Bug-fix Time Prediction Models: Can We Do Better?	\N	http://doi.acm.org/10.1145/1985441.1985472	\N	2011	\N	\N	\N	\N	\N	\N	\N	Bhattacharya:2011:BTP:1985441.1985472
28	00000319	1	9	Bissyande:2013:OSP:2549855.2549894	\N	Washington, DC, USA	\N	Bissyand{\\\\'e}, Tegawend{\\\\'e} F. and Thung, Ferdian and Lo, David and Jiang, Lingxiao and R{\\\\'e}veill\\\\\\`{e}re, Laurent	Proceedings of the 2013 18th International Conference on Engineering of Complex Computer Systems	\N	\N	\N	10.1109/ICECCS.2013.42	\N	\N	\N	\N	\N	\N	\N	\N	Project Search, Orion, GitHub, DSL	\N	\N	\N	\N	\N	\N	242--245	\N	\N	\N	\N	IEEE Computer Society	\N	\N	\N	\N	\N	ICECCS '13	Orion: A Software Project Search Engine with Integrated Diverse Software Artifacts	\N	http://dx.doi.org/10.1109/ICECCS.2013.42	\N	2013	\N	\N	\N	\N	\N	\N	\N	Bissyande:2013:OSP:2549855.2549894
29	00000320	1	4	Bissyande2013	To collect software bugs found by users, development teams often set up bug trackers using systems such as Bugzilla. Developers would then fix some of the bugs and commit corresponding code changes into version control systems such as svn or git. Unfortunately, the links between bug reports and code changes are missing for many software projects as the bug tracking and version control systems are often maintained separately. Yet, linking bug reports to fix commits is important as it could shed light into the nature of bug fixing processes and expose patterns in software management. Bug linking solutions, such as ReLink, have been proposed. The demonstration of their effectiveness however faces a number of issues, including a reliability issue with their ground truth datasets as well as the extent of their measurements. We propose in this study a benchmark for evaluating bug linking solutions. This benchmark includes a dataset of about 12,000 bug links from 10 programs. These true links between bug reports and their fixes have been provided during bug fixing processes. We designed a number of research questions, to assess both quantitatively and qualitatively the effectiveness of a bug linking tool. Finally, we apply this benchmark on ReLink to report the strengths and limitations of this bug linking tool. © 2013 IEEE.	\N	\N	Bissyandé, T.F.a and Thung, F.b and Wang, S.b and Lo, D.b and Jiang, L.b and Réveillère, L.a 	\N	\N	\N	\N	10.1109/CSMR.2013.19	\N	\N	\N	\N	\N	\N	Proceedings of the European Conference on Software Maintenance and Reengineering, CSMR	\N	\N	\N	\N	\N	cited By 13	\N	\N	89-98	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Empirical evaluation of bug linking	\N	https://www.scopus.com/inward/record.uri?eid=2-s2.0-84877295642&partnerID=40&md5=da4994b2d9c9f6047b7428a0958d4268	\N	2013	\N	\N	\N	2016.06.08	dissertacao	\N	[dissertacao:]	Bissyande2013
31	00000322	1	9	Boisselle2015	Although open source distributions like Debian and Ubuntu are closely related, sometimes a bug reported in the Debian bug repository is reported independently in the Ubuntu repository as well, without the Ubuntu users nor developers being aware. Such cases of undetected cross-distribution bug duplicates can cause developers and users to lose precious time working on a fix that already exists or to work individually instead of collaborating to find a fix faster. We perform a case study on Ubuntu and Debian bug repositories to measure the amount of cross-distribution bug duplicates and estimate the amount of time lost. By adapting an existing within-project duplicate detection approach (achieving a similar recall of 60%), we find 821 cross-duplicates. The early detection of such duplicates could reduce the time lost by users waiting for a fix by a median of 38 days. Furthermore, we estimate that developers from the different distributions lose a median of 47 days in which they could have collaborated together, had they been aware of duplicates. These results show the need to detect and monitor cross-distribution duplicates.	\N	\N	V. Boisselle and B. Adams	Source Code Analysis and Manipulation (SCAM), 2015 IEEE 15th International Working Conference on	\N	\N	\N	10.1109/SCAM.2015.7335409	\N	\N	\N	\N	\N	\N	\N	\N	program debugging;public domain software;Debian bug repository;Ubuntu bug repository;cross-distribution bug duplicate;open source distribution;Collaboration;Computer bugs;Feature extraction;Generators;Information retrieval;Linux;Organizations	\N	\N	Sept	\N	\N	\N	131-140	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	The impact of cross-distribution bug duplicates, empirical study on Debian and Ubuntu	\N	\N	\N	2015	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Boisselle2015
32	00000323	1	9	Bortis:2011:TCB:1984642.1984659	\N	New York, NY, USA	\N	Bortis, Gerald and van der Hoek, Andr{\\\\'e}	Proceedings of the 4th International Workshop on Cooperative and Human Aspects of Software Engineering	\N	\N	\N	10.1145/1984642.1984659	\N	\N	\N	\N	\N	\N	\N	\N	bug tracking, bug triaging	\N	Waikiki, Honolulu, HI, USA	\N	\N	\N	\N	69--71	\N	\N	\N	\N	ACM	\N	\N	\N	\N	\N	CHASE '11	Teambugs: A Collaborative Bug Tracking Tool	\N	http://doi.acm.org/10.1145/1984642.1984659	\N	2011	\N	\N	\N	\N	\N	\N	\N	Bortis:2011:TCB:1984642.1984659
33	00000324	1	9	Bougie2010	In this paper, we explore the viability of mining the basic data provided in bug repositories to predict bug lifetimes. We follow the method of Lucas D. Panjer as described in his paper, Predicting Eclipse Bug Lifetimes. However, in place of Eclipse data, the FreeBSD bug repository is used. We compare the predictive accuracy of five different classification algorithms applied to the two data sets. In addition, we propose future work on whether there is a more informative way of classifying bugs than is considered by current bug tracking systems.	\N	\N	G. Bougie and C. Treude and D. M. German and M. A. Storey	2010 7th IEEE Working Conference on Mining Software Repositories (MSR 2010)	\N	\N	\N	10.1109/MSR.2010.5463291	\N	\N	\N	\N	\N	\N	\N	\N	data mining;pattern classification;program debugging;software engineering;Eclipse data;FreeBSD bug lifetimes;bug classification;bug repository;bug tracking system;classification algorithm;data mining;Accuracy;Classification algorithms;Computer bugs;Data mining;Kernel;Linux;Open source software;Project management;Software development management;Software systems;Bug lifetimes;FreeBSD;Mining Software Repositories	\N	\N	May	\N	\N	\N	106-109	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	A comparative exploration of FreeBSD bug lifetimes	\N	\N	\N	2010	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Bougie2010
34	00000325	1	9	Breu:2010:INB:1718918.1718973	\N	New York, NY, USA	\N	Breu, Silvia and Premraj, Rahul and Sillito, Jonathan and Zimmermann, Thomas	Proceedings of the 2010 ACM Conference on Computer Supported Cooperative Work	\N	\N	\N	10.1145/1718918.1718973	\N	\N	\N	\N	\N	\N	\N	\N	bug reports, information needs, question time, questions, response rate, response time	\N	Savannah, Georgia, USA	\N	\N	\N	\N	301--310	\N	\N	\N	\N	ACM	\N	\N	\N	\N	\N	CSCW '10	Information Needs in Bug Reports: Improving Cooperation Between Developers and Users	\N	http://doi.acm.org/10.1145/1718918.1718973	\N	2010	\N	\N	\N	\N	\N	\N	\N	Breu:2010:INB:1718918.1718973
35	00000327	1	9	Caglayan:2012:FCR:2365324.2365327	\N	New York, NY, USA	\N	Caglayan, Bora and Misirli, Ayse Tosun and Miranskyy, Andriy and Turhan, Burak and Bener, Ayse	Proceedings of the 8th International Conference on Predictive Models in Software Engineering	\N	\N	\N	10.1145/2365324.2365327	\N	\N	\N	\N	\N	\N	\N	\N	issue management, issue reopening, issue repository, software maintenance	\N	Lund, Sweden	\N	\N	\N	\N	1--10	\N	\N	\N	\N	ACM	\N	\N	\N	\N	\N	PROMISE '12	Factors Characterizing Reopened Issues: A Case Study	\N	http://doi.acm.org/10.1145/2365324.2365327	\N	2012	\N	\N	\N	\N	\N	\N	\N	Caglayan:2012:FCR:2365324.2365327
36	00000328	1	1	Callahan1998	Many problems are found and fixed during the development of a software system. The Project Issue Tracking System toolkit, a Web-based issue-management tool, can be used to organize issue reports during development and to communicate with different project teams around the world.	\N	\N	Callahan, J.R.a c d e and Khatsuriya, R.R.a f g and Hefner, R.b h i 	\N	\N	\N	\N	10.1109/4236.722227	\N	\N	\N	\N	\N	\N	IEEE Internet Computing	\N	\N	\N	\N	\N	cited By 0	5	\N	25-33	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Web-based issue tracking for large software projects	\N	https://www.scopus.com/inward/record.uri?eid=2-s2.0-0032167146&partnerID=40&md5=d14ca2273f08a5788bcc27c4102da668	2	1998	\N	\N	\N	2016.06.08	dissertacao	\N	[dissertacao:]	Callahan1998
37	00000330	1	9	Canfora:2005:IAM:1090955.1092169	\N	Washington, DC, USA	\N	Canfora, Gerardo and Cerulo, Luigi	Proceedings of the 11th IEEE International Software Metrics Symposium	\N	\N	\N	10.1109/METRICS.2005.28	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	29--	\N	\N	\N	\N	IEEE Computer Society	\N	\N	\N	\N	\N	METRICS '05	Impact Analysis by Mining Software and Change Request Repositories	\N	http://dx.doi.org/10.1109/METRICS.2005.28	\N	2005	\N	\N	\N	\N	\N	\N	\N	Canfora:2005:IAM:1090955.1092169
38	00000331	1	1	Canfora2009	Versioning and bug-tracking systems are invaluable assets for large software projects that involve developers spread worldwide and numerous users reporting bugs and proposing enhancements. In addition to supporting development, versioning systems are a precious source of information for studying or monitoring a software system's evolution.	\N	\N	G. Canfora and L. Cerulo and M. Di Penta	\N	\N	\N	\N	10.1109/MS.2009.26	\N	\N	\N	\N	\N	\N	IEEE Software	\N	configuration management;program debugging;project management;software development management;software maintenance;software prototyping;system monitoring;language-independent approach;software project bug-tracking system;software project versioning;software system development;software system evolution monitoring;Cloning;Computer bugs;Humans;Information resources;Monitoring;Recommender systems;Software algorithms;Software systems;Software testing;Software tools;differencing tools;mining software archives;software evolution	\N	\N	Jan	\N	1	\N	50-57	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tracking Your Changes: A Language-Independent Approach	\N	\N	26	2009	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Canfora2009
39	00000332	1	9	Cavalcanti:2013:TUS:2460999.2461028	\N	New York, NY, USA	\N	Cavalcanti, Yguarat\\\\~{a} Cerqueira and da Mota Silveira Neto, Paulo Anselmo and do Carmo Machado, Ivan and de Almeida, Eduardo Santana and de Lemos Meira, Silvio Romero	Proceedings of the 17th International Conference on Evaluation and Assessment in Software Engineering	\N	\N	\N	10.1145/2460999.2461028	\N	\N	\N	\N	\N	\N	\N	\N	bug tracking, bug triage, change request assignment, issue tracking, software maintenance	\N	Porto de Galinhas, Brazil	\N	\N	\N	\N	195--206	\N	\N	\N	\N	ACM	\N	\N	\N	\N	\N	EASE '13	Towards Understanding Software Change Request Assignment: A Survey with Practitioners	\N	http://doi.acm.org/10.1145/2460999.2461028	\N	2013	\N	\N	\N	\N	\N	\N	\N	Cavalcanti:2013:TUS:2460999.2461028
41	00000334	1	9	Cavalcanti2010	According to recent work, duplicate bug report entries in bug tracking systems impact negatively on software maintenance and evolution productivity due to, among other factors, the increased time spent on report analysis and validation, what in some cases take over 20 minutes. Therefore, a considerable amount of time is lost mainly with duplicate bug report analysis. This work presents an initial characterization study using data from bug trackers from private and open source projects, in order to understand the possible factors that cause bug report duplication and its impact on software development.	\N	\N	Y. C. Cavalcanti and E. S. d. Almeida and C. E. A. d. Cunha and D. Lucredio and S. R. d. L. Meira	Software Maintenance and Reengineering (CSMR), 2010 14th European Conference on	\N	\N	\N	10.1109/CSMR.2010.52	\N	\N	\N	\N	\N	\N	\N	\N	program debugging;software maintenance;bug report duplication problem;bug tracker;bug tracking system;duplicate bug report analysis;duplicate bug report entry;software development;software maintenance;Context;Electronic mail;Measurement;Organizations;Productivity;Programming;Software;problem report;report duplication;software bugs;software maintenance	\N	\N	March	\N	\N	\N	264-267	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	An Initial Study on the Bug Report Duplication Problem	\N	\N	\N	2010	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Cavalcanti2010
42	00000335	1	1	Cavalcanti2014	Software maintenance starts as soon as the first artifacts are delivered and is essential for the success of the software. However, keeping maintenance activities and their related artifacts on track comes at a high cost. In this respect, change request (CR) repositories are fundamental in software maintenance. They facilitate the management of CRs and are also the central point to coordinate activities and communication among stakeholders. However, the benefits of CR repositories do not come without issues, and commonly occurring ones should be dealt with, such as the following: duplicate CRs, the large number of CRs to assign, or poorly described CRs. Such issues have led researchers to an increased interest in investigating CR repositories, by considering different aspects of software development and CR management. In this paper, we performed a systematic mapping study to characterize this research field. We analyzed 142 studies, which we classified in two ways. First, we classified the studies into different topics and grouped them into two dimensions: challenges and opportunities. Second, the challenge topics were classified in accordance with an existing taxonomy for information retrieval models. In addition, we investigated tools and services for CR management, to understand whether and how they addressed the topics identified. Copyright © 2013 John Wiley & Sons, Ltd. Change request repositories are fundamental for software maintenance. However, their benefits do not come without issues. We analyzed 142 studies to characterize the research on these issues and provide directions for future investigation. The studies were classified into topics and grouped into two dimensions: challenges and opportunities. Then, the challenges were classified in accordance with an existing taxonomy for information retrieval models. Additionally, we investigated different change request repositories to understand whether and how they addressed the topics identified. Copyright © 2013 John Wiley & Sons, Ltd.	\N	\N	Cavalcanti, Y.C.a c d and Da Mota Silveira Neto, P.A.a c and Machado, I.D.C.b c and Vale, T.F.b c and De Almeida, E.S.b c and Meira, S.R.D.L.a c 	\N	\N	\N	\N	10.1002/smr.1639	\N	\N	\N	\N	\N	\N	Journal of Software: Evolution and Process	\N	\N	\N	\N	\N	cited By 4	7	\N	620-653	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Challenges and opportunities for software change request repositories: A systematic mapping study	\N	https://www.scopus.com/inward/record.uri?eid=2-s2.0-84904626790&partnerID=40&md5=7e8fe6e32dba1cdb6f3f9a3e39b3fed1	26	2014	\N	\N	\N	2016.06.08	dissertacao	\N	[dissertacao:]	Cavalcanti2014
80	00000385	1	9	Gupta:2014:NMB:2590748.2590749	\N	New York, NY, USA	\N	Gupta, Monika and Sureka, Ashish	Proceedings of the 7th India Software Engineering Conference	\N	\N	\N	10.1145/2590748.2590749	\N	\N	\N	\N	\N	\N	\N	\N	empirical software engineering and measurements, issue tracking system, mining software repositories, open-source software, process mining, software maintenance	\N	Chennai, India	\N	\N	\N	\N	1:1--1:10	\N	\N	\N	\N	ACM	\N	\N	\N	\N	\N	ISEC '14	Nirikshan: Mining Bug Report History for Discovering Process Maps, Inefficiencies and Inconsistencies	\N	http://doi.acm.org/10.1145/2590748.2590749	\N	2014	\N	\N	\N	\N	\N	\N	\N	Gupta:2014:NMB:2590748.2590749
43	00000336	1	9	Cerulo2006	Software repositories, such as version control systems (CVS) and bug-tracking systems (Bugzilla), provide useful information about software process trails left by developers during the evolution of a software project. Mining these repositories provides a way to understand software development, to support predictions about software development, and to plan various aspects of software projects. We introduce three cases in the areas of impact analysis, change request assignment, and crosscutting concern mining, that takes benefit from historical information and show that the combination of different type of analyses can improve the performance of these software engineering models	\N	\N	L. Cerulo	2006 13th Working Conference on Reverse Engineering	\N	\N	\N	10.1109/WCRE.2006.40	\N	\N	\N	\N	\N	\N	\N	\N	configuration management;data mining;program debugging;program diagnostics;software process improvement;Bugzilla;bug-tracking systems;change request assignment;crosscutting concern mining;impact analysis;process trails;software development;software engineering model;software repository;version control systems;Control systems;Documentation;Information analysis;Information resources;Performance analysis;Programming;Software engineering;Software performance;Software systems;Software tools	\N	\N	Oct	\N	\N	\N	303-304	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	On the Use of Process Trails to Understand Software Development	\N	\N	\N	2006	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Cerulo2006
44	00000337	1	9	Chandrasekaran2007	Given the large number of vulnerability instances disclosed in various bug-tracking communities, system administrators face an up-hill task of protecting their system/ network against zero-day exploits. In order to safeguard against such exploits, the present challenges come in two-fold: (i) there exists a compelling need to assimilate configuration specific vulnerability information from various bug-tracking diaspora; also (ii) there is a need to proactively generate policy specific signatures which act as a first line of defense. In this paper we propose an automated approach for determining vulnerabilities pertinent to the current network/ system configuration using the information aggregated from different bug tracking communities. Such vulnerability assessment and indication mechanisms significantly alleviate the system administratorÂ¿s burden of manual content digging for vulnerabilities in his own configuration context. Furthermore, we propose an Extensible Defense Oriented Representation Schema (EDORS) for vulnerability representation, which is subsequently used by the policy engine to generate appropriate signatures. As a result, the generated signatures can be viewed as a preventive interim security measure against recently published threats until its patch is released. We have also evaluated our framework through a series of experiments.	\N	\N	M. Chandrasekaran and M. Baig and S. Upadhyaya	Advanced Information Networking and Applications Workshops, 2007, AINAW '07. 21st International Conference on	\N	\N	\N	10.1109/AINAW.2007.72	\N	\N	\N	\N	\N	\N	\N	\N	Application software;Computer science;Context awareness;Decision making;Laboratories;Middleware;Mobile computing;Reflection;Safety;Usability	\N	\N	May	\N	\N	\N	556-563	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	AEGIS: A Proactive Methodology to Shield against Zero-Day Exploits	\N	\N	2	2007	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Chandrasekaran2007
45	00000338	1	1	Chaturvedi2012	Bug severity is the degree of impact that a defect has on the development or operation of a component or system, and can be classified into different levels based on their impact on the system. Identification of severity level can be useful for bug triager in allocating the bug to the concerned bug fixer. Various researchers have attempted text mining techniques in predicting the severity of bugs, detection of duplicate bug reports and assignment of bugs to suitable fixer for its fix. In this paper, an attempt has been made to compare the performance of different machine learning techniques namely Support vector machine (SVM), probability based Naïve Bayes (NB), Decision Tree based J48 (A Java implementation of C4.5), rule based Repeated Incremental Pruning to Produce Error Reduction (RIPPER) and Random Forests (RF) learners in predicting the severity level (1 to 5) of a reported bug by analyzing the summary or short description of the bug reports. The bug report data has been taken from NASA's PITS (Projects and Issue Tracking System) datasets as closed source and components of Eclipse, Mozilla & GNOME datasets as open source projects. The analysis has been carried out in RapidMiner and STATISTICA data mining tools. The authors measured the performance of different machine learning techniques by considering (i) the value of accuracy and F-Measure for all severity level and (ii) number of best cases at different threshold level of accuracy and F-Measure. Copyright © 2012, IGI Global.	\N	\N	Chaturvedi, K.K.a and Singh, V.B.b 	\N	\N	\N	\N	10.4018/jossp.2013040103	\N	\N	\N	\N	\N	\N	International Journal of Open Source Software and Processes	\N	\N	\N	\N	\N	cited By 3	2	\N	32-59	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	An empirical comparison of machine learning techniques in predicting the bug severity of open and closed source projects	\N	https://www.scopus.com/inward/record.uri?eid=2-s2.0-84887444112&partnerID=40&md5=48b87d2fab9aac27d99dfaef17d16032	4	2012	\N	\N	\N	2016.06.08	dissertacao	\N	[dissertacao:]	Chaturvedi2012
46	00000339	1	9	Chaturvedi2012b	Software Bug reporting is an integral part of software development process. Once the Bug is reported on Bug Tracking System, their attributes are analyzed and subsequently assigned to various fixers for their resolution. During the last two decades Machine-Learning Techniques (MLT) has been used to create self-improving software. Supervised machine learning technique is widely used for prediction of patterns in various applications but, we have found very few for software repositories. Bug severity, an attribute of a software bug report is the degree of impact that a defect has on the development or operation of a component or system. Bug severity can be classified into different levels based on their impact on the system. In this paper, an attempt has been made to demonstrate the applicability of machine learning algorithms namely Nai&die;ve Bayes, k-Nearest Neighbor, Nai&die;ve Bayes Multinomial, Support Vector Machine, J48 and RIPPER in determining the class of bug severity of bug report data of NASA from PROMISE repository. The applicability of algorithm in determining the various levels of bug severity for bug repositories has been validated using various performance measures by applying 5-fold cross validation<sup>1</sup>. &copy; 2012 IEEE.	Indore, Madhya Pradesh, India	\N	Chaturvedi, K.K. and Singh, V.B.	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2012 CSI 6th International Conference on Software Engineering, CONSEG 2012	Learning systems	Feature extraction;Learning algorithms;NASA;Software engineering;	English	\N	\N	Bug reports;Bug Severity;Bug tracking system;Cross validation;Integral part;K-nearest neighbors;Machine learning techniques;Multinomials;Performance measure;Software bug;Software development process;Software repositories;Supervised classification;Supervised machine learning;	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Determining Bug severity using machine learning techniques	\N	http://dx.doi.org/10.1109/CONSEG.2012.6349519	\N	2012	\N	\N	\N	2016.06.08	dissertacao	\N	[dissertacao:6]	Chaturvedi2012b
92	00000402	1	9	Hu:2014:EBT:2707683.2708297	\N	Washington, DC, USA	\N	Hu, Hao and Zhang, Hongyu and Xuan, Jifeng and Sun, Weigang	Proceedings of the 2014 IEEE 25th International Symposium on Software Reliability Engineering	\N	\N	\N	10.1109/ISSRE.2014.17	\N	\N	\N	\N	\N	\N	\N	\N	bug report assignment, bug triage, developer recommendation, bug repository	\N	\N	\N	\N	\N	\N	122--132	\N	\N	\N	\N	IEEE Computer Society	\N	\N	\N	\N	\N	ISSRE '14	Effective Bug Triage Based on Historical Bug-Fix Information	\N	http://dx.doi.org/10.1109/ISSRE.2014.17	\N	2014	\N	\N	\N	\N	\N	\N	\N	Hu:2014:EBT:2707683.2708297
49	00000342	1	9	Chawla:2015:AAB:2723742.2723751	\N	New York, NY, USA	\N	Chawla, Indu and Singh, Sandeep K.	Proceedings of the 8th India Software Engineering Conference	\N	\N	\N	10.1145/2723742.2723751	\N	\N	\N	\N	\N	\N	\N	\N	Bug Categorization, Bug Repository, Fuzzy Logic	\N	Bangalore, India	\N	\N	\N	\N	90--99	\N	\N	\N	\N	ACM	\N	\N	\N	\N	\N	ISEC '15	An Automated Approach for Bug Categorization Using Fuzzy Logic	\N	http://doi.acm.org/10.1145/2723742.2723751	\N	2015	\N	\N	\N	\N	\N	\N	\N	Chawla:2015:AAB:2723742.2723751
50	00000343	1	9	Chawla2013	Bug reports of open source software systems are increasing exponentially. One reason for growing bug reports is that bug reporters do not browse the bug repository before submitting a bug report. There may be some similar bugs already reported: one, which are exactly similar or duplicate and other, which are semantically similar means they may belong to the same software component or files. The information contained in the previously reported similar bugs can be helpful in fixing and resolving the newly reported bugs. In this paper, we applied and compared performance of two information retrieval (IR) models: Vector Space Model (VSM) and Latent Semantic Indexing (LSI), in extracting existing similar bug reports. The performance of these two models have been evaluated based on the Top Ten results retrieved by them for relevant bug reports. Experiments have been conducted on 106 bug reports of three components from Google chrome, browser. Result shows that LSI performs better in most cases in comparison to VSM.	\N	\N	I. Chawla and S. K. Singh	Contemporary Computing (IC3), 2013 Sixth International Conference on	\N	\N	\N	10.1109/IC3.2013.6612223	\N	\N	\N	\N	\N	\N	\N	\N	information retrieval;pattern matching;performance evaluation;program debugging;public domain software;software management;Google chrome;IR model;LSI models;VSM;browser;bug reports similarity determination;bug repository;information retrieval;latent semantic indexing;open source software systems;performance evaluation;vector space model;Computer bugs;Indexing;Information retrieval;Large scale integration;Semantics;Software;Vectors;Bug report;Latent Semantic Indexing;Vector space model	\N	\N	Aug	\N	\N	\N	375-380	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Performance evaluation of VSM and LSI models to determine bug reports similarity	\N	\N	\N	2013	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Chawla2013
51	00000345	1	1	Chen2011a	In open-source software development a new bug firstly is found by developers or users. Then the bug is described as a bug report, which is submitted to a bug repository. Finally the bug triager checks the bug report and typically assigns a developer to fix the bug. The assignment process is time-consuming and error-prone. Furthermore, a large number of bug reports are tossed (reassigned) to other developers, which increases bug-fix time. In order to quickly identify the fixer to bug reports we present an approach based on the bug tossing history and textual similarities between bug reports. This proposed approach is evaluated on Eclipse and Mozilla. The results show that our approach can significantly improve the efficiency of bug assignment: the bug fixer is often identified with fewer tossing events. &copy; 2011 ACADEMY PUBLISHER.	\N	\N	Chen, Liguo and Wang, Xiaobo and Liu, Chao	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Journal of Software	Program debugging	Information retrieval;Natural language processing systems;Search engines;Software design;	English	\N	\N	Bug assignment;Bug reports;Bug tossing;Error prones;Mozilla;Open-source software development;Textual similarities;	3	\N	421 - 427	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	An approach to improving bug assignment with bug tossing graphs and bug similarities	\N	http://dx.doi.org/10.4304/jsw.6.3.421-427	6	2011	\N	\N	\N	2016.06.08	dissertacao	\N	[dissertacao:6]	Chen2011a
52	00000346	1	9	Clarke2010	The Computational Sciences Environment (CSE) was developed to provide a standard development platform for data analysis, visualization, and software testing and evaluation. The Classified Data Analysis and Assessment Center (CDAAC), in conjunction with the Computational Sciences and Engineering Branch (CSEB) of the Army Research Laboratory, assembled a set of open source data analysis tools and applications, software management and testing tools, and libraries necessary to run the tools; and made them available as a package called CSE. CSE also provides experimental software builds for users who might need newer features than what is currently available in the release package. The CSE team provides support for developers, the end-user, and distributed development teams. Tests are regularly run on the software, both current and release, and the results are submitted to quality dashboards for review using CTest. CTest is part of an open-source software building tool called CMake. Developers can use CSE as a template and can customize it to meet their specific project goals. CSE provides developers with a common tool set to assist in developing portable high performance computing (HPC) Applications. Development of CSE has been managed through an open-source project management application that provides Software Configuration Management (SCM) integration of the CSE repository, informational wikis, bug tracking, and feature requests. To support distributed development teams, CSE provides project management tools, software repositories, SCM, and online software quality dashboards.	\N	\N	J. Clarke and J. Vines and K. Kirk and E. Mark and R. Angelini and C. Spear and N. Waisbrot and J. Martin and K. Leiter	High Performance Computing Modernization Program Users Group Conference (HPCMP-UGC), 2010 DoD	\N	\N	\N	10.1109/HPCMP-UGC.2010.68	\N	\N	\N	\N	\N	\N	\N	\N	computer centres;data analysis;data visualisation;program testing;project management;public domain software;software libraries;software management;software packages;software quality;software tools;CSE;CTest;SCM;classified data analysis and assessment center;computational science environment;data visualization;high performance computing centre;informational wikis;libraries;open source software;project management tools;quality dashboards;software configuration management;software package;software quality;software repositories;software testing;software tools;Buildings;Data analysis;Data visualization;Libraries;Software;Testing;US Department of Defense	\N	\N	June	\N	\N	\N	442-449	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	A Common Computational Science Environment for High Performance Computing Centers	\N	\N	\N	2010	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Clarke2010
53	00000347	1	4	Corley2011	Traceability links can be recovered using data mined from a revision control system, such as CVS, and an issue tracking system, such as Bugzilla. Existing approaches to recover links between a bug and the methods changed to fix the bug rely on the presence of the bug's identifier in a CVS log message. In this paper we present an approach that relies instead on the presence of a patch in the issue report for the bug. That is, rather than analyzing deltas retrieved from CVS to recover links, our approach analyzes patches retrieved from Bugzilla. We use BugTrace, the tool implementing our approach, to conduct a case study in which we compare the links recovered by our approach to links recovered by manual inspection. The results of the case study support the efficacy of our approach. After describing the limitations of our case study, we conclude by reviewing closely related work and suggesting possible future work. © 2011 ACM.	\N	\N	Corley, C.S.a and Kraft, N.A.b and Etzkorn, L.H.c and Lukins, S.K.c 	\N	\N	\N	\N	10.1145/1987856.1987863	\N	\N	\N	\N	\N	\N	Proceedings - International Conference on Software Engineering	\N	\N	\N	\N	\N	cited By 0	\N	\N	31-37	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Recovering traceability links between source code and fixed bugs via patch analysis	\N	https://www.scopus.com/inward/record.uri?eid=2-s2.0-79959848546&partnerID=40&md5=33fce364b3b75e87e3b93a89e2a1df93	\N	2011	\N	\N	\N	2016.06.08	dissertacao	\N	[dissertacao:]	Corley2011
55	00000351	1	4	Correa2013b	Several widely used Issue tracking systems (such as Google Issue Tracker and Bugzilla) contains an integrated threaded discussion forum to facilitate discussion between the development and maintenance team (bug reporters, bug triagers, bug fixers and quality assurance managers). We observe that several comments (and even bug report descriptions) posted to issue tracing system contains links to external websites as references to knowledge sources relevant to the discussion. We conduct a survey (and present the results of the survey) of Google Chromium Developers on the importance and usefulness of web references in issue tracking system comments and the need of a web-browser extension which facilitates easy organization and inclusion of web-links in the post. We conduct a characterization study on an experimental dataset from Google Chromium Issue Tracking system and present results on the distribution of number of links in the dataset, categorization of links into predefined classes (such as blogs, community based Q&A websites, developer discussion forums, version control system), correlation of number and types of links with various bug report types (such as security, crash, regression and clean-up) and relation between presence of links and bug resolution time. Survey results and data characterization study motivate the need of building a developer productivity tool to facilitate web-link (as references) organization and inclusion in issue tracking system comments. We present a Google ChromiumWeb Browser Extension called as Samekana and publish the extension on Google Chromium Web Store which can be freely downloaded by users worldwide. The extension contains features such as annotating (using tags, title and description) and saving web references pertaining to multiple bug reports and tasks and then posting it as bibliography (for easy citation and reference) in issue tracking system comments. © 2013 IEEE.	\N	\N	Correa, D.a and Lal, S.b and Saini, A.a and Sureka, A.a 	\N	\N	\N	\N	10.1109/APSEC.2013.15	\N	\N	\N	\N	\N	\N	Proceedings - Asia-Pacific Software Engineering Conference, APSEC	\N	\N	\N	\N	\N	cited By 0	\N	\N	25-33	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Samekana: A Browser Extension for including relevant web links in issue tracking system discussion forum	\N	https://www.scopus.com/inward/record.uri?eid=2-s2.0-84936867035&partnerID=40&md5=22c146ae09f6391fd97534ddb797e1e9	1	2013	\N	\N	\N	2016.06.08	dissertacao	\N	[dissertacao:]	Correa2013b
57	00000354	1	9	Correa2013	Issue tracking systems such as Bugzilla are tools to facilitate collaboration between software maintenance professionals. Popular issue tracking systems consists of discussion forums to facilitate bug reporting and comment posting. We observe that several comments posted in issue tracking system contains link to external websites such as YouTube (video sharing website), Twitter (micro-blogging website), Stack overflow (a community-based question and answering website for programmers), Wikipedia and focused discussions forums. Stack overflow is a popular community-based question and answering website for programmers and is widely used by software engineers as it contains answers to millions of questions (an extensive knowledge resource) posted by programmers on diverse topics. We conduct a series of experiments on open-source Google Chromium and Android issue tracker data (publicly available real-world dataset) to understand the role and impact of Stack overflow in issue resolution. Our experimental results show evidences of several references to Stack overflow in threaded discussions and demonstrate correlation between a lower mean time to repair (in one dataset) with presence of Stack overflow links. We also observe that the average number of comments posted in response to bug reports are less when Stack overflow links are presented in contrast to bug reports not containing Stack overflow references. We conduct experiments based on textual similarly analysis (content-based linguistic features) and contextual data analysis (exploited metadata such as tags associated to a Stack overflow question) to recommend Stack overflow questions for an incoming bug report. We perform empirical analysis to measure the effectiveness of the proposed method on a dataset containing ground-truth and present our insights. We present the result of a survey (of Google Chromium Developers) that we conducted to understand practitioner's perspective and experience.	\N	\N	D. Correa and A. Sureka	2013 22nd Australian Software Engineering Conference	\N	\N	\N	10.1109/ASWEC.2013.20	\N	\N	\N	\N	\N	\N	\N	\N	data analysis;data mining;meta data;program debugging;public domain software;question answering (information retrieval);social networking (online);software maintenance;software metrics;text analysis;user interfaces;Android issue tracker data;Bugzilla;Stack overflow;Twitter;Wikipedia;YouTube;bug reporting;comment posting;community-based question-and-answering Web sites;content-based linguistic features;contextual data analysis;discussion forums;exploited metadata;issue tracking system integration;microblogging Web site;mining software repositories;open-source Google Chromium issue tracker data;software maintenance professionals;tags;textual similarly analysis;video sharing Web site;Androids;Chromium;Discussion forums;Google;Humanoid robots;Message systems;Software maintenance;Community Driven Q&amp;A Website;Empirical Software Engineering and Measurements (ESEM);Mining Bug Reports;Mining Software Repositories (MSR);Social Media for Software Engineering;Software Maintenance	\N	\N	June	\N	\N	\N	88-96	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Integrating Issue Tracking Systems with Community-Based Question and Answering Websites	\N	\N	\N	2013	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Correa2013
112	00000427	1	9	Lazar:2014:GDB:2597073.2597128	\N	New York, NY, USA	\N	Lazar, Alina and Ritchey, Sarah and Sharif, Bonita	Proceedings of the 11th Working Conference on Mining Software Repositories	\N	\N	\N	10.1145/2597073.2597128	\N	\N	\N	\N	\N	\N	\N	\N	Data Repositories, Duplicate Bug Pairs, Duplicate Bug Reports	\N	Hyderabad, India	\N	\N	\N	\N	392--395	\N	\N	\N	\N	ACM	\N	\N	\N	\N	\N	MSR 2014	Generating Duplicate Bug Datasets	\N	http://doi.acm.org/10.1145/2597073.2597128	\N	2014	\N	\N	\N	\N	\N	\N	\N	Lazar:2014:GDB:2597073.2597128
113	00000428	1	9	Lerch:2013:FDY:2495256.2495763	\N	Washington, DC, USA	\N	Lerch, Johannes and Mezini, Mira	Proceedings of the 2013 17th European Conference on Software Maintenance and Reengineering	\N	\N	\N	10.1109/CSMR.2013.17	\N	\N	\N	\N	\N	\N	\N	\N	stack trace, duplicate detection, bug report	\N	\N	\N	\N	\N	\N	69--78	\N	\N	\N	\N	IEEE Computer Society	\N	\N	\N	\N	\N	CSMR '13	Finding Duplicates of Your Yet Unwritten Bug Report	\N	http://dx.doi.org/10.1109/CSMR.2013.17	\N	2013	\N	\N	\N	\N	\N	\N	\N	Lerch:2013:FDY:2495256.2495763
58	00000356	1	1	Cosentino2015	Software development projects are notoriously complex and difficult to deal with. Several support tools such as issue tracking, code review and Source Control Management (SCM) systems have been introduced in the past decades to ease development activities. While such tools efficiently track the evolution of a given aspect of the project (e.g., bug reports), they provide just a partial view of the project and often lack of advanced querying mechanisms limiting themselves to command line or simple GUI support. This is particularly true for projects that rely on Git, the most popular SCM system today. In this paper, we propose a conceptual schema for Git and an approach that, given a Git repository, exports its data to a relational database in order to (1) promote data integration with other existing SCM tools and (2) enable writing queries on Git data using standard SQL syntax. To ensure efficiency, our approach comes with an incremental propagation mechanism that refreshes the database content with the latest modifications. We have implemented our approach in Gitana, an open-source tool available on GitHub. © Springer International Publishing Switzerland 2015.	\N	\N	Cosentino, V.a and Izquierdo, J.L.C.a b and Cabot, J.b c 	\N	\N	\N	\N	10.1007/978-3-319-25264-3_24	\N	\N	\N	\N	\N	\N	Lecture Notes in Computer Science (including subseries Lecture Notes in Artificial Intelligence and Lecture Notes in Bioinformatics)	\N	\N	\N	\N	\N	cited By 0	\N	\N	329-343	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Gitana: A SQL-Based Git Repository Inspector	\N	https://www.scopus.com/inward/record.uri?eid=2-s2.0-84951821696&partnerID=40&md5=9056566e7599cccb1cb618764dc10429	9381	2015	\N	\N	\N	2016.06.08	dissertacao	\N	[dissertacao:]	Cosentino2015
59	00000357	1	9	DAmbros2008	More than 90% of the cost of software is due to maintenance and evolution. Understanding the evolution of large software systems is a complex problem, which requires the use of various techniques and the support of tools. Several software evolution approaches put the emphasis on structural entities such as packages, classes and structural relationships. However, software evolution is not only about the history of software artifacts, but it also includes other types of data such as problem reports, mailing list archives etc. We propose an approach which focuses on historical dependencies and defects. We claim that they play an important role in software evolution and they are complementary to techniques based on structural information. We use historical dependencies and defect information to learn about a software system and detect potential problems in the source code. Moreover, based on design flaws detected in the source code, we predict the location of future bugs to focus maintenance activities on the buggy parts of the system. We validated our defect prediction by comparing it with the actual defects reported in the bug tracking system.	\N	\N	M. D'Ambros	Software Maintenance, 2008. ICSM 2008. IEEE International Conference on	\N	\N	\N	10.1109/ICSM.2008.4658092	\N	\N	\N	\N	\N	\N	\N	\N	program visualisation;software maintenance;software prototyping;software reliability;defect meta-model;large software system;program visualisation;software artifact history dependency;software defect information;software evolution analysis;software maintenance;source code;Computer bugs;Costs;History;Informatics;Information analysis;Packaging;Software maintenance;Software packages;Software quality;Software systems	\N	\N	Sept	\N	\N	\N	412-415	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Supporting software evolution analysis with historical dependencies and defect information	\N	\N	\N	2008	\N	\N	\N	2016.06.08	dissertacao	\N	\N	DAmbros2008
60	00000358	1	9	DAmbros2008a	To understand the evolution of software, researchers have developed a plethora of tools to parse, model, and analyze the history of systems. Despite their usefulness, a common downside of such tools is that their use comes with many strings attached, such as installation, data formats, usability, etc. The result is that many tools are only used by their creators, which is detrimental to cross-fertilization of research ideas and collaborative analysis. In this paper we present the Churrasco framework, which supports software evolution modeling, visualization and analysis through a web interface. The user provides only the URL of the Subversion repository to be analyzed and, if available, of the corresponding bug tracking system. Churrasco processes the given data and automatically creates and stores an evolutionary model in a centralized database. This database, called Meta-base is connected to Churrasco through object-relational persistence. The persistency mechanism is meta-described in terms of the EMOF meta-meta- model and automatically generated based on any given evolutionary meta-model. In case the meta-model changes, the persistency mechanism is automatically updated. After providing a detailed description of Churrasco, we provide evidence, by means of an example scenario, that it allows for collaborative software evolution analysis, based on visualizations available on our analysis web portal.	\N	\N	M. D'Ambros and M. Lanza	Software Maintenance and Reengineering, 2008. CSMR 2008. 12th European Conference on	\N	\N	\N	10.1109/CSMR.2008.4493295	\N	\N	\N	\N	\N	\N	\N	\N	Internet;object-oriented databases;relational databases;reverse engineering;software tools;Churrasco framework;Meta-base;URL;Web interface;bug tracking system;centralized database;collaborative software evolution analysis;evolutionary meta-model;object-relational persistence;software visualization;Cause effect analysis;Collaborative software;Data visualization;History;Informatics;Information analysis;Software systems;Software tools;Usability;Visual databases	\N	\N	April	\N	\N	\N	3-12	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	A Flexible Framework to Support Collaborative Software Evolution Analysis	\N	\N	\N	2008	\N	\N	\N	2016.06.08	dissertacao	\N	\N	DAmbros2008a
61	00000359	1	9	DAmbros2007	Visualization has long been accepted as a viable means to comprehend large amounts of information. Especially in the context of software evolution a well-designed visualization is crucial to be able to cope with the sheer data that needs to be analyzed. Many approaches have been investigated to visualize evolving systems, but most of them focus on structural data and are useful to answer questions about the structural evolution of a system. In this paper we consider an often neglected type of information, namely the one provided by bug tracking systems, which store data about the problems that various people, from developers to end users, detected and reported. We first briefly introduce the context by reporting on the particularities of the present data, and then propose two visualizations to render bugs as first-level entities.	\N	\N	M. D'Ambros and M. Lanza and M. Pinzger	2007 4th IEEE International Workshop on Visualizing Software for Understanding and Analysis	\N	\N	\N	10.1109/VISSOF.2007.4290709	\N	\N	\N	\N	\N	\N	\N	\N	data structures;data visualisation;database management systems;program debugging;bug database visualization;bug rendering;bug tracking systems;data storage;data structure;software evolution;Computer architecture;Computer bugs;Data visualization;Feedback;History;Informatics;Radiography;Reverse engineering;Visual databases;Watches	\N	\N	June	\N	\N	\N	113-120	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\\"A Bug's Life\\" Visualizing a Bug Database	\N	\N	\N	2007	\N	\N	\N	2016.06.08	dissertacao	\N	\N	DAmbros2007
62	00000360	1	2	Damiani:2006:OSS:1137827	\N	Secaucus, NJ, USA	\N	Damiani, Ernesto and Fitzgerald, Brian and Scacchi, Walt and Scotto, Marco	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Springer-Verlag New York, Inc.	\N	\N	\N	\N	\N	\N	Open Source Systems: IFIP Working Group 2.13 Foundation Conference on Open Source Software, June 8-10, 2006, Como, Italy (IFIP International Federation for Information Processing)	\N	\N	\N	2006	\N	\N	\N	\N	\N	\N	\N	Damiani:2006:OSS:1137827
63	00000361	1	9	Davies:2014:WBR:2652524.2652541	\N	New York, NY, USA	\N	Davies, Steven and Roper, Marc	Proceedings of the 8th ACM/IEEE International Symposium on Empirical Software Engineering and Measurement	\N	\N	\N	10.1145/2652524.2652541	\N	\N	\N	\N	\N	\N	\N	\N	bug report, bug repository, software maintenance	\N	Torino, Italy	\N	\N	\N	\N	26:1--26:10	\N	\N	\N	\N	ACM	\N	\N	\N	\N	\N	ESEM '14	What's in a Bug Report?	\N	http://doi.acm.org/10.1145/2652524.2652541	\N	2014	\N	\N	\N	\N	\N	\N	\N	Davies:2014:WBR:2652524.2652541
64	00000363	1	1	Davies2014a	Identifying bug origins - the point where erroneous code was introduced - is crucial for many software engineering activities, from identifying process weaknesses to gathering data to support bug detection tools. Unfortunately, this information is not usually recorded when fixing bugs, and recovering it later is challenging. Recently, the text approach and the dependence approach have been developed to tackle this problem. Respectively, they examine textual and dependence-related changes that occurred prior to a bug fix. However, only limited evaluation has been carried out, partially because of a lack of available implementations and of datasets linking bugs to origins. To address this, origins of 174 bugs in three projects were manually identified and compared to a simulation of the approaches. Both approaches were partially successful across a variety of bugs - achieving 29-79% precision and 40-70% recall. Results suggested the precise definition of program dependence could affect performance, as could whether the approaches identified a single or multiple origins. Some potential improvements are explored in detail and identify pragmatic strategies for combining techniques along with simple modifications. Even after adopting these improvements, there remain many challenges: large commits, unrelated changes and long periods between origins and fixes all reduce effectiveness. Copyright © 2013 John Wiley & Sons, Ltd.	\N	\N	Davies, S. and Roper, M. and Wood, M.	\N	\N	\N	\N	10.1002/smr.1619	\N	\N	\N	\N	\N	\N	Journal of software: Evolution and Process	\N	\N	\N	\N	\N	cited By 1	1	\N	107-139	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Comparing text-based and dependence-based approaches for determining the origins of bugs	\N	https://www.scopus.com/inward/record.uri?eid=2-s2.0-84899098981&partnerID=40&md5=f5dbcb1edc925116a78fe547989d800f	26	2014	\N	\N	\N	2016.06.08	dissertacao	\N	[dissertacao:]	Davies2014a
65	00000364	1	1	DeCastroNetto2016	Software projects usually maintain bug repositories where both developers and end users can report and track the resolution of software defects. These defects should be fixed and new versions of the software incorporating the patches that solve them must be released. The project manager must schedule a set of error correction tasks with different priorities in order to minimize the time required to accomplish these tasks and guarantee that the more important issues have been fixed. This problem is recurrent for most software organizations and, given the enormous number of potential schedules, a tool that searches for good schedules may be helpful to project managers. In this work we propose a genetic algorithm using information captured from bug repositories to find near optimal schedules. We evaluated our approach using a subset of the Eclipse bug repository and the results suggested better schedules than the schedule followed by the developers and schedules proposed by a simpler search procedure. © 2016 World Scientific Publishing Company.	\N	\N	De Castro Netto, F. and De Oliveira Barros, M. and Alvim, A.C.F.	\N	\N	\N	\N	10.1142/S021819401650011X	\N	\N	\N	\N	\N	\N	International Journal of Software Engineering and Knowledge Engineering	\N	\N	\N	\N	\N	cited By 0	2	\N	239-271	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	An Automated Approach for Scheduling Bug Fix Tasks	\N	https://www.scopus.com/inward/record.uri?eid=2-s2.0-84966270943&partnerID=40&md5=476a2827b2c7085a2ddaef2464675816	26	2016	\N	\N	\N	2016.06.08	dissertacao	\N	[dissertacao:]	DeCastroNetto2016
66	00000366	1	9	Ding2012	Online service systems have been increasingly popular and important nowadays, with an increasing demand on the availability of services provided by these systems, while significant efforts have been made to strive for keeping services up continuously. Therefore, reducing the MTTR (Mean Time to Restore) of a service remains the most important step to assure the user-perceived availability of the service. To reduce the MTTR, a common practice is to restore the service by identifying and applying an appropriate healing action (i.e., a temporary workaround action such as rebooting a SQL machine). However, manually identifying an appropriate healing action for a given new issue (such as service down) is typically time consuming and error prone. To address this challenge, in this paper, we present an automated mining-based approach for suggesting an appropriate healing action for a given new issue. Our approach generates signatures of an issue from its corresponding transaction logs and then retrieves historical issues from a historical issue repository. Finally, our approach suggests an appropriate healing action by adapting healing actions for the retrieved historical issues. We have implemented a healing suggestion system for our approach and applied it to a real-world product online service that serves millions of online customers globally. The studies on 77 incidents (severe issues) over 3 months showed that our approach can effectively provide appropriate healing actions to reduce the MTTR of the service.	\N	\N	R. Ding and Q. Fu and J. G. Lou and Q. Lin and D. Zhang and J. Shen and T. Xie	Automated Software Engineering (ASE), 2012 Proceedings of the 27th IEEE/ACM International Conference on	\N	\N	\N	10.1145/2351676.2351735	\N	\N	\N	\N	\N	\N	\N	\N	data mining;fault tolerant computing;information services;MTTR;automated mining-based approach;healing online service systems;healing suggestion system;historical issue repository mining;historical issue retrieval;mean time to restore;service user-perceived availability;transaction logs;Online service system;healing action	\N	\N	Sept	\N	\N	\N	318-321	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Healing online service systems via mining historical issue repositories	\N	\N	\N	2012	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Ding2012
67	00000367	1	9	DucAnh:2011:EVH:2020390.2020403	\N	New York, NY, USA	\N	Duc Anh, Nguyen and Cruzes, Daniela S. and Conradi, Reidar and Ayala, Claudia	Proceedings of the 7th International Conference on Predictive Models in Software Engineering	\N	\N	\N	10.1145/2020390.2020403	\N	\N	\N	\N	\N	\N	\N	\N	bug lead time, bug prediction, bug triage, classification model, empirical study, issue lead time, issue resolution time, regression model	\N	Banff, Alberta, Canada	\N	\N	\N	\N	13:1--13:10	\N	\N	\N	\N	ACM	\N	\N	\N	\N	\N	Promise '11	Empirical Validation of Human Factors in Predicting Issue Lead Time in Open Source Projects	\N	http://doi.acm.org/10.1145/2020390.2020403	\N	2011	\N	\N	\N	\N	\N	\N	\N	DucAnh:2011:EVH:2020390.2020403
68	00000368	1	1	Ebert:2015:ESE:2794082.2794106	\N	New York, NY, USA	\N	Ebert, Felipe and Castor, Fernando and Serebrenik, Alexander	\N	\N	\N	\N	10.1016/j.jss.2015.04.066	\N	\N	\N	\N	\N	\N	J. Syst. Softw.	\N	Bugs, Exception handling, Repository mining	\N	\N	#aug#	\N	C	\N	82--101	\N	\N	\N	\N	Elsevier Science Inc.	\N	\N	\N	\N	\N	\N	An Exploratory Study on Exception Handling Bugs in Java Programs	\N	http://dx.doi.org/10.1016/j.jss.2015.04.066	106	2015	\N	\N	\N	\N	\N	\N	\N	Ebert:2015:ESE:2794082.2794106
73	00000374	1	9	Garcia2013	We analyze the relation between the emotions and the activity of contributors in the Open Source Software project GENTOO. Our case study builds on extensive data sets from the project's bug tracking platform BUGZILLA, to quantify the activity of contributors, and its mail archives, to quantify the emotions of contributors by means of sentiment analysis. The GENTOO project is known for a period of centralization within its bug triaging community. This was followed by considerable changes in community organization and performance after the sudden retirement of the central contributor. We analyze how this event correlates with the negative emotions, both in bilateral email discussions with the central contributor, and at the level of the whole community of contributors. We then extend our study to consider the activity patterns of GENTOO contributors in general. We find that contributors are more likely to become inactive when they express strong positive or negative emotions in the bug tracker, or when they deviate from the expected value of emotions in the mailing list. We use these insights to develop a Bayesian classifier that detects the risk of contributors leaving the project. Our analysis opens new perspectives for measuring online contributor motivation by means of sentiment analysis and for real-time predictions of contributor turnover in Open Source Software projects.	\N	\N	D. Garcia and M. S. Zanetti and F. Schweitzer	Cloud and Green Computing (CGC), 2013 Third International Conference on	\N	\N	\N	10.1109/CGC.2013.71	\N	\N	\N	\N	\N	\N	\N	\N	human factors;program debugging;public domain software;BUGZILLA project bug tracking platform;Bayesian classifier;GENTOO community;bilateral email discussions;bug triaging community;contributor activity;online contributor motivation;open source software project;sentiment analysis;Communities;Media;Open source software;Organizations;Psychology;Social network services;activity;machine learning;motivation;open source;sentiment analysis;turnover	\N	\N	Sept	\N	\N	\N	410-417	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	The Role of Emotions in Contributors Activity: A Case Study on the GENTOO Community	\N	\N	\N	2013	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Garcia2013
69	00000369	1	1	Felderer2015	Systematic defect management based on bug-tracking systems such as Bugzilla is well established and has been successfully used in many software organizations. Defect management weights the failures observed during test execution according to their severity and forms the basis for effective defect taxonomies. In practice, most defect taxonomies are used only for the a posteriori allocation of testing resources to prioritize failures for debugging. Thus, these taxonomies' full potential to control and improve all the steps of testing has remained unexploited. This is especially the case for testing a system's user requirements. System-level defect taxonomies can improve the design of requirements-based tests, the tracing of defects to requirements, the quality assessment of requirements, and the control of the relevant defect management. So, we developed requirements-based testing with defect taxonomies (RTDT). This approach is aligned with the standard test process and uses defect taxonomies to support all phases of testing requirements. To illustrate this approach and its benefits, we use an example project (which we call Project A) from a public health insurance institution.	\N	\N	M. Felderer and A. Beer	\N	\N	\N	\N	10.1109/MS.2014.56	\N	\N	\N	\N	\N	\N	IEEE Software	\N	program testing;software quality;Bugzilla;RTDT;a posteriori allocation;bug-tracking system;defect taxonomies;requirements quality assessment;requirements-based testing;systematic defect management;Graphical user interfaces;Requirements engineering;Software engineering;Software testing;Syntactics;Taxonomy;defect taxonomy;requirements validation;requirements-based testing;software engineering;software quality;test management	\N	\N	May	\N	3	\N	94-101	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Using Defect Taxonomies for Testing Requirements	\N	\N	32	2015	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Felderer2015
70	00000370	1	1	Feng2013	Most of large web-based development communities require a bug tracking system to keep track of various bug reports. However, duplicate bug reports tend to result in waste of resources, and may cause potential conflicts. There have been two types of works focusing on this problem: relevant bug report retrieval [8][11][10][13] and duplicate bug report identification [5][12]. The former methods can achieve high accuracy (82%) in the top 10 results in some dataset, but they do not really reduce the workload of developers. The latter methods still need further improvement on the performance. In this paper, we propose a practical duplicate bug reports detection method, which aims to help project team to reduce their workload by combining existing two categories of methods. We also propose some new features extracted from comments, user profiles and query feedback, which are useful for improving the detection performance. Experiments on real dataset show that our method improves the accuracy rate by 23% compared to state-of-the-art work in duplicate bug report identification, and improves the recall rate by up to 8% in relevant bug report retrieval. © 2013 Springer-Verlag.	\N	\N	Feng, L.a and Song, L.a and Sha, C.b and Gong, X.a 	\N	\N	\N	\N	10.1007/978-3-642-37401-2_69	\N	\N	\N	\N	\N	\N	Lecture Notes in Computer Science (including subseries Lecture Notes in Artificial Intelligence and Lecture Notes in Bioinformatics)	\N	\N	\N	\N	\N	cited By 0	\N	\N	709-720	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Practical duplicate bug reports detection in a large web-based development community	\N	https://www.scopus.com/inward/record.uri?eid=2-s2.0-84875826407&partnerID=40&md5=3f8fd101894173ea1031268c5865fb36	7808 LNCS	2013	\N	\N	\N	2016.06.08	dissertacao	\N	[dissertacao:]	Feng2013
72	00000372	1	9	Fischer2003	Version control and bug tracking systems contain large amounts of historical information that can give deep insight into the evolution of a software project. Unfortunately, these systems provide only insufficient support for a detailed analysis of software evolution aspects. We address this problem and introduce an approach for populating a release history database that combines version data with bug tracking data and adds missing data not covered by version control systems such as merge points. Then simple queries can be applied to the structured data to obtain meaningful views showing the evolution of a software project. Such views enable more accurate reasoning of evolutionary aspects and facilitate the anticipation of software evolution. We demonstrate our approach on the large open source project Mozilla that offers great opportunities to compare results and validate our approach.	\N	\N	M. Fischer and M. Pinzger and H. Gall	Software Maintenance, 2003. ICSM 2003. Proceedings. International Conference on	\N	\N	\N	10.1109/ICSM.2003.1235403	\N	\N	\N	\N	\N	\N	\N	\N	configuration management;database management systems;program debugging;project management;query processing;software maintenance;system monitoring;Mozilla;Release History Database;bug tracking systems;database population;historical information;large open source project;merge points;software evolution;version control;Application software;Computer errors;Control systems;Data engineering;Databases;History;Information analysis;Open source software;Systems engineering and theory;Technological innovation	\N	\N	Sept	\N	\N	\N	23-32	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Populating a Release History Database from version control and bug tracking systems	\N	\N	\N	2003	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Fischer2003
79	00000384	1	9	Guo:2011:MBO:1958824.1958887	\N	New York, NY, USA	\N	Guo, Philip J. and Zimmermann, Thomas and Nagappan, Nachiappan and Murphy, Brendan	Proceedings of the ACM 2011 Conference on Computer Supported Cooperative Work	\N	\N	\N	10.1145/1958824.1958887	\N	\N	\N	\N	\N	\N	\N	\N	bug reassignment, bug tracking, bug triaging	\N	Hangzhou, China	\N	\N	\N	\N	395--404	\N	\N	\N	\N	ACM	\N	\N	\N	\N	\N	CSCW '11	\\"Not My Bug!\\" and Other Reasons for Software Bug Report Reassignments	\N	http://doi.acm.org/10.1145/1958824.1958887	\N	2011	\N	\N	\N	\N	\N	\N	\N	Guo:2011:MBO:1958824.1958887
74	00000375	1	9	Gegick2010	A bug-tracking system such as Bugzilla contains bug reports (BRs) collected from various sources such as development teams, testing teams, and end users. When bug reporters submit bug reports to a bug-tracking system, the bug reporters need to label the bug reports as security bug reports (SBRs) or not, to indicate whether the involved bugs are security problems. These SBRs generally deserve higher priority in bug fixing than not-security bug reports (NSBRs). However, in the bug-reporting process, bug reporters often mislabel SBRs as NSBRs partly due to lack of security domain knowledge. This mislabeling could cause serious damage to software-system stakeholders due to the induced delay of identifying and fixing the involved security bugs. To address this important issue, we developed a new approach that applies text mining on natural-language descriptions of BRs to train a statistical model on already manually-labeled BRs to identify SBRs that are manually-mislabeled as NSBRs. Security engineers can use the model to automate the classification of BRs from large bug databases to reduce the time that they spend on searching for SBRs. We evaluated the model's predictions on a large Cisco software system with over ten million source lines of code. Among a sample of BRs that Cisco bug reporters manually labeled as NSBRs in bug reporting, our model successfully classified a high percentage (78%) of the SBRs as verified by Cisco security engineers, and predicted their classification as SBRs with a probability of at least 0.98.	\N	\N	M. Gegick and P. Rotella and T. Xie	2010 7th IEEE Working Conference on Mining Software Repositories (MSR 2010)	\N	\N	\N	10.1109/MSR.2010.5463340	\N	\N	\N	\N	\N	\N	\N	\N	Computer bugs;Data engineering;Data security;Databases;Delay;Mining industry;Predictive models;Software systems;System testing;Text mining	\N	\N	May	\N	\N	\N	11-20	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Identifying security bug reports via text mining: An industrial case study	\N	\N	\N	2010	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Gegick2010
75	00000376	1	4	Ghezzi2011a	Access to data stored in software repositories by systems such as version control, bug and issue tracking, or mailing lists is essential for assessing the quality of a software system. A myriad of analyses exploiting that data have been proposed throughout the years: source code analysis, code duplication analysis, co-change analysis, bug prediction, or detection of bug fixing patterns. However, easy and straight forward synergies between these analyses rarely exist. To tackle this problem we have developed SOFA S, a distributed and collaborative software analysis platform to enable a seamless interoperation of such analyses. In particular, software analyses are offered as RESTful web services that can be accessed and composed over the Internet. SOFA S services are accessible through a software analysis catalog where any project stakeholder can, depending on the needs or interests, pick specific analyses, combine them, let them run remotely and then fetch the final results. That way, software developers, testers, architects, or quality assurance experts are given access to quality analysis services. They are shielded from many peculiarities of tool installations and configurations, but SOFA S offers them sophisticated and easy-to-use analyses. This paper describes in detail our SOFAS architecture, its considerations and implementation aspects, and the current set of implemented and offered RESTful analysis services. © 2011 IEEE.	\N	\N	Ghezzi, G. and Gall, H.C.	\N	\N	\N	\N	10.1109/WICSA.2011.21	\N	\N	\N	\N	\N	\N	Proceedings - 9th Working IEEE/IFIP Conference on Software Architecture, WICSA 2011	\N	\N	\N	\N	\N	cited By 7	\N	\N	93-102	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	SOFAS: A lightweight architecture for software analysis as a service	\N	https://www.scopus.com/inward/record.uri?eid=2-s2.0-80051965439&partnerID=40&md5=6e9553a580b709d2114c87bed9f4ae76	\N	2011	\N	\N	\N	2016.06.08	dissertacao	\N	[dissertacao:]	Ghezzi2011a
76	00000380	1	1	Gonzalez-Barahona:2013:UCI:2553372.2553381	\N	Los Alamitos, CA, USA	\N	Gonzalez-Barahona, Jesus and Izquierdo, Daniel and Maffulli, Stefano and Robles, Gregorio	\N	\N	\N	\N	10.1109/MS.2013.95	\N	\N	\N	\N	\N	\N	IEEE Softw.	\N	Software analytics,Software measurement,Electronic mail,Open source software,Statistics,computing milieu,software analytics,process metrics,measurement,software engineering,statistics	\N	\N	#sep#	\N	5	\N	38--45	\N	\N	\N	\N	IEEE Computer Society Press	\N	\N	\N	\N	\N	\N	Understanding How Companies Interact with Free Software Communities	\N	http://dx.doi.org/10.1109/MS.2013.95	30	2013	\N	\N	\N	\N	\N	\N	\N	Gonzalez-Barahona:2013:UCI:2553372.2553381
77	00000381	1	9	Gonzalez-Barahona2015	The Metrics Grimoire system is composed by a set of tools designed to retrieve data from repositories related to software development. Their aim is to produce organized databases suitable for easy querying with research and industrial purposes. The data in those databases have a similar structure, to easy cross-database studies, and can be enriched with information such as linkage of the multiple identities of actors, or their affiliation. This paper presents the general structure of those databases, and a collection of up-to-date database dumps that are publicly available. They correspond to two well-known projects, Open Stack, and Eclipse, including data from source code management repositories, issue tracking systems, mailing lists, and code review systems.	\N	\N	J. M. Gonzalez-Barahona and G. Robles and D. Izquierdo-Cortazar	2015 IEEE/ACM 12th Working Conference on Mining Software Repositories	\N	\N	\N	10.1109/MSR.2015.68	\N	\N	\N	\N	\N	\N	\N	\N	database management systems;software engineering;Eclipse;Open Stack;metrics grimoire database collection;software development;source code management repositories;up-to-date database;Companies;Databases;Merging;Open source software;Standards organizations	\N	\N	May	\N	\N	\N	478-481	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	The MetricsGrimoire Database Collection	\N	\N	\N	2015	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Gonzalez-Barahona2015
78	00000383	1	2	Gunderloy2005	A very well put together manual about how and why things work the way they do within FogBugz 4.0. - Matt Hawley, eWorld.UI This book is an almost perfect introduction and end user manual for FogBugz version 4. - Dean Wilson, London.pm I recommend this book if you do plan to use FogBugz. - Greg Robinson's Blog & well written and easy to get through & - .farshid sedghi Blog I quickly realized that FogBugz could single-handedly manage my support requests, sales requests, bug tracking and project management for CodeSmith. I bought my copy about a week ago and I could not be more happy with my purchase! - Eric J. Smith's Weblog Many programs purport to help a development team manage a projectbut most of them aren't very good. Enter FogBugz. This dynamic tool is based on keeping track of a database of cases. At any given time, cases are assigned to one person, who must resolve or forward them to someone else. With FogBugz, cases can be prioritized, documented, sorted, discussed, edited, assigned, estimated, searched, and tracked. And because FogBugz is web-based, everyone on a development team has access to the whole picture, at any given moment. That picture may include everything from customer feature requests, to high-level design discussions, to tiny bug fix details. This book (written under the guidance of the entire FogBugz team) completely describes the ins and outs of the latest version of FogBugz. Copyright © 2005 by Mike Gunderloy. All rights reserved.	\N	\N	Gunderloy, M.	\N	\N	\N	\N	10.1007/978-1-4302-0008-6	\N	\N	\N	\N	\N	\N	Painless Project Management with FogBugz	\N	\N	\N	\N	\N	cited By 0	\N	\N	1-184	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Painless project management with FogBugz	\N	https://www.scopus.com/inward/record.uri?eid=2-s2.0-84892242200&partnerID=40&md5=e490d1477155b0ba1db73d2b9583ad4c	\N	2005	\N	\N	\N	2016.06.08	dissertacao	\N	[dissertacao:]	Gunderloy2005
81	00000388	1	4	Gupta2014a	Online Analytical Processing (OLAP) cube is a multi-dimensional dataset used for analyzing data in a Data Warehouse (DW) for the purpose of extracting actionable intelligence. Process mining consists of analyzing event log data produced from Process Aware Information Systems (PAIS) for the purpose of discovering and improving business processes. Process cube is a concept which falls at the intersection of OLAP cube and process mining. Process cube facilitates process mining from multiple-dimensions and enables comparison of process mining results across various dimensions. We present an application of process cube to software defect resolution process to analyze and compare process data from a multi-dimensional perspective. We present a framework, a novel perspective to mine software repositories using process cube. Each cell of process cube is defined by metrics from multiple process mining perspectives like control flow, time, conformance and organizational perspective. We conduct a case-study on Google Chromium project data in which the software defect resolution process spans three software repositories: Issue Tracking System (ITS), Peer Code Review System (PCR) and Version Control System (VCS). We define process cube with 9 dimensions as issue report timestamp, priority, state, closed status, OS, component, bug type, reporter and owner. We define hierarchies along various dimensions and cluster members to handle sparsity. We apply OLAP cube operations such as slice, dice, roll-up and drill-down, and create materialized sublog for each cell. We demonstrate the solution approach by discovering process map and compare process mining results from control flow and time perspective for Performance and Security issues. © 2014 IEEE.	\N	\N	Gupta, M. and Sureka, A.	\N	\N	\N	\N	10.1109/APSEC.2014.45	\N	\N	\N	\N	\N	\N	Proceedings - Asia-Pacific Software Engineering Conference, APSEC	\N	\N	\N	\N	\N	cited By 0	\N	\N	239-246	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Process cube for software defect resolution	\N	https://www.scopus.com/inward/record.uri?eid=2-s2.0-84951277134&partnerID=40&md5=b6dbb08c0bf69c83d7536667adbd9379	1	2014	\N	\N	\N	2016.06.08	dissertacao	\N	[dissertacao:]	Gupta2014a
83	00000390	1	9	Gupta:2014:PMM:2597073.2597081	\N	New York, NY, USA	\N	Gupta, Monika and Sureka, Ashish and Padmanabhuni, Srinivas	Proceedings of the 11th Working Conference on Mining Software Repositories	\N	\N	\N	10.1145/2597073.2597081	\N	\N	\N	\N	\N	\N	\N	\N	Empirical Software Engineering and Measurements, Issue Tracking System, Peer Code Review System, Process Mining, Social Network Analysis, Software Maintenance	\N	Hyderabad, India	\N	\N	\N	\N	122--131	\N	\N	\N	\N	ACM	\N	\N	\N	\N	\N	MSR 2014	Process Mining Multiple Repositories for Software Defect Resolution from Control and Organizational Perspective	\N	http://doi.acm.org/10.1145/2597073.2597081	\N	2014	\N	\N	\N	\N	\N	\N	\N	Gupta:2014:PMM:2597073.2597081
84	00000391	1	9	Guzzi2013	Open source software (OSS) development teams use electronic means, such as emails, instant messaging, or forums, to conduct open and public discussions. Researchers investigated mailing lists considering them as a hub for project communication. Prior work focused on specific aspects of emails, for example the handling of patches, traceability concerns, or social networks. This led to insights pertaining to the investigated aspects, but not to a comprehensive view of what developers communicate about. Our objective is to increase the understanding of development mailing lists communication. We quantitatively and qualitatively analyzed a sample of 506 email threads from the development mailing list of a major OSS project, Lucene. Our investigation reveals that implementation details are discussed only in about 35% of the threads, and that a range of other topics is discussed. Moreover, core developers participate in less than 75% of the threads. We observed that the development mailing list is not the main player in OSS project communication, as it also includes other channels such as the issue repository.	\N	\N	A. Guzzi and A. Bacchelli and M. Lanza and M. Pinzger and A. van Deursen	Mining Software Repositories (MSR), 2013 10th IEEE Working Conference on	\N	\N	\N	10.1109/MSR.2013.6624039	\N	\N	\N	\N	\N	\N	\N	\N	project management;public domain software;software engineering;software management;Lucene;OSS project communication;development mailing lists communication;email threads;open source software development mailing lists;Buildings;Data mining;Electronic mail;Linux;Software;Sorting	\N	\N	May	\N	\N	\N	277-286	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Communication in open source software development mailing lists	\N	\N	\N	2013	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Guzzi2013
85	00000392	1	1	Gyimesi2015	In software systems the coding errors are unavoidable due to the frequent source changes, the tight deadlines and the inaccurate specifications. Therefore, it is important to have tools that help us in finding these errors. One way of supporting bug prediction is to analyze the characteristics of the previous errors and identify the unknown ones based on these characteristics. This paper aims to characterize the known coding errors. Nowadays, the popularity of the source code hosting services like GitHub are increasing rapidly. They provide a variety of services, among which the most important ones are the version and bug tracking systems. Version control systems store all versions of the source code, and bug tracking systems provide a unified interface for reporting errors. Bug reports can be used to identify the wrong and the previously fixed source code parts, thus the bugs can be characterized by static source code metrics or by other quantitatively measured properties using the gathered data. We chose GitHub for the base of data collection and we selected 13 Java projects for analysis. As a result, a database was constructed, which characterizes the bugs of the examined projects, thus can be used, inter alia, to improve the automatic detection of software defects. © Springer International Publishing Switzerland 2015.	\N	\N	Gyimesi, P. and Gyimesi, G. and Tóth, Z. and Ferenc, R.	\N	\N	\N	\N	10.1007/978-3-319-21413-9_4	\N	\N	\N	\N	\N	\N	Lecture Notes in Computer Science (including subseries Lecture Notes in Artificial Intelligence and Lecture Notes in Bioinformatics)	\N	\N	\N	\N	\N	cited By 0	\N	\N	47-62	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Characterization of source code defects by data mining conducted on GitHub	\N	https://www.scopus.com/inward/record.uri?eid=2-s2.0-84949035043&partnerID=40&md5=ba165cfec7835e69230732297c5f7f39	9159	2015	\N	\N	\N	2016.06.08	dissertacao	\N	[dissertacao:]	Gyimesi2015
86	00000395	1	9	Habayeb2015	The bug tracking repositories of software projects capture initial defect (bug) reports and the history of interactions among developers, testers, and customers. Extracting and mining information from these repositories is time consuming and daunting. Researchers have focused mostly on analyzing the frequency of the occurrence of defects and their attributes (e.g., The number of comments and lines of code changed, count of developers). However, the counting process eliminates information about the temporal alignment of events leading to changes in the attributes count. Software quality teams could plan and prioritize their work more efficiently if they were aware of these temporal sequences and knew their frequency of occurrence. In this paper, we introduce a novel dataset mined from the Fire fox bug repository (Bugzilla) which contains information about the temporal alignment of developer interactions. Our dataset covers eight years of data from the Fire fox project on activities throughout the project's lifecycle. Some of these activities have not been reported in frequency-based or other temporal datasets. The dataset we mined from the Fire fox project contains new activities, such as reporter experience, file exchange events, code-review process activities, and setting of milestones. We believe that this new dataset will improve analysis of bug reports and enable mining of temporal relationships so that practitioners can enhance their bug-fixing process.	\N	\N	M. Habayeb and A. Miranskyy and S. S. Murtaza and L. Buchanan and A. Bener	2015 IEEE/ACM 12th Working Conference on Mining Software Repositories	\N	\N	\N	10.1109/MSR.2015.73	\N	\N	\N	\N	\N	\N	\N	\N	data mining;program debugging;project management;search engines;Bugzilla;Firefox bug repository;Firefox temporal defect dataset;attribute count;bug report analysis improvement;bug tracking repositories;bug-fixing process;code lines;code-review process activities;defect attributes;defect occurrence;developer count;developer interactions;file exchange events;frequency analysis;frequency-based activities;information extraction;information mining;occurrence frequency;project lifecycle;reporter experience;software projects;software quality teams;temporal datasets;temporal event alignment;temporal relationship mining;temporal sequences;Communities;Computer bugs;Data mining;Feature extraction;History;Software;Software engineering;Bug reports;Bug repositories;Dataset;Defect tracking;Temporal activities	\N	\N	May	\N	\N	\N	498-501	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	The Firefox Temporal Defect Dataset	\N	\N	\N	2015	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Habayeb2015
87	00000396	1	9	Hamlaoui2014	This work is situated in the context of the application of Model Driven Engineering to complex systems view-based modelling. In fact, view-based models - called also partial models - are manipulated by different actors (designers), and are thus generally heterogeneous, that is, described with different DSLs (Domain Specific Languages). Instead of building a single global model, which is not realistic, we propose to organize the different partial models as a network of related models, which provides a global view of the system through a correspondence model. As models are modelled separately by different designers, they also evolve separately that induces a problem of consistency. To solve it, we propose a semi-automatic process based on the correspondence model allowing detecting changes, calculating their impacts, and proposing modifications to maintain the consistency among them. The approach is supported by a tool chain and illustrated by the example of a Bug Tracking System.	\N	\N	M. El Hamlaoui and S. Ebersold and B. Coulette and M. Nassar and A. Anwar	2014 IEEE Eighth International Conference on Research Challenges in Information Science (RCIS)	\N	\N	\N	10.1109/RCIS.2014.6861074	\N	\N	\N	\N	\N	\N	\N	\N	software engineering;Domain Specific Languages;consistency management;correspondence model;heterogeneous model matching;model driven engineering;Abstracts;Adaptation models;Analytical models;Business;DSL;Information systems;Unified modeling language;Heterogeneous models;change processing;consistency;correspondence model	\N	\N	May	\N	\N	\N	1-12	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Heterogeneous models matching for consistency management	\N	\N	\N	2014	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Hamlaoui2014
88	00000397	1	9	Hanmer:2014:MNP:2893559.2893568	\N	USA	\N	Hanmer, Robert S. and Mirakhorli, Mehdi	Proceedings of the 21st Conference on Pattern Languages of Programs	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	design patterns, knowledge discovery, pattern mining	\N	Monticello, Illinois	\N	\N	\N	\N	9:1--9:6	\N	\N	\N	\N	The Hillside Group	\N	\N	\N	\N	\N	PLoP '14	Mining New Patterns by Learning from the Trenches	\N	http://dl.acm.org/citation.cfm?id=2893559.2893568	\N	2014	\N	\N	\N	\N	\N	\N	\N	Hanmer:2014:MNP:2893559.2893568
89	00000399	1	1	Hindle2016	The issue-tracking systems used by software projects contain issues, bugs, or tickets written by a wide variety of bug reporters, with different levels of training and knowledge about the system under development. Typically, reporters lack the skills and/or time to search the issue-tracking system for similar issues already reported. As a result, many reports end up referring to the same issue, which effectively makes the bug-report triaging process time consuming and error prone. Many researchers have approached the bug-deduplication problem using off-the-shelf information-retrieval (IR) tools. In this work, we extend the state of the art by investigating how contextual information about software-quality attributes, software-architecture terms, and system-development topics can be exploited to improve bug deduplication. We demonstrate the effectiveness of our contextual bug-deduplication method at ranking duplicates on the bug repositories of the Android, Eclipse, Mozilla, and OpenOffice software systems. Based on this experience, we conclude that taking into account domain-specific context can improve IR methods for bug deduplication. © 2015, Springer Science+Business Media New York.	\N	\N	Hindle, A. and Alipour, A. and Stroulia, E.	\N	\N	\N	\N	10.1007/s10664-015-9387-3	\N	\N	\N	\N	\N	\N	Empirical Software Engineering	\N	\N	\N	\N	\N	cited By 0	2	\N	368-410	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	A contextual approach towards more accurate duplicate bug report detection and ranking	\N	https://www.scopus.com/inward/record.uri?eid=2-s2.0-84933576492&partnerID=40&md5=dfd3386ead96b944aac17e24198bb08f	21	2016	\N	\N	\N	2016.06.08	dissertacao	\N	[dissertacao:]	Hindle2016
90	00000400	1	9	Hora2012	To harness the complexity of big legacy software, software engineering tools need more and more information on these systems. This information may come from analysis of the source code, study of execution traces, computing of metrics, etc. One source of information received less attention than source code: the bugs on the system. Little is known about the evolutionary behavior, lifetime, distribution, and stability of bugs. In this paper, we propose to consider bugs as first class entities and a useful source of information that can answer such topics. Such analysis is inherently complex, because bugs are intangible, invisible, and difficult to be traced. Therefore, our tool extracts information about bugs from bug tracking systems, link this information to other software artifacts, and explore interactive visualizations of bugs that we call bug maps.	\N	\N	A. Hora and N. Anquetil and S. Ducasse and M. Bhatti and C. Couto and M. T. Valente and J. Martins	Software Maintenance and Reengineering (CSMR), 2012 16th European Conference on	\N	\N	\N	10.1109/CSMR.2012.68	\N	\N	\N	\N	\N	\N	\N	\N	evolutionary computation;information resources;program debugging;program testing;software maintenance;bug maps;bug tracking system;bugs analysis;bugs stability;evolutionary behavior;information source;interactive bugs visualization;legacy software;software artifact;software engineering tools;source code;visual exploration;Browsers;Color;Computer bugs;History;Measurement;Software;Visualization	\N	\N	March	\N	\N	\N	523-526	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Bug Maps: A Tool for the Visual Exploration and Analysis of Bugs	\N	\N	\N	2012	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Hora2012
91	00000401	1	9	Hosseini:2012:MBA:2191744.2192559	\N	Washington, DC, USA	\N	Hosseini, Hadi and Nguyen, Raymond and Godfrey, Michael W.	Proceedings of the 2012 16th European Conference on Software Maintenance and Reengineering	\N	\N	\N	10.1109/CSMR.2012.25	\N	\N	\N	\N	\N	\N	\N	\N	Multiagent system, market mechanism, bug lifetime, bug repositories	\N	\N	\N	\N	\N	\N	149--158	\N	\N	\N	\N	IEEE Computer Society	\N	\N	\N	\N	\N	CSMR '12	A Market-Based Bug Allocation Mechanism Using Predictive Bug Lifetimes	\N	http://dx.doi.org/10.1109/CSMR.2012.25	\N	2012	\N	\N	\N	\N	\N	\N	\N	Hosseini:2012:MBA:2191744.2192559
93	00000403	1	9	Izquierdo2015	Reporting bugs, asking for new features and in general giving any kind of feedback is a common way to contribute to an Open-Source Software (OSS) project. In GitHub, the largest code hosting service for OSS, this feedback is typically expressed as new issues for the project managed by an issue-tracking system available in each new project repository. Among other features, the issue tracker allows creating and assigning labels to issues with the goal of helping the project community to better classify and manage those issues (e.g., facilitating the identification of issues for top priority components or candidate developers that could solve them). Nevertheless, as the project grows a manual browsing of the project issues is no longer feasible. In this paper we present GiLA, a tool which generates a set of visualizations to facilitate the analysis of issues in a project depending on their label-based categorization. We believe our visualizations are useful to see the most popular labels (and their relationships) in a project, identify the most active community members for those labels and compare the typical issue evolution for each label category.	\N	\N	J. L. C. Izquierdo and V. Cosentino and B. Rolandi and A. Bergel and J. Cabot	2015 IEEE 22nd International Conference on Software Analysis, Evolution, and Reengineering (SANER)	\N	\N	\N	10.1109/SANER.2015.7081860	\N	\N	\N	\N	\N	\N	\N	\N	program visualisation;project management;public domain software;software development management;source code (software);GiLA;GitHub label analyzer;OSS project;active community members;code hosting service;issue tracker;issue-tracking system;label-based categorization;open-source software project;project community;project management;project repository;visualizations;Communities;Computer architecture;Databases;Servers;Visualization;Web services	\N	\N	March	\N	\N	\N	479-483	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	GiLA: GitHub label analyzer	\N	\N	\N	2015	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Izquierdo2015
94	00000405	1	4	Jalbert2008a	Bug tracking systems are important tools that guide the maintenance activities of software developers. The utility of these systems is hampered by an excessive number of duplicate bug reports-in some projects as many as a quarter of all reports are duplicates. Developers must manually identify duplicate bug reports, but this identification process is time-consuming and exacerbates the already high cost of software maintenance. We propose a system that automatically classifies duplicate bug reports as they arrive to save developer time. This system uses surface features, textual semantics, and graph clustering to predict duplicate status. Using a dataset of 29,000 bug reports from the Mozilla project, we perform experiments that include a simulation of a real-time bug reporting environment. Our system is able to reduce development cost by filtering out 8% of duplicate bug reports while allowing at least one report for each real defect to reach developers. © 2008 IEEE.	\N	\N	Jalbert, N. and Weimer, W.	\N	\N	\N	\N	10.1109/DSN.2008.4630070	\N	\N	\N	\N	\N	\N	Proceedings of the International Conference on Dependable Systems and Networks	\N	\N	\N	\N	\N	cited By 70	\N	\N	52-61	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Automated duplicate detection for bug tracking systems	\N	https://www.scopus.com/inward/record.uri?eid=2-s2.0-53349154094&partnerID=40&md5=f433542303407393fb9d35ea432f497c	\N	2008	\N	\N	\N	2016.06.08	dissertacao	\N	[dissertacao:]	Jalbert2008a
95	00000406	1	9	Jeong:2009:IBT:1595696.1595715	\N	New York, NY, USA	\N	Jeong, Gaeul and Kim, Sunghun and Zimmermann, Thomas	Proceedings of the the 7th Joint Meeting of the European Software Engineering Conference and the ACM SIGSOFT Symposium on The Foundations of Software Engineering	\N	\N	\N	10.1145/1595696.1595715	\N	\N	\N	\N	\N	\N	\N	\N	bug report assignment, bug tossing, bug triage, issue tracking, machine learning, problem tracking	\N	Amsterdam, The Netherlands	\N	\N	\N	\N	111--120	\N	\N	\N	\N	ACM	\N	\N	\N	\N	\N	ESEC/FSE '09	Improving Bug Triage with Bug Tossing Graphs	\N	http://doi.acm.org/10.1145/1595696.1595715	\N	2009	\N	\N	\N	\N	\N	\N	\N	Jeong:2009:IBT:1595696.1595715
96	00000408	1	1	Johnson2003	All programming projects have one thing in common: there is always more to do. Some things that need doing are bug fixes; others are enhancements such as cleaning up and refactorlng existing code, adding tests, and writing documentation. but before your office wall becomes a collage of sticky-note reminders, you might want to try an issue tracker instead. In this article, we describe two open-source issue-tracking software packages: Roundup, an implementation of the winning design in Los Alamos National Laboratory's Software Carpentry contest and Bugzilla (from the GNU project).	\N	\N	J. N. Johnson and P. F. Dubois	\N	\N	\N	\N	10.1109/MCISE.2003.1238707	\N	\N	\N	\N	\N	\N	Computing in Science Engineering	\N	client-server systems;public domain software;software packages;Bugzilla;GNU project;Los Alamos National Laboratory;Roundup;Software Carpentry contest;issue tracker;open-source issue tracking;programming projects;software packages	\N	\N	Nov	\N	6	\N	71-77	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Issue tracking	\N	\N	5	2003	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Johnson2003
97	00000409	1	9	Just2008	Developers typically rely on the information submitted by end-users to resolve bugs. We conducted a survey on information needs and commonly faced problems with bug reporting among several hundred developers and users of the APACHE, ECLIPSE and MOZILLA projects. In this paper, we present the results of a card sort on the 175 comments sent back to us by the responders of the survey. The card sort revealed several hurdles involved in reporting and resolving bugs, which we present in a collection of recommendations for the design of new bug tracking systems. Such systems could provide contextual assistance, reminders to add information, and most important, assistance to collect and report crucial information to developers.	\N	\N	S. Just and R. Premraj and T. Zimmermann	2008 IEEE Symposium on Visual Languages and Human-Centric Computing	\N	\N	\N	10.1109/VLHCC.2008.4639063	\N	\N	\N	\N	\N	\N	\N	\N	program debugging;systems analysis;tracking;APACHE project;ECLIPSE project;MOZILLA project;bug tracking systems;card sort;next generation;Cognitive science;Communication system software;Computer bugs;Feedback;Information analysis;Sorting;Spatial databases;Taxonomy;Testing	\N	\N	Sept	\N	\N	\N	82-85	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Towards the next generation of bug tracking systems	\N	\N	\N	2008	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Just2008
114	00000430	1	9	Lin2009	Bug assignment is an important step in bug life-cycle management. In large projects, this task would consume a substantial amount of human effort. To compare with the previous studies on automatic bug assignment in FOSS (free/open source software) projects, we conduct a case study on a proprietary software project in China. Our study consists of two experiments of automatic bug assignment, using Chinese text and the other non-text information of bug data respectively. Based on text data of the bug repository, the first experiment uses SVM to predict bug assignments and achieve accuracy close to that by human triagers. The second one explores the usefulness of non-text data in making such prediction. The main results from our study includes that text data are most useful data in the bug tracking system to triage bugs, and automation based on text data could effectively reduce the manual effort.	\N	\N	Z. Lin and F. Shu and Y. Yang and C. Hu and Q. Wang	2009 3rd International Symposium on Empirical Software Engineering and Measurement	\N	\N	\N	10.1109/ESEM.2009.5315994	\N	\N	\N	\N	\N	\N	\N	\N	program debugging;public domain software;software maintenance;statistical analysis;support vector machines;text analysis;Chinese bug textual data;FOSS;SVM;automatic bug assignment;bug life-cycle management;bug repository;empirical study;free/open source software project;triage bug tracking system;Automation;Computer bugs;Data mining;Engineering management;Humans;Open source software;Software debugging;Software engineering;Software measurement;Support vector machines	\N	\N	Oct	\N	\N	\N	451-455	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	An empirical study on bug assignment automation using Chinese bug data	\N	\N	\N	2009	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Lin2009
98	00000410	1	9	Kaushik2012	Open source projects incorporate bug triagers to help with the task of bug report assignment to developers. One of the tasks of a triager is to identify whether an incoming bug report is a duplicate of a pre-existing report. In order to detect duplicate bug reports, a triager either relies on his memory and experience or on the search capabilities of the bug repository. Both these approaches can be time consuming for the triager and may also lead to the misidentification of duplicates. In the literature, several approaches to automate duplicate bug report detection have been proposed. However, there has not been an exhaustive comparison of the performance of different IR models, especially with topic-based ones such as LSI and LDA. In this paper, we compare the performance of the traditional vector space model (using different weighting schemes) with that of topic based models, leveraging heuristics that incorporate exception stack frames, surface features, summary and long description from the free-form text in the bug report. We perform experiments on subsets of bug reports from Eclipse and Firefox and achieve a recall rate of 60% and 58% respectively. We find that word-based models, in particular a Log-Entropy based weighting scheme, outperform topic based ones such as LSI, LDA and Random Projections. Our findings also suggests that for the problem of duplicate bug detection, it is important to consider a project's domain and characteristics to devise a set of heuristics to achieve optimal results.	\N	\N	N. Kaushik and L. Tahvildari	Software Maintenance and Reengineering (CSMR), 2012 16th European Conference on	\N	\N	\N	10.1109/CSMR.2012.78	\N	\N	\N	\N	\N	\N	\N	\N	information retrieval;program debugging;public domain software;report generators;Eclipse;Firefox;IR models;LDA;LSI;Log-Entropy based weighting scheme;bug report assignment;bug repository;bug triagers;duplicate bug detection;duplicate bug report detection automation;free-form text;open source projects;random projections;topic based models;vector space model;word-based models;Computer bugs;Entropy;Fires;Large scale integration;Software;Synchronization;Vectors;bug;duplicate;information retrieval	\N	\N	March	\N	\N	\N	159-168	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	A Comparative Study of the Performance of IR Models on Duplicate Bug Detection	\N	\N	\N	2012	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Kaushik2012
99	00000411	1	9	Keivanloo2012	The mining of software repositories involves the extraction of both basic and value-added information from existing software repositories. The repositories will be mined to extract facts by different stakeholders (e.g. researchers, managers) and for various purposes. To avoid unnecessary pre-processing and analysis steps, sharing and integration of both basic and value-added facts are needed. In this research, we introduce SeCold, an open and collaborative platform for sharing software datasets. SeCold provides the first online software ecosystem Linked Data platform that supports data extraction and on-the-fly inter-dataset integration from major version control, issue tracking, and quality evaluation systems. In its first release, the dataset contains about two billion facts, such as source code statements, software licenses, and code clones from 18 000 software projects. In its second release the SeCold project will contain additional facts mined from issue trackers and versioning systems. Our approach is based on the same fundamental principle as Wikipedia: researchers and tool developers share analysis results obtained from their tools by publishing them as part of the SeCold portal and therefore make them an integrated part of the global knowledge domain. The SeCold project is an official member of the Linked Data dataset cloud and is currently the eighth largest online dataset available on the Web.	\N	\N	I. Keivanloo and C. Forbes and A. Hmood and M. Erfani and C. Neal and G. Peristerakis and J. Rilling	Mining Software Repositories (MSR), 2012 9th IEEE Working Conference on	\N	\N	\N	10.1109/MSR.2012.6224296	\N	\N	\N	\N	\N	\N	\N	\N	data mining;software packages;code clones;collaborative platform;linked data platform;mining software repositories;on-the-fly inter-dataset integration;online software ecosystem linked data platform;software datasets;software licenses;software packages;software repositories;source code statements;value added information;Cloning;Communities;Data mining;Encyclopedias;Licenses;Ontologies;Software;Linked Data;fact sharing;software mining	\N	\N	June	\N	\N	\N	32-35	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	A Linked Data platform for mining software repositories	\N	\N	\N	2012	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Keivanloo2012
100	00000412	1	9	Ki2009	As software systems become larger and more complex, automated software engineering tools play a crucial role for effective software development management, which is a key factor to lead quality software systems. In this work, we present TRICA, an open source-based software development infrastructure. The name of TRICA represents its features such as Traceability, Relationship, Informativeness, Cost-effectiveness, and Automation. Essentially, in TRICA, a continuous integration tool is coupled with a software configuration management tool and an issue tracking tool. We provisioned a mechanism to connect the open source tools in TRICA so that project members use the collaborated information to solve various issues and implementation problems efficiently, and easily share forthcoming issues during the course of the project. We show that TRICA can help to decentralize risks throughout the software development cycle and achieve successful software development.	\N	\N	Y. Ki and M. Song	Automated Software Engineering, 2009. ASE '09. 24th IEEE/ACM International Conference on	\N	\N	\N	10.1109/ASE.2009.73	\N	\N	\N	\N	\N	\N	\N	\N	configuration management;groupware;integrated software;program diagnostics;public domain software;software development management;software quality;software tools;TRICA;automated software engineering tools;collaborated information;continuous integration tool;open source tools;software configuration management tool;software development cycle;software development management;software quality;software systems;tracking tool;Automation;Collaborative software;Collaborative tools;Open source software;Programming;Software development management;Software engineering;Software systems;Software tools;Testing;SCM;continuous integration;issue tracking;open source;software engineering tools	\N	\N	Nov	\N	\N	\N	525-529	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	An Open Source-Based Approach to Software Development Infrastructures	\N	\N	\N	2009	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Ki2009
101	00000413	1	9	Klein:2014:NFD:2597073.2597090	\N	New York, NY, USA	\N	Klein, Nathan and Corley, Christopher S. and Kraft, Nicholas A.	Proceedings of the 11th Working Conference on Mining Software Repositories	\N	\N	\N	10.1145/2597073.2597090	\N	\N	\N	\N	\N	\N	\N	\N	Duplicate bug reports, machine learning, topic model	\N	Hyderabad, India	\N	\N	\N	\N	324--327	\N	\N	\N	\N	ACM	\N	\N	\N	\N	\N	MSR 2014	New Features for Duplicate Bug Detection	\N	http://doi.acm.org/10.1145/2597073.2597090	\N	2014	\N	\N	\N	\N	\N	\N	\N	Klein:2014:NFD:2597073.2597090
102	00000414	1	9	Knab2009	Issue tracking repositories contain a wealth of information for reasoning about various aspects of software development processes. In this paper, we focus on bug triaging and provide visual means to explore the effort estimation quality and the bug life-cycle of reported problems. Our approach follows the micro/macro reading technique and uses a combination of graphical views to investigate details of individual problem reports while maintaining the context provided by the surrounding data population. This enables the detection and detailed analysis of hidden patterns and facilitates the analysis of problem report outliers. In an industrial study, we use our approach in various problem report analysis scenarios and answer questions related to effort estimation and resource planning.	\N	\N	P. Knab and B. Fluri and H. C. Gall and M. Pinzger	Software Maintenance, 2009. ICSM 2009. IEEE International Conference on	\N	\N	\N	10.1109/ICSM.2009.5306384	\N	\N	\N	\N	\N	\N	\N	\N	data visualisation;program debugging;bug life-cycle;bug triaging;macroreading technique;microreading technique;problem report;software development;Life estimation;Pattern analysis;Programming	\N	\N	Sept	\N	\N	\N	527-530	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Interactive views for analyzing problem reports	\N	\N	\N	2009	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Knab2009
103	00000415	1	9	Knab:2009:SVA:1595696.1595746	\N	New York, NY, USA	\N	Knab, Patrick and Knab, Patrick and Pinzger, Martin	Proceedings of the the 7th Joint Meeting of the European Software Engineering Conference and the ACM SIGSOFT Symposium on The Foundations of Software Engineering	\N	\N	\N	10.1145/1595696.1595746	\N	\N	\N	\N	\N	\N	\N	\N	effort estimation, process metrics, visualization	\N	Amsterdam, The Netherlands	\N	\N	\N	\N	289--290	\N	\N	\N	\N	ACM	\N	\N	\N	\N	\N	ESEC/FSE '09	Smart Views for Analyzing Problem Reports: Tool Demo	\N	http://doi.acm.org/10.1145/1595696.1595746	\N	2009	\N	\N	\N	\N	\N	\N	\N	Knab:2009:SVA:1595696.1595746
104	00000416	1	9	Knauss2012	In current project environments, requirements often evolve throughout the project and are worked on by stakeholders in large and distributed teams. Such teams often use online tools such as mailing lists, bug tracking systems or online discussion forums to communicate, clarify or coordinate work on requirements. In this kind of environment, the expected evolution from initial idea, through clarification, to a stable requirement, often stagnates. When project managers are not aware of underlying problems, development may proceed before requirements are fully understood and stabilized, leading to numerous implementation issues and often resulting in the need for early redesign and modification. In this paper, we present an approach to analyzing online requirements communication and a method for the detection and classification of clarification events in requirement discussions. We used our approach to analyze online requirements communication in the IBM® Rational Team Concert® (RTC) project and identified a set of six clarification patterns. Since a predominant amount of clarifications through the lifetime of a requirement is often indicative of problematic requirements, our approach lends support to project managers to assess, in real-time, the state of discussions around a requirement and promptly react to requirements problems.	\N	\N	E. Knauss and D. Damian and G. Poo-Caamaño and J. Cleland-Huang	2012 20th IEEE International Requirements Engineering Conference (RE)	\N	\N	\N	10.1109/RE.2012.6345811	\N	\N	\N	\N	\N	\N	\N	\N	distributed processing;formal verification;pattern classification;project management;systems analysis;IBM® Rational Team Concert® project;RTC project;clarification event classification;clarification event detection;distributed teams;online requirement communication;project environments;project managers;requirement clarification pattern;Context;Manuals;Message systems;Natural languages;Software;Trajectory;Visualization;communication of requirements;distributed requirements engineering;requirements clarification patterns	\N	\N	Sept	\N	\N	\N	251-260	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Detecting and classifying patterns of requirements clarifications	\N	\N	\N	2012	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Knauss2012
105	00000417	1	9	Kochhar:2014:AFI:2680613.2680809	\N	Washington, DC, USA	\N	Kochhar, Pavneet Singh and Thung, Ferdian and Lo, David	Proceedings of the 2014 19th International Conference on Engineering of Complex Computer Systems	\N	\N	\N	10.1109/ICECCS.2014.25	\N	\N	\N	\N	\N	\N	\N	\N	Issue Reports, Fine-Grained, Reclassification	\N	\N	\N	\N	\N	\N	126--135	\N	\N	\N	\N	IEEE Computer Society	\N	\N	\N	\N	\N	ICECCS '14	Automatic Fine-Grained Issue Report Reclassification	\N	http://dx.doi.org/10.1109/ICECCS.2014.25	\N	2014	\N	\N	\N	\N	\N	\N	\N	Kochhar:2014:AFI:2680613.2680809
106	00000418	1	9	Kochhar:2014:PBB:2642937.2642997	\N	New York, NY, USA	\N	Kochhar, Pavneet Singh and Tian, Yuan and Lo, David	Proceedings of the 29th ACM/IEEE International Conference on Automated Software Engineering	\N	\N	\N	10.1145/2642937.2642997	\N	\N	\N	\N	\N	\N	\N	\N	bias, bug localization, empirical study, issue reports	\N	Vasteras, Sweden	\N	\N	\N	\N	803--814	\N	\N	\N	\N	ACM	\N	\N	\N	\N	\N	ASE '14	Potential Biases in Bug Localization: Do They Matter?	\N	http://doi.acm.org/10.1145/2642937.2642997	\N	2014	\N	\N	\N	\N	\N	\N	\N	Kochhar:2014:PBB:2642937.2642997
107	00000419	1	9	Koopaei:2015:CAD:2886444.2886474	\N	Riverton, NJ, USA	\N	Koopaei, Neda Ebrahimi and Hamou-Lhadj, Abdelwahab	Proceedings of the 25th Annual International Conference on Computer Science and Software Engineering	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	automata-based modeling, duplicate bug reports, mining bug repositories, software maintenance	\N	Markham, Canada	\N	\N	\N	\N	201--210	\N	\N	\N	\N	IBM Corp.	\N	\N	\N	\N	\N	CASCON '15	CrashAutomata: An Approach for the Detection of Duplicate Crash Reports Based on Generalizable Automata	\N	http://dl.acm.org/citation.cfm?id=2886444.2886474	\N	2015	\N	\N	\N	\N	\N	\N	\N	Koopaei:2015:CAD:2886444.2886474
108	00000420	1	9	Koponen:2006:EFO:1193212.1193822	\N	Washington, DC, USA	\N	Koponen, Timo	Proceedings of the International Conference on Software Engineering Advances	\N	\N	\N	10.1109/ICSEA.2006.39	\N	\N	\N	\N	\N	\N	\N	\N	Problem tracking, issue tracking, bug report, software modification, defect life cycle, metrics	\N	\N	\N	\N	\N	\N	52--	\N	\N	\N	\N	IEEE Computer Society	\N	\N	\N	\N	\N	ICSEA '06	Evaluation Framework for Open Source Software Maintenance	\N	http://dx.doi.org/10.1109/ICSEA.2006.39	\N	2006	\N	\N	\N	\N	\N	\N	\N	Koponen:2006:EFO:1193212.1193822
109	00000421	1	9	Kshirsagar:2015:ITS:2818567.2818575	\N	New York, NY, USA	\N	Kshirsagar, Aniruddha Prakash and Chandre, Pankaj R.	Proceedings of the Sixth International Conference on Computer and Communication Technology 2015	\N	\N	\N	10.1145/2818567.2818575	\N	\N	\N	\N	\N	\N	\N	\N	Duplicate detection, ITS, Issue, QAS, bugs	\N	Allahabad, India	\N	\N	\N	\N	41--45	\N	\N	\N	\N	ACM	\N	\N	\N	\N	\N	ICCCT '15	Issue Tracking System with Duplicate Issue Detection	\N	http://doi.acm.org/10.1145/2818567.2818575	\N	2015	\N	\N	\N	\N	\N	\N	\N	Kshirsagar:2015:ITS:2818567.2818575
110	00000422	1	9	Kulkarni2014	This paper addresses the problem of “deep matching” - or matching different classes of entities based on latent underlying semantics, rather than just their visible attributes. An example of this is the “automatic task assignment” problem where several tasks have to be assigned to people with varied skill-sets and experiences. Datasets showing types of entities (tasks and people) along with their involvement of other concepts, are used as the basis for deep matching. This paper describes a work in progress, of a deep matching application called SortingHat. We analyze issue tracking data of a large corporation containing task descriptions and assignments to people that were computed manually. We identify several entities and concepts from the dataset and build a co-occurrence graph as the basic data structure for computing deep matches. We then propose a set of query primitives that can establish several forms of semantic matching across different classes of entities.	\N	\N	S. Kulkarni and S. Srinivasa and J. N. Khasnabish and K. Nagal and S. G. Kurdagi	Data Engineering Workshops (ICDEW), 2014 IEEE 30th International Conference on	\N	\N	\N	10.1109/ICDEW.2014.6818309	\N	\N	\N	\N	\N	\N	\N	\N	data analysis;data structures;graph theory;pattern matching;SortingHat;automatic task assignment problem;co-occurrence graph;data structure;deep matching problem;entity classes;query primitives;semantic matching;tracking data analysis;visible attributes;Cities and towns;Conferences;Data mining;Information technology;Internet;Probability distribution;Semantics	\N	\N	March	\N	\N	\N	90-93	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	SortingHat: A framework for deep matching between classes of entities	\N	\N	\N	2014	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Kulkarni2014
111	00000424	1	9	Lal2012	Bug reports submitted to an issue tracking system can belong to different categories such as crash, regression, security, cleanup, polish, performance and usability. A deeper understanding of the properties and features of various categories of bug reports can have implications in improving software maintenance processes, tools and practices. We identify several metrics and characteristics serving as dimensions on which various types of bug reports can be compared. We perform a case-study on Google Chromium Browser open-source project and conduct a series of experiments to calculate various metrics. We present a characterization study comparing different types of bug reports on metrics such as: statistics on close-time, number of stars, number of comments, discriminatory and frequent words for each class, entropy across reporters, entropy across component, opening and closing trend, continuity and debugging efficiency performance characteristics. The calculated metrics shows the similarities and differences on various dimensions for seven different types of bug reports.	\N	\N	S. Lal and A. Sureka	2012 19th Asia-Pacific Software Engineering Conference	\N	\N	\N	10.1109/APSEC.2012.54	\N	\N	\N	\N	\N	\N	\N	\N	online front-ends;program debugging;software maintenance;software metrics;Google Chrome browser project;Google Chromium browser open-source project;bug report types;debugging efficiency performance characteristics;issue tracking system;software maintenance processes;software metrics;Computer bugs;Entropy;Google;Market research;Security;Usability;Issue Tracking Systems;Mining Bug Archives;Mining Software Repositories;Software Maintenance	\N	\N	Dec	\N	\N	\N	517-526	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Comparison of Seven Bug Report Types: A Case-Study of Google Chrome Browser Project	\N	\N	1	2012	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Lal2012
115	00000431	1	9	Liu2005	When teaching communication and teamwork skills in software engineering courses, it is often difficult to relate the theories of communication as presented in communication textbooks to actual student interactions and team activities because the majority of student interactions and team activities take place outside the classroom. Through our experience in teaching communication theories in CS456/556, a software engineering course at Ohio University, we observed that when communication theories are delivered in traditional methods such as lectures without additional exercises designed for students to apply the theories, many students tend to treat them as an independent part of the course and continue to guide their behaviors in team activities with their old habits and preexisting intuitions. We found that issue tracking tools can help facilitate student learning of communication skills by forcing students to explicitly carry out effective steps recommended by communication theories and thus improve communications among students. Moreover, issue tracking tools also improve communications between the students and the instructor, and enable the instructor to be more aware of team status, detect team problems early on, and reply less on time-consuming and often inaccurate in-class team status reports	\N	\N	C. Liu	18th Conference on Software Engineering Education Training (CSEET'05)	\N	\N	\N	10.1109/CSEET.2005.40	\N	\N	\N	\N	\N	\N	\N	\N	behavioural sciences;computer science education;educational courses;software engineering;teaching;team working;Ohio University;communication skills teaching;issue tracking tools;lectures;software engineering courses;student behavior;student exercises;student interactions;student learning;team activities;team problems;team status;teamwork skills teaching;Computer science;Education;Educational institutions;Feedback;Programming;Software design;Software engineering;Software tools;Teamwork;Unified modeling language	\N	\N	April	\N	\N	\N	61-68	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Using Issue Tracking Tools to Facilitate Student Learning of Communication Skills in Software Engineering Courses	\N	\N	\N	2005	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Liu2005
116	00000432	1	9	Liu2014	During bug reporting, The same bugs could be repeatedly reported. As a result, extra time could be spent on bug triaging and fixing. In order to reduce redundant effort, it is important to provide bug reporters with the ability to search for previously reported bugs efficiently and accurately. The existing bug tracking systems are using relatively simple ranking functions, which often produce unsatisfactory results. In this paper, we apply Ranking SVM, a Learning to Rank technique to construct a ranking model for accurate bug report search. Based on the search results, a topic model is used to cluster the bug reports into multiple facets. Each facet contains similar bug reports of the same topic. Users and testers can locate relevant bugs more efficiently through a simple query. We perform evaluations on more than 16,340 Eclipse and Mozilla bug reports. The evaluation results show that the proposed approach can achieve better search results than the existing search functions.	\N	\N	K. Liu and H. B. K. Tan	Computer Software and Applications Conference (COMPSAC), 2014 IEEE 38th Annual	\N	\N	\N	10.1109/COMPSAC.2014.19	\N	\N	\N	\N	\N	\N	\N	\N	learning (artificial intelligence);program debugging;search problems;support vector machines;Eclipse bug reports;Mozilla bug reports;bug tracking systems;faceted bug report search;learning;ranking SVM;simple ranking functions;topic model;Computational modeling;Databases;Feature extraction;Standards;Support vector machines;Training;Vectors;bug report search;clustering;faceted search;ranking SVM;topic model	\N	\N	July	\N	\N	\N	123-128	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Faceted Bug Report Search with Topic Model	\N	\N	\N	2014	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Liu2014
117	00000433	1	9	Liu:2012:TBR:2393596.2393628	\N	New York, NY, USA	\N	Liu, Kaiping and Tan, Hee Beng Kuan and Chandramohan, Mahinthan	Proceedings of the ACM SIGSOFT 20th International Symposium on the Foundations of Software Engineering	\N	\N	\N	10.1145/2393596.2393628	\N	\N	\N	\N	\N	\N	\N	\N	bug report, bug tracking system, duplicate, learning to rank, search engine, search quality	\N	Cary, North Carolina	\N	\N	\N	\N	28:1--28:4	\N	\N	\N	\N	ACM	\N	\N	\N	\N	\N	FSE '12	Has This Bug Been Reported?	\N	http://doi.acm.org/10.1145/2393596.2393628	\N	2012	\N	\N	\N	\N	\N	\N	\N	Liu:2012:TBR:2393596.2393628
118	00000435	1	4	Lotufo2012	Low bug report quality and human conflicts pose challenges to keep bug tracking systems productive. This work proposes to address these issues by applying game mechanisms to bug tracking systems. We investigate the use of game mechanisms in Stack Overflow, an online community organized to resolve computer programming related problems, for which the improvements we seek for bug tracking systems also turn out to be relevant. The results of our Stack Overflow investigation show that its game mechanisms could be used to address these issues by motivating contributors to increase contribution frequency and quality, by filtering useful contributions, and by creating an agile and dependable moderation system. We proceed by mapping these mechanisms to open-source bug tracking systems, and find that most benefits are applicable. Additionally, our results motivate tailoring a reward and reputation system and summarizing bug reports as future directions for increasing the benefits of game mechanisms in bug tracking systems. © 2012 IEEE.	\N	\N	Lotufo, R. and Passos, L. and Czarnecki, K.	\N	\N	\N	\N	10.1109/MSR.2012.6224293	\N	\N	\N	\N	\N	\N	IEEE International Working Conference on Mining Software Repositories	\N	\N	\N	\N	\N	cited By 0	\N	\N	2-11	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Towards improving bug tracking systems with game mechanisms	\N	https://www.scopus.com/inward/record.uri?eid=2-s2.0-84865142761&partnerID=40&md5=001e3ff8659af56ee87a377095221940	\N	2012	\N	\N	\N	2016.06.08	dissertacao	\N	[dissertacao:]	Lotufo2012
222	00000561	1	1	Zhou2015	Motivation: To survive and succeed, FLOSS projects need contributors able to accomplish critical project tasks. However, such tasks require extensive project experience of long term contributors (LTCs). Aim: We measure, understand, and predict how the newcomers' involvement and environment in the issue tracking system (ITS) affect their odds of becoming an LTC. Method: ITS data of Mozilla and Gnome, literature, interviews, and online documents were used to design measures of involvement and environment. A logistic regression model was used to explain and predict contributor's odds of becoming an LTC. We also reproduced the results on new data provided by Mozilla. Results: We constructed nine measures of involvement and environment based on events recorded in an ITS. Macro-climate is the overall project environment while micro-climate is person-specific and varies among the participants. Newcomers who are able to get at least one issue reported in the first month to be fixed, doubled their odds of becoming an LTC. The macro-climate with high project popularity and the micro-climate with low attention from peers reduced the odds. The precision of LTC prediction was 38 times higher than for a random predictor. We were able to reproduce the results with new Mozilla data without losing the significance or predictive power of the previously published model. We encountered unexpected changes in some attributes and suggest ways to make analysis of ITS data more reproducible. Conclusions: The findings suggest the importance of initial behaviors and experiences of new participants and outline empirically-based approaches to help the communities with the recruitment of contributors for long-term participation and to help the participants contribute more effectively. To facilitate the reproduction of the study and of the proposed measures in other contexts, we provide the data we retrieved and the scripts we wrote at https://www.passion-lab.org/projects/developerfluency.html.	\N	\N	M. Zhou and A. Mockus	\N	\N	\N	\N	10.1109/TSE.2014.2349496	\N	\N	\N	\N	\N	\N	IEEE Transactions on Software Engineering	\N	behavioural sciences;project management;public domain software;FLOSS community;Free-Libre and/or open source software projects;Gnome;ITS data;LTC;Mozilla data;critical project;issue tracking system;logistic regression model;long term contributors;macroclimate;microclimate;open source software;Atmospheric measurements;Communities;Data mining;Data models;Electronic mail;Particle measurements;Predictive models;Long term contributor;extent of involvement;initial behavior;interaction with environment;issue tracking system;mining software repository;open source software	\N	\N	Jan	\N	1	\N	82-99	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Who Will Stay in the FLOSS Community? Modeling Participant Initial Behavior	\N	\N	41	2015	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Zhou2015
120	00000437	1	9	Malheiros2012	Newcomers in a software development project often need assistance to complete their first tasks. Then a mentor, an experienced member of the team, usually teaches the newcomers what they need to complete their tasks. But, to allocate an experienced member of a team to teach a newcomer during a long time is neither always possible nor desirable, because the mentor could be more helpful doing more important tasks. During the development the team interacts with a version control system, bug tracking and mailing lists, and all these tools record data creating the project memory. Recommender systems can use the project memory to help newcomers in some tasks answering their questions, thus in some cases the developers do not need a mentor. In this paper we present Mentor, a recommender system to help newcomers to solve change requests. Mentor uses the Prediction by Partial Matching (PPM) algorithm and some heuristics to analyze the change requests, and the version control data, and recommend potentially relevant source code that will help the developer in the change request solution. We did three experiments to compare the PPM algorithm with the Latent Semantic Indexing (LSI). Using PPM we achieved results for recall rate between 37% and 66.8%, and using LSI the results were between 20.3% and 51.6%.	\N	\N	Y. Malheiros and A. Moraes and C. Trindade and S. Meira	2012 IEEE 36th Annual Computer Software and Applications Conference	\N	\N	\N	10.1109/COMPSAC.2012.11	\N	\N	\N	\N	\N	\N	\N	\N	configuration management;indexing;pattern matching;program debugging;recommender systems;software maintenance;LSI;Mentor;PPM algorithm;bug tracking;experienced team member;latent semantic indexing;mailing lists;newcomers;prediction by partial matching algorithm;project memory;recommender system;software development project;source code recommender system;version control data;version control system;Context;Databases;Entropy;Large scale integration;Measurement;Recommender systems;Software;information theory;recommender systems;software engineering;software maintenance	\N	\N	July	\N	\N	\N	19-24	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	A Source Code Recommender System to Support Newcomers	\N	\N	\N	2012	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Malheiros2012
121	00000438	1	9	Mani:2012:AAU:2393596.2393607	\N	New York, NY, USA	\N	Mani, Senthil and Catherine, Rose and Sinha, Vibha Singhal and Dubey, Avinava	Proceedings of the ACM SIGSOFT 20th International Symposium on the Foundations of Software Engineering	\N	\N	\N	10.1145/2393596.2393607	\N	\N	\N	\N	\N	\N	\N	\N	bug report, summarization, unsupervised	\N	Cary, North Carolina	\N	\N	\N	\N	11:1--11:11	\N	\N	\N	\N	ACM	\N	\N	\N	\N	\N	FSE '12	AUSUM: Approach for Unsupervised Bug Report Summarization	\N	http://doi.acm.org/10.1145/2393596.2393607	\N	2012	\N	\N	\N	\N	\N	\N	\N	Mani:2012:AAU:2393596.2393607
122	00000439	1	9	Mani:2013:BRC:2487085.2487124	\N	Piscataway, NJ, USA	\N	Mani, Senthil and Nagar, Seema and Mukherjee, Debdoot and Narayanam, Ramasuri and Sinha, Vibha Singhal and Nanavati, Amit A.	Proceedings of the 10th Working Conference on Mining Software Repositories	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	San Francisco, CA, USA	\N	\N	\N	\N	193--202	\N	\N	\N	\N	IEEE Press	\N	\N	\N	\N	\N	MSR '13	Bug Resolution Catalysts: Identifying Essential Non-committers from Bug Repositories	\N	http://dl.acm.org/citation.cfm?id=2487085.2487124	\N	2013	\N	\N	\N	\N	\N	\N	\N	Mani:2013:BRC:2487085.2487124
123	00000440	1	9	Masmoudi2013	There is a little understanding of distributed solving activities in Open Source communities. This study aimed to provide some insights in this way. It was applied to the context of Bugzilla, the bug tracking system of Mozilla community. This study investigated the organizational aspects of this meditated, complex and highly distributed context through a linguistic analysis method. The main finding of this research shows that the organization of distributed problem-solving activities in Bugzilla isn't based only on the hierarchical distribution of the work between core and periphery participants but on their implication in the interactions. This implication varies according to the status of each one participant in the community. That is why we distinguish their roles, as well as, the established modes to manage such activity.	\N	\N	H. Masmoudi and I. Boughzala	IEEE 7th International Conference on Research Challenges in Information Science (RCIS)	\N	\N	\N	10.1109/RCIS.2013.6577739	\N	\N	\N	\N	\N	\N	\N	\N	distributed processing;program debugging;Bugzilla;Mozilla community;bug tracking system;distributed problem-solving;linguistic analysis method;open source community;Communities;Context;Focusing;Organizations;Pragmatics;Problem-solving;Software;Distributed resolution;Interaction;Language;Open Source Community;Organisation	\N	\N	May	\N	\N	\N	1-2	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	A case study for understanding the organization of distributed problem-solving within the Mozilla's community: Poster paper	\N	\N	\N	2013	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Masmoudi2013
124	00000441	1	9	Masmoudi2013a	The emerging empirical literature on Open Source communities indicates that a majority of code writing and communication activity is concentrated with a few contributors, the “core” (maintainers). However, these communities allow and encourage participation from anybody, the “periphery”. The focus of this work is on explaining how distributed communities solve software problems through the participation of a large number of participants. In particular, this paper investigates interaction, collaboration and division of labor between the core and periphery in a distributed problem-solving activity. Using a linguistic method of analysis, we study bugs that affected Firefox Internet browser as reflected in the discussions and actions reported in Bugzilla (the Mozilla's bug tracking system). As results, we find various categories in the modes of interaction between the core and periphery participants of the community and suggest that interactions are influenced by their status.	\N	\N	H. Masmoudi and V. Fernandez and L. Marrauld	Engineering, Technology and Innovation (ICE) IEEE International Technology Management Conference, 2013 International Conference on	\N	\N	\N	10.1109/ITMC.2013.7352679	\N	\N	\N	\N	\N	\N	\N	\N	online front-ends;problem solving;program debugging;public domain software;Bugzilla;Firefox Internet browser;Mozilla community;distributed problem-solving activity;distributed problem-solving network;linguistic method;open source community;software problem;Computer bugs;Context;Measurement;Organizations;Pragmatics;Problem-solving;Software;Collaboration;Interaction;Open Source;Problem-Solving;lexical analysis	\N	\N	June	\N	\N	\N	1-10	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	The organization of distributed problem-solving networks: Examining how core and periphery interact together to solve problems in Mozilla's community	\N	\N	\N	2013	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Masmoudi2013a
125	00000442	1	9	Matsumoto2012	SaaS (Software as a Service) is software that provides the necessary service only when actually required. On the other hand, PaaS (Platform as a Service) is a platform where integrated software development is executed using the networked environment. SaaS for developers is supported by version control systems or forums. However, these services do not support deployment. Therefore, users need to use other services (like PaaS). We propose a development environment service, in which development and deployment are integrated. In this paper, we propose a development and deployment service in the Educational Cloud. The integrated system is referred to as Development as a Service (DEVaaS), which describes the system. This system currently supports a bug tracking system, continuous integration system, version control system, several well-known programming languages, an editor, and deployment environments in the cloud.	\N	\N	K. Matsumoto and S. Kibe and M. Uehara and H. Mori	2012 15th International Conference on Network-Based Information Systems	\N	\N	\N	10.1109/NBiS.2012.60	\N	\N	\N	\N	\N	\N	\N	\N	cloud computing;computer aided instruction;software engineering;DEVaaS;PaaS;SaaS;design;development as a service;educational cloud;integrated software development;platform as a service;software as a service;Computer languages;Control systems;Internet;Project management;Servers;Cloud;DEVaaS;Development;PaaS;SaaS	\N	\N	Sept	\N	\N	\N	815-819	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Design of Development as a Service in the Cloud	\N	\N	\N	2012	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Matsumoto2012
126	00000443	1	9	Matsushita2005	In typical open source software development, developers use revision control systems for product management, mailing list systems for human communications, and bug tracking systems for process management. All of these systems store development histories of the products that show significant information of problems during the development. However, it would be a hard job to retrieve useful information related to a current problem faced by developers. In this paper, we describe a software development supporting system CoxR that is capable of crawling the development histories. CoxR creates software development information Web which consists of developers, emails, and program deltas, and provides an interface to search, navigate, browse, and retrieve past development results. Through a case study, we confirmed that CoxR helps developers to solve their problems by making it easier to search development history.	\N	\N	M. Matsushita and K. Sasaki and K. Inoue	12th Asia-Pacific Software Engineering Conference (APSEC'05)	\N	\N	\N	10.1109/APSEC.2005.56	\N	\N	\N	\N	\N	\N	\N	\N	public domain software;search engines;software engineering;CoxR;information retrieval;open source development history search system;software development supporting system;Communication system control;Control systems;Data mining;History;Information retrieval;Navigation;Open source software;Programming;Software development management;Technology management	\N	\N	Dec	\N	\N	\N	6 pp.-	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	CoxR: open source development history search system	\N	\N	\N	2005	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Matsushita2005
127	00000444	1	9	Mausa2014	Empirical software engineering research community aims to accumulate knowledge in software engineering community based on the empirical studies on datasets obtained from the real software projects. Limiting factor to building the theory over thus accumulated knowledge is often related to dataset bias. One solution to this problem is developing a systematic data collection procedure through standard guidelines that would be available to open community and thus enable reducing data collection bias. In this paper we present a tool demonstration that implements a systematic data collection procedure for software defect prediction datasets from the open source bug tracking and the source code management repositories. Main challenging issue that the tool addresses is linking the information related to the same entity (e.g. class file) from these two sources. The tool implements interfaces to bug and source code repositories and even other tools for calculating the software metrics. Finally, it offers the user to create software defect prediction datasets even if he is unaware of all the details behind this complex task.	\N	\N	G. Mauša and T. G. Grbac and B. D. Bašić	Software, Telecommunications and Computer Networks (SoftCOM), 2014 22nd International Conference on	\N	\N	\N	10.1109/SOFTCOM.2014.7039122	\N	\N	\N	\N	\N	\N	\N	\N	program debugging;program testing;public domain software;software metrics;source code (software);bug-code analyzer;class file;complex task;data collection bias reduction;data collection tool;empirical software engineering research community;open community;open source bug tracking;real software projects;software defect prediction datasets;software metrics;source code management repositories;standard guidelines;systematic data collection procedure;Communities;Computer bugs;Data collection;Joining processes;Measurement;Software;Software engineering;Automated Tool;Mining Software Repositories;Software Defect Prediction	\N	\N	Sept	\N	\N	\N	425-426	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Software defect prediction with Bug-Code analyzer - A data collection tool demo	\N	\N	\N	2014	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Mausa2014
128	00000445	1	1	McLaughlin2004	Bug tacking systems give developers a unique and clear view into user's everyday product experiences. Adding some statistical analysis and software teams can efficiently improve product quality. It's hard to tell precisely how well the error reporting system working, but this seems to be a bug weapon that has landed a permanent spot in microsoft's arsenal. Automated bug tracking, combined with statistical reporting, plays a key role for developers at the Mozilla Foundations, best known for its open source Web browser and email software. The sparse, random sampling approach produces enough data for the team to do what it call \\"statistical debugging\\"-bug detection through statistical analysis.	\N	\N	L. McLaughlin	\N	\N	\N	\N	10.1109/MS.2004.1259245	\N	\N	\N	\N	\N	\N	IEEE Software	\N	DP industry;data privacy;program debugging;software quality;software tools;statistical analysis;automated bug tracking system;data privacy;email software;open source Web browser;product experiences;product quality;statistical analysis;statistical debugging;statistical reporting	\N	\N	Jan	\N	1	\N	100-103	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Automated bug tracking: the promise and the pitfalls	\N	\N	21	2004	\N	\N	\N	2016.06.08	dissertacao	\N	\N	McLaughlin2004
129	00000446	1	9	Menzies2008	In mission critical systems, such as those developed by NASA, it is very important that the test engineers properly recognize the severity of each issue they identify during testing. Proper severity assessment is essential for appropriate resource allocation and planning for fixing activities and additional testing. Severity assessment is strongly influenced by the experience of the test engineers and by the time they spend on each issue. The paper presents a new and automated method named SEVERIS (severity issue assessment), which assists the test engineer in assigning severity levels to defect reports. SEVERIS is based on standard text mining and machine learning techniques applied to existing sets of defect reports. A case study on using SEVERIS with data from NASApsilas Project and Issue Tracking System (PITS) is presented in the paper. The case study results indicate that SEVERIS is a good predictor for issue severity levels, while it is easy to use and efficient.	\N	\N	T. Menzies and A. Marcus	Software Maintenance, 2008. ICSM 2008. IEEE International Conference on	\N	\N	\N	10.1109/ICSM.2008.4658083	\N	\N	\N	\N	\N	\N	\N	\N	data mining;learning (artificial intelligence);resource allocation;software engineering;NASA;automated severity assessment;machine learning techniques;mission critical systems;resource allocation;severity issue assessment;software defect reports;text mining;Automatic testing;Computer bugs;Computer science;Costs;NASA;Personnel;Robots;Software testing;System testing;Text mining	\N	\N	Sept	\N	\N	\N	346-355	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Automated severity assessment of software defect reports	\N	\N	\N	2008	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Menzies2008
137	00000455	1	4	Murgia2014	Software development is a collaborative activity in which developers interact to create and maintain a complex software system. Human collaboration inevitably evokes emotions like joy or sadness, which can affect the collaboration either positively or negatively, yet not much is known about the individual emotions and their role for software development stakeholders. In this study, we analyze whether development artifacts like issue reports carry any emotional information about software development. This is a first step towards verifying the feasibility of an automatic tool for emotion mining in software development artifacts: if humans cannot determine any emotion from a software artifact, neither can a tool. Analysis of the Apache Software Foundation issue tracking system shows that developers do express emotions (in particular gratitude, joy and sadness). However, the more context is provided about an issue report, the more human raters start to doubt and nuance their interpretation of emotions. More investigation is needed before building a fully automatic emotion mining tool. Copyright is held by the author/owner(s). Publication rights licensed to ACM.	\N	\N	Murgia, A.a and Tourani, P.b and Adams, B.b and Ortu, M.c 	\N	\N	\N	\N	10.1145/2597073.2597086	\N	\N	\N	\N	\N	\N	11th Working Conference on Mining Software Repositories, MSR 2014 - Proceedings	\N	\N	\N	\N	\N	cited By 9	\N	\N	262-271	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Do developers feel emotions? An exploratory analysis of emotions in software artifacts	\N	https://www.scopus.com/inward/record.uri?eid=2-s2.0-84938816347&partnerID=40&md5=4026a33b8ade87144c7273a64c4d4cfa	\N	2014	\N	\N	\N	2016.06.08	dissertacao	\N	[dissertacao:]	Murgia2014
130	00000447	1	9	Merten2012	In a two semester software engineering (SE) course at Bonn-Rhine-Sieg University students have the opportunity to actually elicit, analyze and document requirements as well as design and develop a correspondent software product in teams of approximately four. The students have to use an issue tracking software in combination with a Requirements Engineering (RE) tool to document and plan their work. Though the course starts with RE theory from elicitation via documentation and traceability, we found that the students find it difficult to combine different RE artifact types and to develop useful traces between them. In this paper we present an approach to provide feedback and give pro-active advice inside an RE tool, while the specification is created. To derive this feedback we use a knowledge base containing rules and best practices to create a requirements specification. An assistance system applies these rules to guide the user in different situations, beginning with an empty specification up to the implementation of various RE artifact types and traces between them. This paper presents the status of our knowledge-based feedback mechanism and possible extensions. In order to get primary indicators for the value of this approach we did experiments and workshops with eight students who worked with the same tool with and without the feedback system.	\N	\N	T. Merten and T. Schäfer and S. Bürsner	Requirements Engineering Education and Training (REET), 2012 IEEE 7th International Workshop on	\N	\N	\N	10.1109/REET.2012.6360068	\N	\N	\N	\N	\N	\N	\N	\N	Cognition;Concrete;Documentation;Education;Knowledge based systems;Knowledge engineering;Software;RE;direct feedback;knowledge engineering;software-based feedback agents;teaching	\N	\N	Sept	\N	\N	\N	9-13	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Using RE knowledge to assist automatically during requirement specification	\N	\N	\N	2012	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Merten2012
132	00000449	1	4	Michail2005	In this paper, we propose a method to help users avoid bugs in GUI applications. In particular, users would use the application normally and report bugs that they encounter to prevent anyone - including themselves - from encountering those bugs again. When a user attempts an action that has led to problems in the past, he/she will receive a warning and will be given the opportunity to abort the action thus avoiding the bug altogether and keeping the application stable. Of course, bugs should be fixed eventually by the application developers, but our approach allows application users to collaboratively help each other avoid bugs - thus making the application more usable in the meantime. We demonstrate this approach using our \\"Stabilizer\\" prototype. We also include a preliminary evaluation of the Stabilizer's bug prediction. Copyright 2005 ACM.	\N	\N	Michail, A.a and Xie, T.b 	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Proceedings - 27th International Conference on Software Engineering, ICSE05	\N	\N	\N	\N	\N	cited By 10	\N	\N	107-116	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Helping users avoid bugs in GUI applications	\N	https://www.scopus.com/inward/record.uri?eid=2-s2.0-33244477851&partnerID=40&md5=4f91a116b40003ab05d09728883da438	\N	2005	\N	\N	\N	2016.06.08	dissertacao	\N	[dissertacao:]	Michail2005
133	00000450	1	9	Mittal:2014:PMS:2591062.2591152	\N	New York, NY, USA	\N	Mittal, Megha and Sureka, Ashish	Companion Proceedings of the 36th International Conference on Software Engineering	\N	\N	\N	10.1145/2591062.2591152	\N	\N	\N	\N	\N	\N	\N	\N	Education Data Mining, Learning Analytic, Mining Software Repositories, Process Mining, Software Engineering Education	\N	Hyderabad, India	\N	\N	\N	\N	344--353	\N	\N	\N	\N	ACM	\N	\N	\N	\N	\N	ICSE Companion 2014	Process Mining Software Repositories from Student Projects in an Undergraduate Software Engineering Course	\N	http://doi.acm.org/10.1145/2591062.2591152	\N	2014	\N	\N	\N	\N	\N	\N	\N	Mittal:2014:PMS:2591062.2591152
134	00000451	1	9	Moran:2015:EAA:2786805.2807557	\N	New York, NY, USA	\N	Moran, Kevin	Proceedings of the 2015 10th Joint Meeting on Foundations of Software Engineering	\N	\N	\N	10.1145/2786805.2807557	\N	\N	\N	\N	\N	\N	\N	\N	Bug reports, android, auto-completion, reproduction steps	\N	Bergamo, Italy	\N	\N	\N	\N	1045--1047	\N	\N	\N	\N	ACM	\N	\N	\N	\N	\N	ESEC/FSE 2015	Enhancing Android Application Bug Reporting	\N	http://doi.acm.org/10.1145/2786805.2807557	\N	2015	\N	\N	\N	\N	\N	\N	\N	Moran:2015:EAA:2786805.2807557
135	00000452	1	9	Moran:2015:ABR:2786805.2786857	\N	New York, NY, USA	\N	Moran, Kevin and Linares-V\\\\'{a}squez, Mario and Bernal-C\\\\'{a}rdenas, Carlos and Poshyvanyk, Denys	Proceedings of the 2015 10th Joint Meeting on Foundations of Software Engineering	\N	\N	\N	10.1145/2786805.2786857	\N	\N	\N	\N	\N	\N	\N	\N	Bug reports, android, auto-completion, reproduction steps	\N	Bergamo, Italy	\N	\N	\N	\N	673--686	\N	\N	\N	\N	ACM	\N	\N	\N	\N	\N	ESEC/FSE 2015	Auto-completing Bug Reports for Android Applications	\N	http://doi.acm.org/10.1145/2786805.2786857	\N	2015	\N	\N	\N	\N	\N	\N	\N	Moran:2015:ABR:2786805.2786857
136	00000453	1	9	Morariu2013	Cloud computing represents at this point the standard delivery method for the infrastructure and platform of next generation applications. The emergence of a wide range of commercial cloud services have changed not only the way code is written and maintained, but also the way it is executed. Private clouds play an important role in this new service delivery model being designed to provide computing capacity within the organization premises either standalone or in a hybrid model. As resources of the private cloud are limited, QoS assurance becomes an important challenge. This paper presents the design of a monitoring solution that integrates several open source tools and can assure QoS for private clouds. The solution is implemented for IBM CloudBurst 2.1 and IBM TSAM product stack and can monitor a wide range of services, from CPU and memory load to J2EE services and HTTP statistics generate real time alerts and provide integration with a Jira based issue tracking tools. The overall solution provides a closed loop QoS system for private clouds that is able to prevent a large set of issues and provide real time diagnostic data for root cause analysis.	\N	\N	O. Morariu and T. Borangiu and C. Morariu	2013 24th International Workshop on Database and Expert Systems Applications	\N	\N	\N	10.1109/DEXA.2013.31	\N	\N	\N	\N	\N	\N	\N	\N	cloud computing;monitoring;program diagnostics;public domain software;quality of service;real-time systems;resource allocation;CPU;HTTP statistics;IBM CloudBurst 2.1;IBM TSAM product stack;J2EE services;Jira based issue tracking tools;QoS assurance;closed loop QoS system;cloud computing capacity;commercial cloud services;hybrid model;memory load;multilayer QoS monitoring;open source tools;private cloud resources;real time alerts;real time diagnostic data;root cause analysis;service delivery model;standard delivery method;Cloud computing;Instruction sets;Measurement;Monitoring;Quality of service;Real-time systems;IBM CloudBurst;diagnostic;private cloud;quality of service;real time monitoring;service monitoring	\N	\N	Aug	\N	\N	\N	236-240	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Multi-layer QoS Monitoring in Private Clouds	\N	\N	\N	2013	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Morariu2013
157	00000479	1	9	Romo:2015:TAT:2745802.2745833	\N	New York, NY, USA	\N	Romo, Bilyaminu Auwal and Capiluppi, Andrea	Proceedings of the 19th International Conference on Evaluation and Assessment in Software Engineering	\N	\N	\N	10.1145/2745802.2745833	\N	\N	\N	\N	\N	\N	\N	\N	bug accuracy, bug traceability, bug-fixing commits	\N	Nanjing, China	\N	\N	\N	\N	33:1--33:6	\N	\N	\N	\N	ACM	\N	\N	\N	\N	\N	EASE '15	Towards an Automation of the Traceability of Bugs from Development Logs: A Study Based on Open Source Software	\N	http://doi.acm.org/10.1145/2745802.2745833	\N	2015	\N	\N	\N	\N	\N	\N	\N	Romo:2015:TAT:2745802.2745833
140	00000458	1	9	Naguib2013	One question which frequently arises within the context of artifacts stored in a bug tracking repository is: “who should work on this bug report?” A number of approaches exist to semi-automatically identify and recommend developers, e.g. using machine learning techniques and social networking analysis. In this work, we propose a new approach for assignee recommendation leveraging user activities in a bug tracking repository. Within the bug tracking repository, an activity profile is created for each user from the history of all his activities (i.e. review, assign, and resolve). This profile, to some extent, indicates the user's role, expertise, and involvement in this project. These activities influence and contribute to the identification and ranking of suitable assignees. In order to evaluate our work, we apply it to bug reports of three different projects. Our results indicate that the proposed approach is able to achieve an average hit ratio of 88%. Comparing this result to the LDA-SVM - based assignee recommendation technique, it was found that the proposed approach performs better.	\N	\N	H. Naguib and N. Narayan and B. Brügge and D. Helal	Mining Software Repositories (MSR), 2013 10th IEEE Working Conference on	\N	\N	\N	10.1109/MSR.2013.6623999	\N	\N	\N	\N	\N	\N	\N	\N	program debugging;recommender systems;software engineering;average hit ratio;bug report assignee recommendation;bug report assignment;bug report resolving;bug report review;bug tracking repository;user activity profiles;user expertise;user involvement;user role;Data mining;Databases;Equations;History;Mathematical model;Open source software;Activity profile;assignee recommendation;bug report;bug tracking	\N	\N	May	\N	\N	\N	22-30	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Bug report assignee recommendation using activity profiles	\N	\N	\N	2013	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Naguib2013
141	00000459	1	9	Nagwani2012	A software bug repository not only contains the data about software bugs, but also contains the information about the contribution of developers, quality engineers (testers), managers and other team members. It contains the information about the efforts of team members involved in resolving the software bugs. This information can be analyzed to identify some useful knowledge patterns. One such pattern is identifying the developers, who can help in resolving the newly reported software bugs. In this paper a new algorithm is proposed to discover experts for resolving the newly assigned software bugs. The purpose of proposed algorithm is two fold. First is to identify the appropriate developers for newly reported bugs. And second is to find the expertise for newly reported bugs that can help other developers to fix these bugs if required. All the important information in software bug reports is of textual data types like bug summary, description etc. The algorithm is designed using the analysis of this textual information. Frequent terms are generated from this textual information and then term similarity is used to identify appropriate experts (developers) for the newly reported software bug.	\N	\N	N. K. Nagwani and S. Verma	2011 Ninth International Conference on ICT and Knowledge Engineering	\N	\N	\N	10.1109/ICTKE.2012.6152388	\N	\N	\N	\N	\N	\N	\N	\N	program debugging;bug attributes;bug summary;expert developers;frequent terms similarities;knowledge patterns;newly reported bugs;quality engineers;software bug repository;term similarity;textual data types;textual information;Computer bugs;Conferences;Data mining;Prediction algorithms;Software;Software algorithms;Vocabulary;Bug Mining;Expert Finding;Faster Bug Fixing;Software Bug Repositories	\N	\N	Jan	\N	\N	\N	113-117	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Predicting expert developers for newly reported bugs using frequent terms similarities of bug attributes	\N	\N	\N	2012	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Nagwani2012
142	00000460	1	9	Nagwani2010	Software bug estimation is a very essential activity for effective and proper software project planning. All the software bug related data are kept in software bug repositories. Software bug (defect) repositories contains lot of useful information related to the development of a project. Data mining techniques can be applied on these repositories to discover useful interesting patterns. In this paper a prediction data mining technique is proposed to predict the software bug estimation from a software bug repository. A two step prediction model is proposed In the first step bug for which estimation is required, its summary and description is matched against the summary and description of bugs available in bug repositories. A weighted similarity model is suggested to match the summary and description for a pair of software bugs. In the second step the fix duration of all the similar bugs are calculated and stored and its average is calculated, which indicates the predicted estimation of a bug. The proposed model is implemented using open source technologies and is explained with the help of illustrative example.	\N	\N	N. K. Nagwani and S. Verma	Advance Computing Conference (IACC), 2010 IEEE 2nd International	\N	\N	\N	10.1109/IADCC.2010.5422923	\N	\N	\N	\N	\N	\N	\N	\N	data mining;public domain software;software libraries;average weighted similarity;open source technologies;predictive data mining model;software bug estimation;software bug repositories;software project planning;Computer bugs;Data mining;Open source software;Predictive models;Programming;Project management;Software development management;Software quality;Software testing;System testing;Bug estimation;Estimation Prediction;Software bug repositories;Weighted Similarity	\N	\N	Feb	\N	\N	\N	373-378	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Predictive data mining model for software bug estimation using average weighted similarity	\N	\N	\N	2010	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Nagwani2010
143	00000461	1	9	Nagwani2013	Discovering categorical (taxonomic) terms in text classification is an important and complex problem. Development of a good text classifier depends on the method of identification and generation of proper taxonomic terms. Software bug indicates improper behavior of the functionalities given during the requirements. These bugs are tracked with the help of bug tracking systems (BTS) where the bug information is presented using several attributes out of which some important attributes are textual for example summary and description. For effective classification of the software bugs a good text classifying mechanism is required for which proper taxonomic terms are required to be identified. In this work a methodology is presented to find the taxonomic terms using Latent Dirichlet Allocation (LDA) for software bug classification.	\N	\N	N. K. Nagwani and S. Verma and K. K. Mehta	ICT and Knowledge Engineering (ICT KE), 2013 11th International Conference on	\N	\N	\N	10.1109/ICTKE.2013.6756268	\N	\N	\N	\N	\N	\N	\N	\N	classification;probability;program debugging;text analysis;LDA;bug tracking system;categorical terms;latent Dirichlet allocation;software bug classification;taxonomic term;text classification;topic model;Androids;Computer bugs;Conferences;Java;Mathematical model;Resource management;Software;Bug Tracking Systems;Latent Dirichlet Allocation;Software Bug Attributes;Software Bug Classification;Taxonomic Terms	\N	\N	Nov	\N	\N	\N	1-5	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Generating taxonomic terms for software bug classification by utilizing topic models based on Latent Dirichlet Allocation	\N	\N	\N	2013	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Nagwani2013
144	00000462	1	9	Nayrolles2016	In recent years, mining bug report (BR) repositories has perhaps been one of the most active software engineering research fields. There exist many open source bug tracking and version control systems thatdevelopers and researchers can use to examine bug reports so as to reasonabout software quality. The issue is that these repositories use different interfaces and ways toaccess and represent data, which hinders productivity and reuse. To address this, we introduce BUMPER (BUg Metarepository for dEvelopersand Researchers), a common infrastructure for developers and researchersinterested in mining data from many (heterogeneous) repositories. BUMPER is an open source web-based environment that extracts informationfrom a variety of BR repositories and version control systems. It is equipped with a powerful search engine to help users rapidly querythe repositories using a single point of access. To demonstrate the effectiveness of BUMPER, we use it to build a largedataset from a variety of repositories. The dataset contains more thanone million bug reports and fixes. Both BUMPER and the dataset are publiclyavailable at https://bumper-app.com.	\N	\N	M. Nayrolles and A. Hamou-Lhadj	2016 IEEE 23rd International Conference on Software Analysis, Evolution, and Reengineering (SANER)	\N	\N	\N	10.1109/SANER.2016.71	\N	\N	\N	\N	\N	\N	\N	\N	Computer bugs;Control systems;Data mining;Indexes;Natural languages;Servers;Software	\N	\N	March	\N	\N	\N	649-652	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	BUMPER: A Tool for Coping with Natural Language Searches of Millions of Bugs and Fixes	\N	\N	1	2016	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Nayrolles2016
146	00000466	1	9	Nguyen:2012:MAR:2393596.2393671	\N	New York, NY, USA	\N	Nguyen, Anh Tuan and Nguyen, Tung Thanh and Nguyen, Hoan Anh and Nguyen, Tien N.	Proceedings of the ACM SIGSOFT 20th International Symposium on the Foundations of Software Engineering	\N	\N	\N	10.1145/2393596.2393671	\N	\N	\N	\N	\N	\N	\N	\N	bug-to-fix links, bugs, fixes, mining software repository	\N	Cary, North Carolina	\N	\N	\N	\N	63:1--63:11	\N	\N	\N	\N	ACM	\N	\N	\N	\N	\N	FSE '12	Multi-layered Approach for Recovering Links Between Bug Reports and Fixes	\N	http://doi.acm.org/10.1145/2393596.2393671	\N	2012	\N	\N	\N	\N	\N	\N	\N	Nguyen:2012:MAR:2393596.2393671
147	00000467	1	9	Nguyen2010	Software quality researchers build software quality models by recovering traceability links between bug reports in issue tracking repositories and source code files. However, all too often the data stored in issue tracking repositories is not explicitly tagged or linked to source code. Researchers have to resort to heuristics to tag the data (e.g., to determine if an issue is a bug report or a work item), or to link a piece of code to a particular issue or bug. Recent studies by Bird et al. and by Antoniol et al. suggest that software models based on imperfect datasets with missing links to the code and incorrect tagging of issues, exhibit biases that compromise the validity and generality of the quality models built on top of the datasets. In this study, we verify the effects of such biases for a commercial project that enforces strict development guidelines and rules on the quality of the data in its issue tracking repository. Our results show that even in such a perfect setting, with a near-ideal dataset, biases do exist - leading us to conjecture that biases are more likely a symptom of the underlying software development process instead of being due to the used heuristics.	\N	\N	T. H. D. Nguyen and B. Adams and A. E. Hassan	2010 17th Working Conference on Reverse Engineering	\N	\N	\N	10.1109/WCRE.2010.37	\N	\N	\N	\N	\N	\N	\N	\N	program debugging;program diagnostics;software quality;source coding;bug fix dataset;software development process;software quality model;software traceability;source code flies;Birds;Computer bugs;Couplings;Software engineering;Software quality;Tagging;bias;bug-fix;data quality;prediction;sample	\N	\N	Oct	\N	\N	\N	259-268	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	A Case Study of Bias in Bug-Fix Datasets	\N	\N	\N	2010	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Nguyen2010
158	00000480	1	9	Romo:2014:FGD:2641580.2641592	\N	New York, NY, USA	\N	Romo, Bilyaminu Auwal and Capiluppi, Andrea and Hall, Tracy	Proceedings of The International Symposium on Open Collaboration	\N	\N	\N	10.1145/2641580.2641592	\N	\N	\N	\N	\N	\N	\N	\N	Bug traceability, bug-fixing commits	\N	Berlin, Germany	\N	\N	\N	\N	8:1--8:4	\N	\N	\N	\N	ACM	\N	\N	\N	\N	\N	OpenSym '14	Filling the Gaps of Development Logs and Bug Issue Data	\N	http://doi.acm.org/10.1145/2641580.2641592	\N	2014	\N	\N	\N	\N	\N	\N	\N	Romo:2014:FGD:2641580.2641592
148	00000468	1	4	OcarizaJr.2013	Context: Client-side JavaScript is widely used in web applications to improve user-interactivity and minimize client-server communications. Unfortunately, web applications are prone to JavaScript faults. While prior studies have demonstrated the prevalence of these faults, no attempts have been made to determine their root causes and consequences. Objective: The goal of our study is to understand the root causes and impact of JavaScript faults and how the results can impact JavaScript programmers, testers and tool developers. Method: We perform an empirical study of 317 bug reports from 12 bug repositories. The bug reports are thoroughly examined to classify and extract information about the fault's cause (the error) and consequence (the failure and impact). Result: The majority (65%) of JavaScript faults are DOM-related, meaning they are caused by faulty interactions of the JavaScript code with the Document Object Model (DOM). Further, 80% of the highest impact JavaScript faults are DOM-related. Finally, most JavaScript faults originate from programmer mistakes committed in the JavaScript code itself, as opposed to other web application components such as the server-side or HTML code. Conclusion: Given the prevalence of DOM-related faults, JavaScript programmers need development tools that can help them reason about the DOM. Also, testers should prioritize detection of DOM-related faults as most high impact faults belong to this category. Finally, developers can use the error patterns we found to design more powerful static analysis tools for JavaScript. © 2013 IEEE.	\N	\N	Ocariza Jr., F. and Bajaj, K. and Pattabiraman, K. and Mesbah, A.	\N	\N	\N	\N	10.1109/ESEM.2013.18	\N	\N	\N	\N	\N	\N	International Symposium on Empirical Software Engineering and Measurement	\N	\N	\N	\N	\N	cited By 16	\N	\N	55-64	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	An empirical study of client-side JavaScript bugs	\N	https://www.scopus.com/inward/record.uri?eid=2-s2.0-84893300715&partnerID=40&md5=0d4a67c3b8bd3fc60a3ad5ac9479f310	\N	2013	\N	\N	\N	2016.06.08	dissertacao	\N	[dissertacao:]	OcarizaJr.2013
149	00000470	1	4	Ortu2015	Issue tracking systems store valuable data for testing hypotheses concerning maintenance, building statistical prediction models and recently investigating developers \\"affectiveness\\". In particular, the Jira Issue Tracking System is a proprietary tracking system that has gained a tremendous popularity in the last years and offers unique features like the project management system and the Jira agile kanban board. This paper presents a dataset extracted from the Jira ITS of four popular open source ecosystems (as well as the tools and infrastructure used for extraction) the Apache Software Foundation, Spring, JBoss and CodeHaus communities. Our dataset hosts more than 1K projects, containing more than 700K issue reports and more than 2 million issue comments. Using this data, we have been able to deeply study the communication process among developers, and how this aspect affects the development process. Further-more, comments posted by developers contain not only technical information, but also valuable information about sentiments and emotions. Since sentiment analysis and human aspects in software engineering are gaining more and more importance in the last years, with this repository we would like to encourage further studies in this direction. © 2015 ACM.	\N	\N	Ortu, M.a and Destefanis, G.b and Adams, B.d and Murgia, A.c and Marchesi, M.a and Tonelli, R.a 	\N	\N	\N	\N	10.1145/2810146.2810147	\N	\N	\N	\N	\N	\N	ACM International Conference Proceeding Series	\N	\N	\N	\N	\N	cited By 0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	The JIRA repository dataset: Understanding social aspects of software development	\N	https://www.scopus.com/inward/record.uri?eid=2-s2.0-84947571324&partnerID=40&md5=b745a5ff018ff8c5f9f3827219f7fcd5	2015-October	2015	\N	\N	\N	2016.06.08	dissertacao	\N	[dissertacao:]	Ortu2015
150	00000471	1	9	Otoom2016	We target the problem of identifying the severity of a bug report. Our main aim is to develop an intelligent system that is capable of predicting the severity of a newly submitted bug report through a bug tracking system. For this purpose, we build a dataset consisting of 59 features characterizing 163 instances that belong to two classes: severe and non-severe. We combine the proposed feature set with strong classification algorithms to assist in predicting the severity of bugs. Moreover, the proposed algorithms are integrated within a boosting algorithm for an enhanced performance. Our results show that the proposed technique has proved successful with a classification performance accuracy of more than 76% with the AdaBoost algorithm and cross validation test. Moreover, boosting has been effective in enhancing the performance of its base classifiers with improvements of up to 4.9%.	\N	\N	A. F. Otoom and D. Al-Shdaifat and M. Hammad and E. E. Abdallah	2016 7th International Conference on Information and Communication Systems (ICICS)	\N	\N	\N	10.1109/IACS.2016.7476092	\N	\N	\N	\N	\N	\N	\N	\N	Boosting;Classification algorithms;Computer bugs;Feature extraction;Radial basis function networks;Software;Vegetation;Adaboost;machine learning;severity predection;software bugs	\N	\N	April	\N	\N	\N	92-95	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Severity prediction of software bugs	\N	\N	\N	2016	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Otoom2016
151	00000473	1	4	Prifti2011	Background: Bug Tracking Repositories, such as Bugzilla, are designed to support fault reporting for developers, testers and users of the system. Allowing anyone to contribute finding and reporting faults has an immediate impact on software quality. However, this benefit comes with at least one side-effect. Users often file reports that describe the same fault. This increases the maintainer's triage time, but important information required to fix the fault is likely contributed by different reports. Aim: The objective of this paper is twofold. First, we want to understand the dynamics of bug report filing for a large, long duration open source project, Firefox. Second, we present a new approach that can reduce the number of duplicate reports. Method: The novel element in the proposed approach is the ability to concentrate the search for duplicates on specific portions of the bug repository. Our system can be deployed as a search tool to help reporters query the repository. Results: When tested as a search tool our system is able to detect up to 53% of duplicate reports. Conclusion: The performance of Information Retrieval techniques can be significantly improved by guiding the search for duplicates. This approach results in higher detection rates and constant classification runtime. Copyright © 2011 ACM.	\N	\N	Prifti, T. and Banerjee, S. and Cukic, B.	\N	\N	\N	\N	10.1145/2020390.2020398	\N	\N	\N	\N	\N	\N	ACM International Conference Proceeding Series	\N	\N	\N	\N	\N	cited By 0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Detecting bug duplicate reports through local references	\N	https://www.scopus.com/inward/record.uri?eid=2-s2.0-80054061878&partnerID=40&md5=3bd80f1b296cccd5801f38757f6ac71f	\N	2011	\N	\N	\N	2016.06.08	dissertacao	\N	[dissertacao:]	Prifti2011
182	00000511	1	9	Thung:2014:BIT:2635868.2661678	\N	New York, NY, USA	\N	Thung, Ferdian and Le, Tien-Duy B. and Kochhar, Pavneet Singh and Lo, David	Proceedings of the 22Nd ACM SIGSOFT International Symposium on Foundations of Software Engineering	\N	\N	\N	10.1145/2635868.2661678	\N	\N	\N	\N	\N	\N	\N	\N	Bug localization, Bugzilla, git	\N	Hong Kong, China	\N	\N	\N	\N	767--770	\N	\N	\N	\N	ACM	\N	\N	\N	\N	\N	FSE 2014	BugLocalizer: Integrated Tool Support for Bug Localization	\N	http://doi.acm.org/10.1145/2635868.2661678	\N	2014	\N	\N	\N	\N	\N	\N	\N	Thung:2014:BIT:2635868.2661678
153	00000475	1	9	Rastogi:2013:SMI:2442754.2442757	\N	New York, NY, USA	\N	Rastogi, Ayushi and Gupta, Arpit and Sureka, Ashish	Proceedings of the 6th India Software Engineering Conference	\N	\N	\N	10.1145/2442754.2442757	\N	\N	\N	\N	\N	\N	\N	\N	developer contribution assessment, issue tracking system, mining software repositories, software maintenance	\N	New Delhi, India	\N	\N	\N	\N	13--22	\N	\N	\N	\N	ACM	\N	\N	\N	\N	\N	ISEC '13	Samiksha: Mining Issue Tracking System for Contribution and Performance Assessment	\N	http://doi.acm.org/10.1145/2442754.2442757	\N	2013	\N	\N	\N	\N	\N	\N	\N	Rastogi:2013:SMI:2442754.2442757
154	00000476	1	9	Rastogi2014	Free/Libre Open Source Software (FLOSS) community management is an important issue. Contributor churn (joining or leaving a project) causes failure of the majority of software projects. In this paper, we present a framework to characterize stability of the community in software maintenance projects by mining Issue Tracking System (ITS). We identify key stability indicators and propose metrics to measure them. We conduct time series analysis on metrics data to examine the stability of the community. We model community participation patterns and forecast future behavior to help plan and support informed decision making. We present a case study of four years data of Google Chromium Project and investigate the inferential ability of the framework.	\N	\N	A. Rastogi and A. Sureka	2014 21st Asia-Pacific Software Engineering Conference	\N	\N	\N	10.1109/APSEC.2014.88	\N	\N	\N	\N	\N	\N	\N	\N	project management;public domain software;software management;system recovery;FLOSS community management;Google chromium project;ITS;community contribution pattern;decision making;free-libre open source software;inferential ability;issue tracking system;key stability indicators;software maintenance projects;software project;time series analysis;Analytical models;Computational modeling;Data models;Market research;Measurement;Predictive models;Stability analysis;Developer Contribution Patterns;Issue Tracking System;Mining Software Repositories	\N	\N	Dec	\N	\N	\N	31-34	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	What Community Contribution Pattern Says about Stability of Software Project?	\N	\N	2	2014	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Rastogi2014
155	00000477	1	9	Rastogi2013	Contribution and performance assessment is an established practice in organization with its sphere of influence spanning process, policy, people (client) and personnel (employee). Multiple roles in organization (for e.g. employees, project manager, hr manager etc.) view contribution and performance assessment with different perspectives and objectives. However, despite its ability to ensure growth and affluence of organization existing contribution and performance assessment practices are marred with flaws and imperfections. The objective of this work is to serve wide-ranged requirements of software maintenance professionals (in context of contribution and performance assessment) in organization by application of variegated approaches (tools, techniques, models etc.) on software repositories (Issue Tracking System, Version Control System, Source Code Repositories etc.). We study pain-points of practitioners (in context of contribution and performance assessment) and present solution approach by mining software repositories. We implement the approach on real-world data and gather insights from practitioners to validate and improve our research. In this paper, 'SamikshaUmbra' (research umbrella that circumscribe related research threads) we present approach to meet stated research objectives and viable research directions.	\N	\N	A. Rastogi and A. Sureka	2013 20th Asia-Pacific Software Engineering Conference (APSEC)	\N	\N	\N	10.1109/APSEC.2013.134	\N	\N	\N	\N	\N	\N	\N	\N	data mining;organisational aspects;research and development;software development management;software maintenance;SamikshaUmbra;contribution practice;issue tracking system;organization affluence;organization growth;performance assessment practice;related research threads;research directions;research objectives;research umbrella;software maintenance professionals;software repositories mining;source code repositories;version control system;Context;Data mining;Measurement;Organizations;Software maintenance;Standards organizations;Contribution and Performance Assessment;Mining Software Repositories;Software Maintenance Professionals	\N	\N	Dec	\N	\N	\N	170-175	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	SamikshaUmbra: Contribution and Performance Assessment of Software Maintenance Professionals by Mining Software Repositories	\N	\N	2	2013	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Rastogi2013
156	00000478	1	9	Romano2011	Uncaught exceptions, and in particular null pointer exceptions (NPEs), constitute a major cause of crashes for software systems. Although tools for the static identification of potential NPEs exist, there is need for proper approaches able to identify system execution scenarios causing NPEs. This paper proposes a search-based test data generation approach aimed at automatically identify NPEs. The approach consists of two steps: (i) an inter-procedural data and control flow analysis - relying on existing technology - that identifies paths between input parameters and potential NPEs, and (ii) a genetic algorithm that evolves a population of test data with the aim of covering such paths. The algorithm is able to deal with complex inputs containing arbitrary data structures. The approach has been evaluated on to test class clusters from six Java open source systems, where NPE bugs have been artificially introduced. Results show that the approach is, indeed, able to identify the NPE bugs, and it outperforms random testing. Also, we show how the approach is able to identify real NPE bugs some of which are posted in the bug-tracking system of the Apache libraries.	\N	\N	D. Romano and M. Di Penta and G. Antoniol	2011 Fourth IEEE International Conference on Software Testing, Verification and Validation	\N	\N	\N	10.1109/ICST.2011.49	\N	\N	\N	\N	\N	\N	\N	\N	Java;data structures;genetic algorithms;program control structures;program debugging;program testing;public domain software;software libraries;system recovery;Apache library;Java open source system;NPE bug;bug-tracking system;control flow analysis;data structure;genetic algorithm;interprocedural data;null pointer exception;search based testing;search-based test data generation;software system crash;system execution;test class cluster;Gallium;Genetic algorithms;Instruments;Java;Libraries;Null value;Testing;Null pointer exceptions;Search-based testing	\N	\N	March	\N	\N	\N	160-169	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	An Approach for Search Based Testing of Null Pointer Exceptions	\N	\N	\N	2011	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Romano2011
159	00000481	1	4	Saha2015	Understanding the severity of reported bugs is important in both research and practice. In particular, a number of recently proposed mining-based software engineering techniques predict bug severity, bug report quality, and bug-fix time, according to this information. Many bug tracking systems provide a field 'severity' offering options such as 'severe', 'normal', and 'minor', with 'normal' as the default. However, there is a widespread perception that for many bug reports the label 'normal' may not reflect the actual severity, because reporters may overlook setting the severity or may not feel confident enough to do so. In many cases, researchers ignore 'normal' bug reports, and thus overlook a large percentage of the reports provided. On the other hand, treating them all together risks mixing reports that have very diverse properties. In this study, we investigate the extent to which 'normal' bug reports actually have the 'normal' severity. We find that many 'normal' bug reports in practice are not normal. Furthermore, this misclassification can have a significant impact on the accuracy of mining-based tools and studies that rely on bug report severity information. © 2015 IEEE.	\N	\N	Saha, R.K.a and Lawall, J.b and Khurshid, S.a and Perry, D.E.a 	\N	\N	\N	\N	10.1109/MSR.2015.31	\N	\N	\N	\N	\N	\N	IEEE International Working Conference on Mining Software Repositories	\N	\N	\N	\N	\N	cited By 0	\N	\N	258-268	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Are these bugs really 'normal'?	\N	https://www.scopus.com/inward/record.uri?eid=2-s2.0-84957107517&partnerID=40&md5=1d0fefdfc0cd2a2fdc3d0a816212bbf6	2015-August	2015	\N	\N	\N	2016.06.08	dissertacao	\N	[dissertacao:]	Saha2015
160	00000482	1	1	Saha:2015:UTF:2791609.2792085	\N	Newton, MA, USA	\N	Saha, Ripon K. and Khurshid, Sarfraz and Perry, Dewayne E.	\N	\N	\N	\N	10.1016/j.infsof.2015.03.002	\N	\N	\N	\N	\N	\N	Inf. Softw. Technol.	\N	Bug survival time, Bug tracking, Bug triaging	\N	\N	#sep#	\N	C	\N	114--128	\N	\N	\N	\N	Butterworth-Heinemann	\N	\N	\N	\N	\N	\N	Understanding the Triaging and Fixing Processes of Long Lived Bugs	\N	http://dx.doi.org/10.1016/j.infsof.2015.03.002	65	2015	\N	\N	\N	\N	\N	\N	\N	Saha:2015:UTF:2791609.2792085
161	00000484	1	9	Saha:2015:TBR:2865656.2866147	\N	Washington, DC, USA	\N	Saha, Ripon K. and Lawall, Julia and Khurshid, Sarfraz and Perry, Dewayne E.	Proceedings of the 2015 IEEE/ACM 12th Working Conference on Mining Software Repositories	\N	\N	\N	10.1109/MSR.2015.31	\N	\N	\N	\N	\N	\N	\N	\N	Bug Severity, Bug Tracking System, Mining Software Repositories	\N	\N	\N	\N	\N	\N	258--268	\N	\N	\N	\N	IEEE Computer Society	\N	\N	\N	\N	\N	MSR '15	Are These Bugs Really \\"Normal\\"?	\N	http://dx.doi.org/10.1109/MSR.2015.31	\N	2015	\N	\N	\N	\N	\N	\N	\N	Saha:2015:TBR:2865656.2866147
162	00000485	1	9	Sassc2013	The evolution of non-trivial software systems is accompanied by unexpected behaviour and side-effects, referred as bugs or defects. These defects are reported to and stored in bug tracking systems, which contain descriptions of the problems that have been encountered. However, bug tracking systems store and present bug reports in textual form, which makes their understanding dispersive and unintuitive. We present an approach to display bug reports through a web-based visual analytics platform, named in*Bug. in*Bug allows users to navigate and inspect the vast information space created by bug tracking systems, with the goal of easing the comprehension of bug reports in detail and also obtain an understanding “in the large” of how bugs are reported with respect to one system or to an entire software ecosystem.	\N	\N	T. Dal Sassc and M. Lanza	Software Visualization (VISSOFT), 2013 First IEEE Working Conference on	\N	\N	\N	10.1109/VISSOFT.2013.6650542	\N	\N	\N	\N	\N	\N	\N	\N	program debugging;software maintenance;tracking;Web-based visual analytics platform;bug reports;bug tracking systems;in*Bug;nontrivial software system evolution;software ecosystem;Computer bugs;Data visualization;Ecosystems;Joining processes;Software;Visual analytics	\N	\N	Sept	\N	\N	\N	1-4	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	A closer look at bugs	\N	\N	\N	2013	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Sassc2013
163	00000486	1	9	Sasso:2014:MSD:2705615.2706091	\N	Washington, DC, USA	\N	Sasso, Tommaso Dal	Proceedings of the 2014 IEEE International Conference on Software Maintenance and Evolution	\N	\N	\N	10.1109/ICSME.2014.124	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	669--	\N	\N	\N	\N	IEEE Computer Society	\N	\N	\N	\N	\N	ICSME '14	Managing Software Defects	\N	http://dx.doi.org/10.1109/ICSME.2014.124	\N	2014	\N	\N	\N	\N	\N	\N	\N	Sasso:2014:MSD:2705615.2706091
164	00000487	1	9	Sasso2014	Bug tracking systems are used to track and store the defects reported during the life of software projects. The underlying repositories represent a valuable source of information used for example for defect prediction and program comprehension. However, bug tracking systems present the actual bugs essentially in textual form, which is not only cumbersome to navigate, but also hinders the understanding of the intricate pieces of information that revolve around software bugs. We present in*Bug, a web-based visual analytics platform to navigate and inspect bug repositories. in*Bug provides several interactive views to understand detailed information about the bugs and the people that report them. The tool can be downloaded at http://inbug.inf.usi.ch	\N	\N	T. Dal Sasso and M. Lanza	Software Maintenance, Reengineering and Reverse Engineering (CSMR-WCRE), 2014 Software Evolution Week - IEEE Conference on	\N	\N	\N	10.1109/CSMR-WCRE.2014.6747208	\N	\N	\N	\N	\N	\N	\N	\N	data visualisation;information storage;program debugging;software tools;Web-based visual analytics platform;bug repositories;bug tracking systems;defect prediction;in*Bug;information repositories;program comprehension;software bugs;software projects;Complexity theory;Computer bugs;Data visualization;Navigation;Software;Visual analytics	\N	\N	Feb	\N	\N	\N	415-419	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	In * bug: Visual analytics of bug repositories	\N	\N	\N	2014	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Sasso2014
165	00000488	1	1	Serrano2005	Bug-tracking helps the software developers in knowing what the error is, resolving it, and learning from it. Working on a software project includes managing the bugs we find. At first, we might list them on a spreadsheet. But when the number of bugs becomes too large and a lot of people must access and input data on them, we have to give up the spreadsheet and instead use a bug- or issue-tracking system. Many software projects reach this point, especially during testing and deployment when users tend to find an application's bugs. Nowadays we can choose among dozens of bug-tracking systems. This paper looks at two specific open source products and provides useful hints for working with any bug-tracking tool.	\N	\N	N. Serrano and I. Ciordia	\N	\N	\N	\N	10.1109/MS.2005.32	\N	\N	\N	\N	\N	\N	IEEE Software	\N	program debugging;program diagnostics;program testing;public domain software;software tools;bug-tracking system;bug-tracking tool;open source product;program debugging;program diagnostics;program testing;Application software;Computer bugs;Control systems;Filters;Information systems;Linux;NASA;Open source software;Software tools;Spatial databases;bug database;bug tracker;issues database	\N	\N	March	\N	2	\N	11-13	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Bugzilla, ITracker, and other bug trackers	\N	\N	22	2005	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Serrano2005
166	00000490	1	9	Shokripour2012	The number of reported bugs in large open source projects is high and triaging these bugs is an important issue in software maintenance. As a step in the bug triaging process, assigning a new bug to the most appropriate developer to fix it, is not only a time-consuming and tedious task. The triager, the person who considers a bug and assigns it to a developer, also needs to be aware of developer activities at different parts of the project. It is clear that only a few developers have this ability to carry out this step of bug triaging. The main goal of this paper is to suggest a new approach to the process of performing automatic bug assignment. The information needed to select the best developers to fix a new bug report is extracted from the version control repository of the project. Unlike all the previous suggested approaches which used Machine Learning and Information Retrieval methods, this research employs the Information Extraction (IE) methods to extract the information from the software repositories. The proposed approach does not use the information of the bug repository to make decisions about bugs in order to obtain better results on projects which do not have many fixed bugs. The aim of this research is to recommend the actual fixers of the bugs. Using this approach, we achieved 62%, 43% and 41% accuracies on Eclipse, Mozilla and Gnome projects, respectively.	\N	\N	R. Shokripour and Z. M. Kasirun and S. Zamani and J. Anvik	Advanced Computer Science Applications and Technologies (ACSAT), 2012 International Conference on	\N	\N	\N	10.1109/ACSAT.2012.56	\N	\N	\N	\N	\N	\N	\N	\N	information retrieval;program debugging;public domain software;software maintenance;Eclipse projects;Gnome projects;IE methods;Mozilla projects;automatic bug assignment;bug repository;bug triaging process;developer activity;fixed bugs;information extraction methods;information retrieval methods;machine learning;open source projects;reported bugs;software maintenance;software repository;tedious task;time-consuming task;version control repository;Bug Assignment;File Activity Histories;Information Extraction;Named Entity Recognition	\N	\N	Nov	\N	\N	\N	144-149	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Automatic Bug Assignment Using Information Extraction Methods	\N	\N	\N	2012	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Shokripour2012
167	00000491	1	1	Singh2011	Tracking of a reported bug for fixing is a fascinating area of research in software engineering. Many open source, free and commercial bug tracking tools have been developed and are currently under development. The industry needs criteria to select the best tool among the available set of tools that will help in fixing and tracking the progress of bug fixes. In this paper, we use BugZilla, Jira, Trac, Mantis, BugTracker.Net, Gnats and Fossil for comparative study. We present a comprehensive classification criteria to review the available tools and propose a new tool named Bug Tracking and Reliability Assessment System (BTRAS) for the bug tracking/reporting and reliability assessment. BTRAS helps in reporting the bug, assigning the bug to the developer for fixing, monitoring the progress of bug fixing by various graphical/charting facility and status updates, providing reliability bug prediction and bug complexity measurements, and distributing fixes to users/developers.	\N	\N	Singh, V.B.a and Chaturvedi, K.K.b 	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	International Journal of Software Engineering and its Applications	\N	\N	\N	\N	\N	cited By 3	4	\N	17-30	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Bug tracking and reliability assessment system (BTRAS)	\N	https://www.scopus.com/inward/record.uri?eid=2-s2.0-84859810820&partnerID=40&md5=9dad3d0476ada67a76c7a7782b694c1a	5	2011	\N	\N	\N	2016.06.08	dissertacao	\N	[dissertacao:]	Singh2011
168	00000492	1	9	Singh2010	This, paper presents (i) several software reliability, growth models (SRGM) which tries to predict, quantitatively the failure, phenomena, in, an, Open, Source, Software, project over a period of time. Here, it is assumed that the number of failures during testing is dependent upon the number of instructions execution, (ii) in order to cater the, irregular state, of, bug-report, phenomena, on, the, bug tracking system and irregular fluctuation in terms of noise, the reliability models have been proposed by applying an Itô type Stochastic Differential Equations (SDE). We have demonstrated that proposed models can support management in building reliable software systems by predicting remaining bugs. We have also compared our proposed models with several existing models on the basis of different comparison criteria.	\N	\N	V. B. Singh and P. K. Kapur and A. Tandon	Software Engineering (WCSE), 2010 Second World Congress on	\N	\N	\N	10.1109/WCSE.2010.149	\N	\N	\N	\N	\N	\N	\N	\N	differential equations;public domain software;software reliability;bug report phenomena;open source software;software reliability growth model;software system;stochastic differential equation;support management;Data models;Mathematical model;Software;Software reliability;Stochastic processes;Testing	\N	\N	Dec	\N	\N	\N	115-118	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Measuring Reliability Growth of Open Source Software by Applying Stochastic Differential Equations	\N	\N	2	2010	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Singh2010
169	00000493	1	9	Somasundaram:2012:ACB:2134254.2134276	\N	New York, NY, USA	\N	Somasundaram, Kalyanasundaram and Murphy, Gail C.	Proceedings of the 5th India Software Engineering Conference	\N	\N	\N	10.1145/2134254.2134276	\N	\N	\N	\N	\N	\N	\N	\N	component recommendation, recommendation system, software bug triage	\N	Kanpur, India	\N	\N	\N	\N	125--130	\N	\N	\N	\N	ACM	\N	\N	\N	\N	\N	ISEC '12	Automatic Categorization of Bug Reports Using Latent Dirichlet Allocation	\N	http://doi.acm.org/10.1145/2134254.2134276	\N	2012	\N	\N	\N	\N	\N	\N	\N	Somasundaram:2012:ACB:2134254.2134276
170	00000497	1	4	Song2010a	Both developers and users submit bug reports to a bug repository. These reports can help reveal defects and improve software quality. As the number of bug reports in a bug repository increases, the number of the potential duplicate bug reports increases. Detecting duplicate bug reports helps reduce development efforts in fixing defects. However, it is challenging to manually detect all potential duplicates because of the large number of existing bug reports. This paper presents JDF (representing Jazz Duplicate Finder), a tool that helps users to find potential duplicates of bug reports on Jazz, which is a team collaboration platform for software development and process management. JDF finds potential duplicates for a given bug report using natural language and execution information. © 2010 ACM.	\N	\N	Song, Y.a and Wang, X.b c and Xie, T.a and Zhang, L.b c and Mei, H.b c 	\N	\N	\N	\N	10.1145/1810295.1810368	\N	\N	\N	\N	\N	\N	Proceedings - International Conference on Software Engineering	\N	\N	\N	\N	\N	cited By 3	\N	\N	315-316	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	JDF: Detecting duplicate bug reports in Jazz	\N	https://www.scopus.com/inward/record.uri?eid=2-s2.0-77954739345&partnerID=40&md5=2f9daab38496dfe301765ef9af67519d	2	2010	\N	\N	\N	2016.06.08	dissertacao	\N	[dissertacao:]	Song2010a
193	00000525	1	4	Vahabzadeh2015	Testing aims at detecting (regression) bugs in production code. However, testing code is just as likely to contain bugs as the code it tests. Buggy test cases can silently miss bugs in the production code or loudly ring false alarms when the production code is correct. We present the first empirical study of bugs in test code to characterize their prevalence and root cause categories. We mine the bug repositories and version control systems of 211 Apache Software Foundation (ASF) projects and find 5,556 test-related bug reports. We (1) compare properties of test bugs with production bugs, such as active time and fixing effort needed, and (2) qualitatively study 443 randomly sampled test bug reports in detail and categorize them based on their impact and root causes. Our results show that (1) around half of all the projects had bugs in their test code; (2) the majority of test bugs are false alarms, i.e., test fails while the production code is correct, while a minority of these bugs result in silent horrors, i.e., test passes while the production code is incorrect; (3) incorrect and missing assertions are the dominant root cause of silent horror bugs; (4) semantic (25%), flaky (21%), environment-related (18%) bugs are the dominant root cause categories of false alarms; (5) the majority of false alarm bugs happen in the exercise portion of the tests, and (6) developers contribute more actively to fixing test bugs and test bugs are fixed sooner compared to production bugs. In addition, we evaluate whether existing bug detection tools can detect bugs in test code. © 2015 IEEE.	\N	\N	Vahabzadeh, A. and Fard, A.M. and Mesbah, A.	\N	\N	\N	\N	10.1109/ICSM.2015.7332456	\N	\N	\N	\N	\N	\N	2015 IEEE 31st International Conference on Software Maintenance and Evolution, ICSME 2015 - Proceedings	\N	\N	\N	\N	\N	cited By 0	\N	\N	101-110	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	An empirical study of bugs in test code	\N	https://www.scopus.com/inward/record.uri?eid=2-s2.0-84961640892&partnerID=40&md5=dc9efaadb82d1e47ca337178cf645f6c	\N	2015	\N	\N	\N	2016.06.08	dissertacao	\N	[dissertacao:]	Vahabzadeh2015
171	00000498	1	9	Squire2014	Software forges are centralized online systems that provide useful tools to help distributed development teams work together, especially in free, libre, and open source software (FLOSS). Forge-provided tools may include web space, version control systems, mailing lists and communication forums, bug tracking systems, file downloads, wikis, and the like. Empirical software engineering researchers can mine the artifacts from these tools to better understand how FLOSS is made. As the landscape of distributed software development has grown and changed, the tools needed to make FLOSS have changed as well. There are three newer tools at the center of FLOSS development today: distributed version control based forges (like Github), programmer question-and-answer communities (like Stack Overflow), and paste bin tools (like Gist or Pastebin.com). These tools are extending and changing the toolset used for FLOSS development, and redefining what a software forge looks like. The main contributions of this paper are to describe each of these tools, to identify the data and artifacts available for mining from these tools, and to outline some of the ways researchers can use these artifacts to continue to understand how FLOSS is made.	\N	\N	M. Squire	2014 47th Hawaii International Conference on System Sciences	\N	\N	\N	10.1109/HICSS.2014.405	\N	\N	\N	\N	\N	\N	\N	\N	Internet;data mining;distributed processing;public domain software;software engineering;software tools;team working;FLOSS development;Forge++;Gist;Github;Pastebin.com;Stack Overflow;centralized online systems;data mining;distributed development teams;distributed software development;distributed version control based forges;free-libre-open source software;pastebin tools;programmer question-and-answer communities;software forges;Communities;Computer languages;Control systems;Data mining;Google;Licenses;Software;forges;github;open source software;pastebin;repositories;software development;stack overflow	\N	\N	Jan	\N	\N	\N	3266-3275	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Forge++: The Changing Landscape of FLOSS Development	\N	\N	\N	2014	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Squire2014
172	00000499	1	9	Stepalin2010	In recent days more and more software developments tools become distributed by the SaaS (Software-As-A Service) model alongside with ready-to-install products. The developers of task and bug tracking systems now offer their solutions by a monthly fee. For instance, JIRA Studio produced by Atlassian can be connected to a corporative domain by subscription. This scheme allows software companies to reduce costs at the project's start and get scalable resources in future. Software documentation systems can also be purchased by a subscription now. The effectiveness of their usage for various documentation development is interesting. There are four major types of documentation supporting the development process and resulted products: project, technical, code and user documentation. Each of this type claims specific requirements for the documentation tool. The requirement analysis shows that rented documentation systems are the most appropriate for user and technical documentation. There are two major classes of software documentation systems: 1) Wiki, 2) DITA-orientedXML CMS. The following wiki systems have a hosted version: commercial Confluence, Central Desktop, EditMe, Incentive, Netcipia, PBWiki, Wikia, Wikispaces; open source BusinessWiki, Metadot Wiki, MindTouch, Wagn, Wikidot. The richest by the functionality andplugin collection is Confluence produced by Atlassian. The following XML CMS are offered by a SaaS model (all are commercial): Astoria On Demand, DITA Exchange. DocZone. SaaS is optionally supported in Bluestream XDocs, Siberlogic SiberSafe, Trisoft Infoshare, Vasont, X-Hive Docato. As wiki system is a ready integrated environment for creating and publishing documentation, DITA-system consists not only of XML CMS. To deploy a DITA-system, you should have an XML editor, publisher and CMS. The listed CMS can be integrated with top DITA XML editors and provide an API to integrate with other editors. These CMS also have build-in tools to export documents in mu- - ltiple formats. However, the universal component architecture of DITA-systems makes the deployment and configuration more difficult than wiki implementation. Hosted documentation systems are offered by different prices. The offerings of top documentation systems are considered in this paper. Wiki subscription fees range from 4,95$ (EditMe) to 20$ (Confluence) per one user/month. XML CMS subscription price starts from 500$ per month and can reach 12000$ per month. These subscriptions have no fixed price; in each individual case the CMS vendor performs a specific project of a DITA-system implementation. Wiki rental costs approximate to CMS subscriptions' costs for large number of users, 500 and more. The advantages of renting a powerful documentation system for small and large project are the following: 1) Maximal functionality at a low affordable cost, 2) Platform independency and high system accessibility, 3) Document quality improvement at the expense of quality controlling tools application, 4) Higher effectiveness of documentation (content re-use, single source usage, automated tools for localization), 5) Organization of robust and scalable documentation process. As the SaaS business model becomes more popular, small companies get access to powerful software documentation systems, which are too expensive to purchase a standalone license at the startup. However, the system's access security, reliability and information confidentiality issues remain opened and controversial.	\N	\N	E. Stepalina	Software Engineering Conference (CEE-SECR), 2010 6th Central and Eastern European	\N	\N	\N	10.1109/CEE-SECR.2010.5783175	\N	\N	\N	\N	\N	\N	\N	\N	Web sites;XML;cloud computing;document handling;software engineering;systems analysis;τasont;Astoria On Demand;Atlassian;Bluestream XDocs;Central Desktop;Confluence;DITA Exchange;DITA-orientedXML CMS;DocZone;EditMe;Incentive;JIRA Studio;Metadot Wiki;MindTouch;Netcipia;PBWiki;SaaS business model;SaaS support;Siberlogic SiberSafe;Trisoft Infoshare;Wagn;Wikia;Wikidot;Wikispaces;X-Hive Docato;bug tracking systems;documentation publishing;open source BusinessWiki;quality controlling tools application;ready-to-install products;requirement analysis;software companies;software developments tools;software documentation systems;task tracking systems;Documentation;Electronic publishing;Google;Information services;Internet;Subscriptions;XML;SaaS;Software documentation;XML CMS;wiki	\N	\N	Oct	\N	\N	\N	192-197	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	SaaS support in software documentation systems	\N	\N	\N	2010	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Stepalin2010
173	00000500	1	9	Sun2011	In a bug tracking system, different testers or users may submit multiple reports on the same bugs, referred to as duplicates, which may cost extra maintenance efforts in triaging and fixing bugs. In order to identify such duplicates accurately, in this paper we propose a retrieval function (REP) to measure the similarity between two bug reports. It fully utilizes the information available in a bug report including not only the similarity of textual content in summary and description fields, but also similarity of non-textual fields such as product, component, version, etc. For more accurate measurement of textual similarity, we extend BM25F - an effective similarity formula in information retrieval community, specially for duplicate report retrieval. Lastly we use a two-round stochastic gradient descent to automatically optimize REP for specific bug repositories in a supervised learning manner. We have validated our technique on three large software bug repositories from Mozilla, Eclipse and OpenOffice. The experiments show 10-27% relative improvement in recall rate@k and 17-23% relative improvement in mean average precision over our previous model. We also applied our technique to a very large dataset consisting of 209,058 reports from Eclipse, resulting in a recall rate@k of 37-71% and mean average precision of 47%.	\N	\N	C. Sun and D. Lo and S. C. Khoo and J. Jiang	Automated Software Engineering (ASE), 2011 26th IEEE/ACM International Conference on	\N	\N	\N	10.1109/ASE.2011.6100061	\N	\N	\N	\N	\N	\N	\N	\N	gradient methods;information retrieval;learning (artificial intelligence);program debugging;BM25F;REP;bug tracking system;duplicate bug reports;duplicate report retrieval;information retrieval community;retrieval function;software bug repositories;supervised learning;textual similarity;two-round stochastic gradient descent;Accuracy;Computer bugs;Information retrieval;Software;Support vector machines;Training;Tuning	\N	\N	Nov	\N	\N	\N	253-262	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Towards more accurate retrieval of duplicate bug reports	\N	\N	\N	2011	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Sun2011
174	00000502	1	9	Sun:2010:DMA:1806799.1806811	\N	New York, NY, USA	\N	Sun, Chengnian and Lo, David and Wang, Xiaoyin and Jiang, Jing and Khoo, Siau-Cheng	Proceedings of the 32Nd ACM/IEEE International Conference on Software Engineering - Volume 1	\N	\N	\N	10.1145/1806799.1806811	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Cape Town, South Africa	\N	\N	\N	\N	45--54	\N	\N	\N	\N	ACM	\N	\N	\N	\N	\N	ICSE '10	A Discriminative Model Approach for Accurate Duplicate Bug Report Retrieval	\N	http://doi.acm.org/10.1145/1806799.1806811	\N	2010	\N	\N	\N	\N	\N	\N	\N	Sun:2010:DMA:1806799.1806811
175	00000503	1	9	Takama2013	This paper proposes to apply information visualization technologies to the support of monitoring bug update information sent from multiple bug tracking systems. Bug update information managed by bug tracking systems (BTS) is one of text stream data, which continuously generates new data. Therefore, it is difficult for users to watch it all the time. In other words, the task of monitoring stream data inevitably involves breaks of the task, which would lose the context of monitoring. However, to the best of our knowledge, interaction design when involving breaks has not been fully studied yet. The proposed system visualizes the dynamic relationship between bugs with animation, and helps a user grasping the context of monitoring by highlighting updated bugs and the replay of animation for part of the last monitoring time. The effectiveness of the system is evaluated through experiments with test participants. Recent growth of the Web has brought us various kinds of text stream data, such as bulletin board systems (BBS), blogs, and social networking services (SNS). As such data is expected to be important resources for human support robots, this paper would contribute to interaction design of such robots.	\N	\N	Y. Takama and T. Kurosawa	Industrial Electronics (ISIE), 2013 IEEE International Symposium on	\N	\N	\N	10.1109/ISIE.2013.6563851	\N	\N	\N	\N	\N	\N	\N	\N	Animation;Computer bugs;Context;Data visualization;Monitoring;Software;Visualization;bug tracking system;information visualization;monitoring support;stream data visualization	\N	\N	May	\N	\N	\N	1-5	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Application of monitoring support visualization to bug tracking systems	\N	\N	\N	2013	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Takama2013
176	00000504	1	9	Tamura2008	Open source software which serve as key components of critical infrastructures in the social life are still ever-expanding now. We focus on the quality problems of open source software developed under open source project. In case of considering the effect of the debugging process in the development of a method of reliability assessment for open source project, it is necessary to grasp the deeply-intertwined factors, such as programming path, size of each component, skill of fault reporters, and so on. Considering from a point of view of the software reliability growth model, it is difficult to cover the software fault-report phenomena on the bug tracking system of open source software. We propose a new approach to software reliability assessment based on deterministic chaos theory. Also, we analyze actual software fault count data to show numerical examples of software reliability assessment for the open source software.	\N	\N	Y. Tamura and S. Yamada	Secure System Integration and Reliability Improvement, 2008. SSIRI '08. Second International Conference on	\N	\N	\N	10.1109/SSIRI.2008.14	\N	\N	\N	\N	\N	\N	\N	\N	chaos;public domain software;software engineering;software reliability;bug tracking system;debugging process;deterministic chaos theory;open source software;software reliability assessment;Chaos;Debugging;Fault detection;Linux;Open source software;Programming;Quality management;Reliability engineering;Reliability theory;Software reliability;Deterministic chaos theory;Open source software;Reliability	\N	\N	July	\N	\N	\N	60-66	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	A Method of Reliability Assessment Based on Deterministic Chaos Theory for an Open Source Software	\N	\N	\N	2008	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Tamura2008
177	00000505	1	9	Tamura2007	All over the world people can gain the information at the same time by growing rate of Internet access around the world in recent years. In accordance with such a penetration of the Internet, it is increasing public awareness of the importance of online real-time and interactive functions. Therefore, software development environment has been changing into new development paradigms such as concurrent distributed development environment and the so-called open source project by using network computing technologies. Especially, such OSS (open source software) systems which serve as key components of critical infrastructures in our society are still ever-expanding now. In this paper, we propose a software reliability growth model based on stochastic differential equations in order to consider the active state of the open source project. Especially, we assume that the software failure intensity depends on the time, and the software fault-report phenomena on the bug tracking system keep an irregular state. Also, we analyze actual software fault count data to show numerical examples of software reliability assessment for the OSS. Moreover, we compare our model with the conventional model based on stochastic differential equations in terms of goodness-of-fit for actual data. We show that the proposed model can assist improvement of quality for OSS systems developed under the open source project.	\N	\N	Y. Tamura and S. Yamada	2007 IEEE International Conference on Mechatronics	\N	\N	\N	10.1109/ICMECH.2007.4279994	\N	\N	\N	\N	\N	\N	\N	\N	differential equations;public domain software;software fault tolerance;software reliability;stochastic processes;network computing technology;open source software;software development environment;software fault-report phenomena;software reliability growth model;stochastic differential equation;Computer network reliability;Computer networks;Computer science;Differential equations;Internet;Mechatronics;Open source software;Programming;Software reliability;Stochastic processes;Open source software;reliability assessment;software reliability growth model;stochastic differential equation	\N	\N	May	\N	\N	\N	1-6	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Software Reliability Growth Model Based on Stochastic Differential Equations for Open Source Software	\N	\N	\N	2007	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Tamura2007
179	00000507	1	1	Tappolet2010	One of the most important decisions researchers face when analyzing software systems is the choice of a proper data analysis/exchange format. In this paper, we present EvoOnt, a set of software ontologies and data exchange formats based on OWL. EvoOnt models software design, release history information, and bug-tracking meta-data. Since OWL describes the semantics of the data, EvoOnt (1) is easily extendible, (2) can be processed with many existing tools, and (3) allows to derive assertions through its inherent Description Logic reasoning capabilities. The contribution of this paper is that it introduces a novel software evolution ontology that vastly simplifies typical software evolution analysis tasks. In detail, we show the usefulness of EvoOnt by repeating selected software evolution and analysis experiments from the 2004-2007 Mining Software Repositories Workshops (MSR). We demonstrate that if the data used for analysis were available in EvoOnt then the analyses in 75% of the papers at MSR could be reduced to one or at most two simple queries within off-the-shelf SPARQL tools. In addition, we present how the inherent capabilities of the Semantic Web have the potential of enabling new tasks that have not yet been addressed by software evolution researchers, e.g., due to the complexities of the data integration. © 2010 Elsevier B.V.	\N	\N	Tappolet, J. and Kiefer, C. and Bernstein, A.	\N	\N	\N	\N	10.1016/j.websem.2010.04.009	\N	\N	\N	\N	\N	\N	Journal of Web Semantics	\N	\N	\N	\N	\N	cited By 12	2-3	\N	225-240	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Semantic web enabled software analysis	\N	https://www.scopus.com/inward/record.uri?eid=2-s2.0-77955230399&partnerID=40&md5=b93313ee75158ed39f6354a2a0a3efe2	8	2010	\N	\N	\N	2016.06.08	dissertacao	\N	[dissertacao:]	Tappolet2010
180	00000508	1	4	Thung2014	To track bugs that appear in a software, developers often make use of a bug tracking system. Users can report bugs that they encounter in such a system. Bug reporting is inherently an uncoordinated distributed process though and thus when a user submits a new bug report, there might be cases when another bug report describing exactly the same problem is already present in the system. Such bug reports are duplicate of each other and these duplicate bug reports need to be identified. A number of past studies have proposed a number of automated approaches to detect duplicate bug reports. However, these approaches are not integrated to existing bug tracking systems. In this paper, we propose a tool named DupFinder, which implements the state-of-theart unsupervised duplicate bug report approach by Runeson et al., as a Bugzilla extension. DupFinder does not require any training data and thus can easily be deployed to any project. DupFinder extracts texts from summary and description fields of a new bug report and recent bug reports present in a bug tracking system, uses vector space model to measure similarity of bug reports, and provides developers with a list of potential duplicate bug reports based on the similarity of these reports with the new bug report. We have released DupFinder as an open source tool in GitHub, which is available at: uhttps://github.com/smagsmu/dupfinder. © 2014 ACM.	\N	\N	Thung, F. and Kochhar, P.S. and Lo, D.	\N	\N	\N	\N	10.1145/2642937.2648627	\N	\N	\N	\N	\N	\N	ASE 2014 - Proceedings of the 29th ACM/IEEE International Conference on Automated Software Engineering	\N	\N	\N	\N	\N	cited By 0	\N	\N	871-874	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	DupFinder: Integrated tool support for duplicate bug report detection	\N	https://www.scopus.com/inward/record.uri?eid=2-s2.0-84908618742&partnerID=40&md5=e5a6bc1465b1ae05c0f10dec9c6ae212	\N	2014	\N	\N	\N	2016.06.08	dissertacao	\N	[dissertacao:]	Thung2014
183	00000512	1	9	Thung2013	What is the root cause of this failure? This question is often among the first few asked by software debuggers when they try to address issues raised by a bug report. Root cause is the erroneous lines of code that cause a chain of erroneous program states eventually leading to the failure. Bug tracking and source control systems only record the symptoms (e.g., bug reports) and treatments of a bug (e.g., committed changes that fix the bug), but not its root cause. Many treatments contain non-essential changes, which are intermingled with root causes. Reverse engineering the root cause of a bug can help to understand why the bug is introduced and help to detect and prevent other bugs of similar causes. The recovered root causes are also better ground truth for bug detection and localization studies. In this work, we propose a combination of machine learning and code analysis techniques to identify root causes from the changes made to fix bugs. We evaluate the effectiveness of our approach based on a golden set (i.e., ground truth data) of manually recovered root causes of 200 bug reports from three open source projects. Our approach is able to achieve a precision, recall, and F-measure (i.e., the harmonic mean of precision and recall) of 76.42%, 71.88%, and 74.08% respectively. Compared with the work by Kawrykow and Robillard, our approach achieves a 60.83% improvement in F-measure.	\N	\N	F. Thung and D. Lo and L. Jiang	2013 20th Working Conference on Reverse Engineering (WCRE)	\N	\N	\N	10.1109/WCRE.2013.6671284	\N	\N	\N	\N	\N	\N	\N	\N	learning (artificial intelligence);program debugging;program diagnostics;reverse engineering;F-measure;automatic root cause recovery;bug detection;bug localization;bug reports;bug-fixing changes;code analysis techniques;machine learning;open source projects;reverse engineering;Computer bugs;Context;Control systems;Data models;Feature extraction;Support vector machines;Training data	\N	\N	Oct	\N	\N	\N	92-101	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Automatic recovery of root causes from bug-fixing changes	\N	\N	\N	2013	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Thung2013
184	00000513	1	9	Thung2012	Not all bugs in software would be experienced and reported by end users right away: Some bugs manifest themselves quickly and may be reported by users a few days after they get into the code base; others manifest many months or even years later, and may only be experienced and reported by a small number of users. We refer to the period of time between the time when a bug is introduced into code and the time when it is reported by a user as bug reporting latency. Knowledge of bug reporting latencies has an implication on prioritization of bug fixing activities-bugs with low reporting latencies may be fixed earlier than those with high latencies to shift debugging resources towards bugs highly concerning users. To investigate bug reporting latencies, we analyze bugs from three Java software systems: AspectJ, Rhino, and Lucene. We extract bug reporting data from their version control repositories and bug tracking systems, identify bug locations based on bug fixes, and back-trace bug introducing time based on change histories of the buggy code. Also, we remove non-essential changes, and most importantly, recover root causes of bugs from their treatments/fixes. We then calculate the bug reporting latencies, and find that bugs have diverse reporting latencies. Based on the calculated reporting latencies and features we extract from bugs, we build classification models that can predict whether a bug would be reported early (within 30 days) or later, which may be helpful for prioritizing bug fixing activities. Our evaluation on the three software systems shows that our bug reporting latency prediction models could achieve an AUC (Area Under the Receiving Operating Characteristics Curve) of 70.869%.	\N	\N	F. Thung and D. Lo and L. Jiang and Lucia and F. Rahman and P. T. Devanbu	Software Maintenance (ICSM), 2012 28th IEEE International Conference on	\N	\N	\N	10.1109/ICSM.2012.6405302	\N	\N	\N	\N	\N	\N	\N	\N	Java;aspect-oriented programming;pattern classification;program debugging;AUC;AspectJ;Java software systems;Lucene;Rhino;area under-the-receiving operating characteristics curve;back-trace bug;bug fixing activities;bug location identification;bug reporting data extraction;bug reporting latency prediction models;bug tracking systems;classification models;debugging resources;software bugs;software systems;version control repositories;Computer bugs;Conferences;Databases;Feature extraction;Java;Predictive models;Software systems	\N	\N	Sept	\N	\N	\N	420-429	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	When would this bug get reported?	\N	\N	\N	2012	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Thung2012
185	00000514	1	9	Tian:2013:DPP:2550526.2550574	\N	Washington, DC, USA	\N	Tian, Yuan and Lo, David and Sun, Chengnian	Proceedings of the 2013 IEEE International Conference on Software Maintenance	\N	\N	\N	10.1109/ICSM.2013.31	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	200--209	\N	\N	\N	\N	IEEE Computer Society	\N	\N	\N	\N	\N	ICSM '13	DRONE: Predicting Priority of Reported Bugs by Multi-factor Analysis	\N	http://dx.doi.org/10.1109/ICSM.2013.31	\N	2013	\N	\N	\N	\N	\N	\N	\N	Tian:2013:DPP:2550526.2550574
186	00000515	1	1	Tian:2015:APB:2821954.2821959	\N	Hingham, MA, USA	\N	Tian, Yuan and Lo, David and Xia, Xin and Sun, Chengnian	\N	\N	\N	\N	10.1007/s10664-014-9331-y	\N	\N	\N	\N	\N	\N	Empirical Softw. Engg.	\N	Bug report management, Multi-factor analysis, Priority prediction	\N	\N	#oct#	\N	5	\N	1354--1383	\N	\N	\N	\N	Kluwer Academic Publishers	\N	\N	\N	\N	\N	\N	Automated Prediction of Bug Report Priority Using Multi-factor Analysis	\N	http://dx.doi.org/10.1007/s10664-014-9331-y	20	2015	\N	\N	\N	\N	\N	\N	\N	Tian:2015:APB:2821954.2821959
187	00000517	1	4	Tian2012	Bugs are prevalent in software systems. To improve the reliability of software systems, developers often allow end users to provide feedback on bugs that they encounter. Users could perform this by sending a bug report in a bug report management system like Bugzilla. This process however is uncoordinated and distributed, which means that many users could submit bug reports reporting the same problem. These are referred to as duplicate bug reports. The existence of many duplicate bug reports may cause much unnecessary manual efforts as often a triager would need to manually tag bug reports as being duplicates. Recently, there have been a number of studies that investigate duplicate bug report problem which in effect answer the following question: given a new bug report, retrieve k other similar bug reports. This, however, still requires substantive manual effort which could be reduced further. Jalbert and Weimer are the first to introduce the direct detection of duplicate bug reports; it answers the question: given a new bug report, classify if it as a duplicate bug report or not. In this paper, we extend Jalbert and Weimer's work by improving the accuracy of automated duplicate bug report identification. We experiments with bug reports from Mozilla bug tracking system which were reported between February 2005 to October 2005, and find that we could improve the accuracy of the previous approach by about 160%. © 2012 IEEE.	\N	\N	Tian, Y.a and Sun, C.b and Lo, D.a 	\N	\N	\N	\N	10.1109/CSMR.2012.48	\N	\N	\N	\N	\N	\N	Proceedings of the European Conference on Software Maintenance and Reengineering, CSMR	\N	\N	\N	\N	\N	cited By 22	\N	\N	385-390	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Improved duplicate bug report identification	\N	https://www.scopus.com/inward/record.uri?eid=2-s2.0-84860522295&partnerID=40&md5=4c519ee7a6e662e0364258aedcad5260	\N	2012	\N	\N	\N	2016.06.08	dissertacao	\N	[dissertacao:]	Tian2012
195	00000527	1	9	ValdiviaGarcia:2014:CPB:2597073.2597099	\N	New York, NY, USA	\N	Valdivia Garcia, Harold and Shihab, Emad	Proceedings of the 11th Working Conference on Mining Software Repositories	\N	\N	\N	10.1145/2597073.2597099	\N	\N	\N	\N	\N	\N	\N	\N	Code Metrics, Post-release Defects, Process Metrics	\N	Hyderabad, India	\N	\N	\N	\N	72--81	\N	\N	\N	\N	ACM	\N	\N	\N	\N	\N	MSR 2014	Characterizing and Predicting Blocking Bugs in Open Source Projects	\N	http://doi.acm.org/10.1145/2597073.2597099	\N	2014	\N	\N	\N	\N	\N	\N	\N	ValdiviaGarcia:2014:CPB:2597073.2597099
189	00000519	1	9	Tomasev2013	Bug duplicate detection is an integral part of many bug tracking systems. Most bugs are reported multiple times and detecting the duplicates saves time and valuable resources. We propose a novel approach to potential duplicate report query ranking. Our secondary re-ranking procedure is self-adaptive, as it learns from previous report occurrences. It is based on the analysis of temporal evolution of the underlying distribution of influence. The experiments show definite improvements in system performance.	\N	\N	N. Tomašev and G. Leban and D. Mladenić	Information Technology Interfaces (ITI), Proceedings of the ITI 2013 35th International Conference on	\N	\N	\N	10.2498/iti.2013.0488	\N	\N	\N	\N	\N	\N	\N	\N	program debugging;query processing;software maintenance;bug report duplicate detection;bug tracking system;hub exploitation;potential duplicate report query ranking;self-adaptive secondary re-ranking;system performance;temporal evolution analysis;Adaptive systems;Computer bugs;Context;Feature extraction;IEEE Potentials;Internet;Vectors;Bug duplicates;hubs;issue tracking;ranking	\N	\N	June	\N	\N	\N	131-136	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Exploiting hubs for self-adaptive secondary re-ranking in bug report duplicate detection	\N	\N	\N	2013	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Tomasev2013
190	00000521	1	9	Tong2015	Open source software is becoming increasingly important in cloud computing. However, many cloud computing systems suffer from software bugs that cause significant dependability issues. Bug assignment and fixing are crucial parts of software maintenance to improve dependability. In this paper, we conduct an empirical study of 42,880 bug reports from OpenStack bug repository. We study the characteristics (e.g., distribution of bugs, distribution of assignees) of bug assignments in OpenStack and find the bug assignment pattern which we call as long tail. The findings can support the follow-up research on improving efficiency of bug assignment, that is, we propose a prediction method based on long tail model, and experimentally evaluate this method by applying it to OpenStack bug assignment.	\N	\N	J. Tong and L. Ying and Y. Xiaoyong and T. Hongyan and W. Zhonghai	Trustworthy Systems and Their Applications (TSA), 2015 Second International Conference on	\N	\N	\N	10.1109/TSA.2015.14	\N	\N	\N	\N	\N	\N	\N	\N	cloud computing;program debugging;public domain software;software maintenance;OpenStack bug repository;bug assignment characteristics;bug assignment efficiency;bug assignment pattern;bug assignment prediction method;cloud computing systems;long tail model;open source software;software bugs;software dependability;software maintenance;Cloud computing;Computational modeling;Computer bugs;Correlation;Predictive models;bug assignment;cloud computing;long tail;open source	\N	\N	July	\N	\N	\N	16-23	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Characterizing and Predicting Bug Assignment in OpenStack	\N	\N	\N	2015	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Tong2015
191	00000523	1	1	Tran2015	Monitoring events on communication and computing systems becomes more and more challenging due to the increasing complexity and diversity of these systems. Several supporting tools have been created to assist system administrators in monitoring an enormous number of events daily. The main function of these tools is to filter as many as possible events and present non-trivial events to the administrators for fault analysis and detection. However, non-trivial events never decrease on large systems, such as cloud computing systems, while investigating events is time consuming. This paper proposes an approach for evaluating the severity level of an event using a classification and regression decision tree. The approach aims to build a decision tree based on the features of old events, then use this tree to decide the severity level of new events. The administrators take advantages of this decision to determine proper actions for the non-trivial events. We have implemented and experimented the approach for software bug datasets obtained from bug tracking systems. The experimental results reveal that the accuracy scores for different decision trees are above 70% and some detailed analyses are provided. © Springer International Publishing Switzerland 2015.	\N	\N	Tran, H.M. and Nguyen, S.V. and Le, S.T. and Vu, Q.T.	\N	\N	\N	\N	10.1007/978-3-319-26135-5_5	\N	\N	\N	\N	\N	\N	Lecture Notes in Computer Science (including subseries Lecture Notes in Artificial Intelligence and Lecture Notes in Bioinformatics)	\N	\N	\N	\N	\N	cited By 0	\N	\N	57-71	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fault data analytics using decision tree for fault detection	\N	https://www.scopus.com/inward/record.uri?eid=2-s2.0-84951958354&partnerID=40&md5=56a4854532a002cb873039536decb0a4	9446	2015	\N	\N	\N	2016.06.08	dissertacao	\N	[dissertacao:]	Tran2015
192	00000524	1	9	Tu:2014:MQI:2677832.2677844	\N	New York, NY, USA	\N	Tu, Feifei and Zhang, Feixue	Proceedings of the 6th Asia-Pacific Symposium on Internetware on Internetware	\N	\N	\N	10.1145/2677832.2677844	\N	\N	\N	\N	\N	\N	\N	\N	Data Quality, Issue Report, Quality Evaluator	\N	Hong Kong, China	\N	\N	\N	\N	76--79	\N	\N	\N	\N	ACM	\N	\N	\N	\N	\N	INTERNETWARE 2014	Measuring the Quality of Issue Tracking Data	\N	http://doi.acm.org/10.1145/2677832.2677844	\N	2014	\N	\N	\N	\N	\N	\N	\N	Tu:2014:MQI:2677832.2677844
215	00000554	1	9	Zanetti2013	Efficient bug triaging procedures are an important precondition for successful collaborative software engineering projects. Triaging bugs can become a laborious task particularly in open source software (OSS) projects with a large base of comparably inexperienced part-time contributors. In this paper, we propose an efficient and practical method to identify valid bug reports which a) refer to an actual software bug, b) are not duplicates and c) contain enough information to be processed right away. Our classification is based on nine measures to quantify the social embeddedness of bug reporters in the collaboration network. We demonstrate its applicability in a case study, using a comprehensive data set of more than 700, 000 bug reports obtained from the Bugzilla installation of four major OSS communities, for a period of more than ten years. For those projects that exhibit the lowest fraction of valid bug reports, we find that the bug reporters' position in the collaboration network is a strong indicator for the quality of bug reports. Based on this finding, we develop an automated classification scheme that can easily be integrated into bug tracking platforms and analyze its performance in the considered OSS communities. A support vector machine (SVM) to identify valid bug reports based on the nine measures yields a precision of up to 90.3% with an associated recall of 38.9%. With this, we significantly improve the results obtained in previous case studies for an automated early identification of bugs that are eventually fixed. Furthermore, our study highlights the potential of using quantitative measures of social organization in collaborative software engineering. It also opens a broad perspective for the integration of social awareness in the design of support infrastructures.	\N	\N	M. S. Zanetti and I. Scholtes and C. J. Tessone and F. Schweitzer	2013 35th International Conference on Software Engineering (ICSE)	\N	\N	\N	10.1109/ICSE.2013.6606653	\N	\N	\N	\N	\N	\N	\N	\N	groupware;pattern classification;program debugging;project management;public domain software;social networking (online);support vector machines;BUGZILLA installation;OSS communities;SVM;actual software bug;automated classification scheme;bug categorization;bug report quality;bug reporters;bug tracking platforms;bug triaging procedures;collaboration network;collaborative software engineering projects;open source software communities;part-time contributors;social awareness;social embeddedness;social networks;social organization;support vector machine;Collaboration;Communities;Computer bugs;History;Social network services;Software;Support vector machines	\N	\N	May	\N	\N	\N	1032-1041	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Categorizing bugs with social networks: A case study on four open source software communities	\N	\N	\N	2013	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Zanetti2013
196	00000528	1	9	Varvaressos2014	Runtime verification is the process of observing a sequence of events generated by a running system and comparing it to some formal specification for potential violations. We show how the use of a runtime monitor can greatly speed up the testing phase of a video game under development, by automating the detection of bugs when the game is being played. We take advantage of the fact that a video game, contrarily to generic software, follows a special structure that contains a \\"game loop\\", this game loop can be used to centralize the instrumentation and generate events based on the game's internal state. We report on experiments made on a sample of five real-world video games of various genres and sizes, by successfully incrementing and efficiently monitoring various temporal properties over their execution-including actual bugs reported in the games' bug tracking database in the course of their development.	\N	\N	S. Varvaressos and K. Lavoie and A. B. Massé and S. Gaboury and S. Hallé	2014 IEEE Seventh International Conference on Software Testing, Verification and Validation	\N	\N	\N	10.1109/ICST.2014.27	\N	\N	\N	\N	\N	\N	\N	\N	computer games;data flow analysis;formal specification;program debugging;program testing;program verification;automated bug finding;formal specification;runtime monitoring;runtime verification;video game testing phase;video games;Computer bugs;Games;Instruments;Monitoring;Runtime;Software;XML;runtime verification;temporal logic;video games	\N	\N	March	\N	\N	\N	143-152	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Automated Bug Finding in Video Games: A Case Study for Runtime Monitoring	\N	\N	\N	2014	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Varvaressos2014
197	00000530	1	9	Vijayakumar2014	Estimating the effort required to fix a bug is a significant task for the project manager to determine the project release. Among various ways to estimate the effort, analysis of bug report attributes proved excellent results. In this paper the effort required to fix the bug on the components of Firefox application is studied. A framework has been charted for analysing the feature attributes which on imparting association rule mining process resulted with dictating rules which provide the effort succumb to fix the bugs of a particular component. The bug reports used for this study are extracted from Bugzilla, an open source bug repository. These bug reports provides a variety of categorical data from previous projects. Analysis of this can improve the planning of personnel to fix the bug and raise the quality of bug reports.	\N	\N	K. Vijayakumar and V. Bhuvaneswari	Intelligent Computing Applications (ICICA), 2014 International Conference on	\N	\N	\N	10.1109/ICICA.2014.75	\N	\N	\N	\N	\N	\N	\N	\N	data mining;program debugging;public domain software;software development management;Bugzilla;Firefox application;association rule mining process;bug report attributes analysis;data mining approach;dictating rules;effort estimation;feature attributes;open source bug repository;personnel planning;project manager;project release;Association rules;Computer bugs;Estimation;Feature extraction;Software;Software testing;Bugzilla;association rules;bug report;component;data mining;repository;severity	\N	\N	March	\N	\N	\N	335-339	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	How Much Effort Needed to Fix the Bug? A Data Mining Approach for Effort Estimation and Analysing of Bug Report Attributes in Firefox	\N	\N	\N	2014	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Vijayakumar2014
198	00000531	1	9	Vyas:2013:ESM:2525194.2525269	\N	New York, NY, USA	\N	Vyas, Dhaval	Proceedings of the 11th Asia Pacific Conference on Computer Human Interaction	\N	\N	\N	10.1145/2525194.2525269	\N	\N	\N	\N	\N	\N	\N	\N	design, ethnography, software bug-fixing	\N	Bangalore, India	\N	\N	\N	\N	242--246	\N	\N	\N	\N	ACM	\N	\N	\N	\N	\N	APCHI '13	Ethnography of Software Maintenance Activities in an Industrial Engineering Setup	\N	http://doi.acm.org/10.1145/2525194.2525269	\N	2013	\N	\N	\N	\N	\N	\N	\N	Vyas:2013:ESM:2525194.2525269
199	00000532	1	9	Wang2011	Open source is an important model of collaborative knowledge work and virtual organizations. One of its work practices, peer review, is considered critical to its success, as Linus's law highlights. Thus, understanding open source peer review, particular effective review practices, will improve the understanding of how to support collaborative work in new ways. Therefore, we conduct case studies in two open source communities that are well recognized as effective and successful, Mozilla and Python. In this paper, we present the preliminary results of our analysis on data from the bug tracking systems of those two organizations. We identify four common activities critical to open source software peer review, submission, identification, resolution and evaluation. Differences between communities indicate factors, such as reporter expertise, product type and structure, and organization size, affect review activities. We also discuss features of open source software peer review distinct from traditional review, as well as reconsiderations of Linus's law.	\N	\N	J. Wang and J. M. Carroll	Collaboration Technologies and Systems (CTS), 2011 International Conference on	\N	\N	\N	10.1109/CTS.2011.5928673	\N	\N	\N	\N	\N	\N	\N	\N	groupware;program debugging;programming languages;public domain software;software performance evaluation;software reviews;virtual enterprises;Linus law;Mozilla;Python;bug tracking system;collaborative knowledge work;data analysis;evaluation;identification;open source community;open source software peer review practice;organization size;product structure;product type;reporter expertise;resolution;submission;virtual organization;Collaboration;Communities;Computer bugs;Fires;Open source software;Organizations;Coordination;cooperation and collaboration;designing collaborative & virtual organizations	\N	\N	May	\N	\N	\N	117-124	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Behind Linus's law: A preliminary analysis of open source software peer review practices in Mozilla and Python	\N	\N	\N	2011	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Wang2011
200	00000534	1	4	Wang2011a	A typical entry point for new developers in an open source project is to contribute a bug fix. However, finding an appropriate bug and an appropriate fix for that bug requires a good understanding of the project, which is nontrivial. Here, we extend Tesseract - an interactive project exploration environment - to allow new developers to search over bug descriptions in a project to quickly identify and explore bugs of interest and their related resources. More specifically, we extended Tesseract with search capabilities that enable synonyms and similar-bugs search over bug descriptions in a bug repository. The goal is to enable users to identify bugs of interest, resources related to that bug, (e.g., related files, contributing developers, communication records), and visually explore the appropriate socio-technical dependencies for the selected bug in an interactive manner. Here we present our search extension to Tesseract. © 2011 ACM.	\N	\N	Wang, J. and Sarma, A.	\N	\N	\N	\N	10.1145/1984642.1984661	\N	\N	\N	\N	\N	\N	Proceedings - International Conference on Software Engineering	\N	\N	\N	\N	\N	cited By 0	\N	\N	76-79	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Which bug should I fix: Helping new developers onboard a new project	\N	https://www.scopus.com/inward/record.uri?eid=2-s2.0-79959401355&partnerID=40&md5=bcc511367bfd1dd131bf3c8c90707388	\N	2011	\N	\N	\N	2016.06.08	dissertacao	\N	[dissertacao:]	Wang2011a
202	00000536	1	1	Wang:2015:CCS:2829386.2829718	\N	Newton, MA, USA	\N	Wang, Jing and Shih, Patrick C. and Wu, Yu and Carroll, John M.	\N	\N	\N	\N	10.1016/j.infsof.2015.06.002	\N	\N	\N	\N	\N	\N	Inf. Softw. Technol.	\N	Design, Open source software, Software peer review, Virtual community	\N	\N	#nov#	\N	C	\N	1--12	\N	\N	\N	\N	Butterworth-Heinemann	\N	\N	\N	\N	\N	\N	Comparative Case Studies of Open Source Software Peer Review Practices	\N	http://dx.doi.org/10.1016/j.infsof.2015.06.002	67	2015	\N	\N	\N	\N	\N	\N	\N	Wang:2015:CCS:2829386.2829718
203	00000537	1	9	Wang:2008:ADD:1368088.1368151	\N	New York, NY, USA	\N	Wang, Xiaoyin and Zhang, Lu and Xie, Tao and Anvik, John and Sun, Jiasu	Proceedings of the 30th International Conference on Software Engineering	\N	\N	\N	10.1145/1368088.1368151	\N	\N	\N	\N	\N	\N	\N	\N	duplicate bug report, execution information, information retrieval	\N	Leipzig, Germany	\N	\N	\N	\N	461--470	\N	\N	\N	\N	ACM	\N	\N	\N	\N	\N	ICSE '08	An Approach to Detecting Duplicate Bug Reports Using Natural Language and Execution Information	\N	http://doi.acm.org/10.1145/1368088.1368151	\N	2008	\N	\N	\N	\N	\N	\N	\N	Wang:2008:ADD:1368088.1368151
204	00000539	1	9	Weiss:2007:LTF:1268983.1269017	\N	Washington, DC, USA	\N	Weiss, Cathrin and Premraj, Rahul and Zimmermann, Thomas and Zeller, Andreas	Proceedings of the Fourth International Workshop on Mining Software Repositories	\N	\N	\N	10.1109/MSR.2007.13	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1--	\N	\N	\N	\N	IEEE Computer Society	\N	\N	\N	\N	\N	MSR '07	How Long Will It Take to Fix This Bug?	\N	http://dx.doi.org/10.1109/MSR.2007.13	\N	2007	\N	\N	\N	\N	\N	\N	\N	Weiss:2007:LTF:1268983.1269017
205	00000540	1	9	White:2015:GRR:2820282.2820291	\N	Piscataway, NJ, USA	\N	White, Martin and Linares-V\\\\'{a}squez, Mario and Johnson, Peter and Bernal-C\\\\'{a}rdenas, Carlos and Poshyvanyk, Denys	Proceedings of the 2015 IEEE 23rd International Conference on Program Comprehension	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Android, crash and bug reports, reproducibility	\N	Florence, Italy	\N	\N	\N	\N	48--59	\N	\N	\N	\N	IEEE Press	\N	\N	\N	\N	\N	ICPC '15	Generating Reproducible and Replayable Bug Reports from Android Application Crashes	\N	http://dl.acm.org/citation.cfm?id=2820282.2820291	\N	2015	\N	\N	\N	\N	\N	\N	\N	White:2015:GRR:2820282.2820291
206	00000544	1	9	Wijesiriwardana2012	Historical data about software projects is stored in repositories such as version control, bug tracking and mailing lists. Analyzing such data is vital to discover unthought-of-yet-interesting insights of a software project. Even though a wide range of software analysis techniques are already available, integration of such analyses is yet to be systematically addressed. Inspired from the recently introduced concept of Software as a Service, our research group investigated the concept of Software Analysis as a Service (SOFAS), a distributed and collaborative software analysis platform. SOFAS allows software analyses to be accessed, composed into workflows, and executed over the Internet. However, traditional service composition is a complex, time consuming and error-prone process, which requires experts in both composition languages and existing standards. In this paper, we propose a mashup platform to address the problem of software analysis composition in a light-weight, programming-free process-centric way. Our proposed mashup platform provides design-time guidance to the users throughout the mashup design by integrating a continuous feedback mechanism. It requires exploiting semantic web technologies and Software Engineering Ontologies (SEON).	\N	\N	C. Wijesiriwardana and G. Ghezzi and H. Gall	2012 19th Asia-Pacific Software Engineering Conference	\N	\N	\N	10.1109/APSEC.2012.112	\N	\N	\N	\N	\N	\N	\N	\N	cloud computing;groupware;ontologies (artificial intelligence);program diagnostics;project management;semantic Web;software engineering;software standards;Internet;SEON;SOFAS;bug tracking;collaborative software analysis platform;composition languages;continuous feedback mechanism;design-time guidance;distributed software analysis;error-prone process;guided mashup framework;historical data;mailing lists;mashup platform;programming-free process-centric way;research group;semantic Web technology;software analysis as a service;software analysis composition;software analysis service composition;software analysis techniques;software as a service;software engineering ontology;software projects;software standards;version control;Data mining;History;Mashups;Measurement;Ontologies;Semantics;Mashups;Software Analysis as a Service;Software Engineering Ontologies	\N	\N	Dec	\N	\N	\N	725-728	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	A Guided Mashup Framework for Rapid Software Analysis Service Composition	\N	\N	1	2012	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Wijesiriwardana2012
207	00000545	1	9	Wong:2014:BBF:2705615.2706096	\N	Washington, DC, USA	\N	Wong, Chu-Pan and Xiong, Yingfei and Zhang, Hongyu and Hao, Dan and Zhang, Lu and Mei, Hong	Proceedings of the 2014 IEEE International Conference on Software Maintenance and Evolution	\N	\N	\N	10.1109/ICSME.2014.40	\N	\N	\N	\N	\N	\N	\N	\N	fault localization, bug report, feature location, information retrieval	\N	\N	\N	\N	\N	\N	181--190	\N	\N	\N	\N	IEEE Computer Society	\N	\N	\N	\N	\N	ICSME '14	Boosting Bug-Report-Oriented Fault Localization with Segmentation and Stack-Trace Analysis	\N	http://dx.doi.org/10.1109/ICSME.2014.40	\N	2014	\N	\N	\N	\N	\N	\N	\N	Wong:2014:BBF:2705615.2706096
208	00000546	1	4	Wu2011a	Software bugs reported by human users and automatic error reporting software are often stored in some bug tracking tools (e.g., Bugzilia and Debbugs). These accumulated bug reports may contain valuable information that could be used to improve the quality of the bug reporting, reduce the quality assurance effort and cost, analyze software reliability, and predict future bug report trend. In this paper, we present BugMiner, a tool that is able to derive useful information from historic bug report database using data mining, use these information to do completion check and redundancy check on a new or given bug report, and to estimate the bug report trend using statistical analysis. Our empirical studies of the tool using several real-world bug report repositories show that it is effective, easy to implement, and has relatively high accuracy despite low quality data.	\N	\N	Wu, L. and Xie, B. and Kaiser, G. and Passonneau, R.	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	SEKE 2011 - Proceedings of the 23rd International Conference on Software Engineering and Knowledge Engineering	\N	\N	\N	\N	\N	cited By 4	\N	\N	95-100	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	BugMiner: Software reliability analysis via data mining of bug reports	\N	https://www.scopus.com/inward/record.uri?eid=2-s2.0-84855528831&partnerID=40&md5=c6b995a94d2f115ed80794957b3c9536	\N	2011	\N	\N	\N	2016.06.08	dissertacao	\N	[dissertacao:]	Wu2011a
210	00000548	1	9	Wu2011	This paper proposes a new approach called DREX (Developer Recommendation with k-nearest-neighbor search and Expertise ranking) to developer recommendation for bug resolution based on K-Nearest-Neighbor search with bug similarity and expertise ranking with various metrics, including simple frequency and social network metrics. We collect Mozilla Fire fox open bug repository as the experimental data set and compare different ranking metrics on the performance of recommending capable developers for bugs. Our experimental results demonstrate that, when recommending 10 developers for each one of the 250 testing bugs, DREX has produced better performance than traditional methods with multi-labeled text categorization. The best performance obtained by two metrics as Out-Degree and Frequency, is with recall as 0.6 on average. Moreover, other social network metrics such as Degree and Page Rank have produced comparable performance on developer recommendation as Frequency when used for developer expertise ranking.	\N	\N	W. Wu and W. Zhang and Y. Yang and Q. Wang	2011 18th Asia-Pacific Software Engineering Conference	\N	\N	\N	10.1109/APSEC.2011.15	\N	\N	\N	\N	\N	\N	\N	\N	program debugging;social networking (online);DREX;K-nearest-neighbor search;Mozilla Fire fox;Page Rank;bug repository;bug resolution;bug similarity;developer recommendation;expertise ranking;social network metrics;Computer bugs;Fires;Measurement;Social network services;Software;Testing;Vectors;Developer Recommendation;Expertise Ranking;KNN Search;Open Bug Repository	\N	\N	Dec	\N	\N	\N	389-396	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	DREX: Developer Recommendation with K-Nearest-Neighbor Search and Expertise Ranking	\N	\N	\N	2011	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Wu2011
211	00000549	1	1	Xia:2015:AHA:2737603.2737646	\N	Hingham, MA, USA	\N	Xia, Xin and Lo, David and Shihab, Emad and Wang, Xinyu and Zhou, Bo	\N	\N	\N	\N	10.1007/s10515-014-0162-2	\N	\N	\N	\N	\N	\N	Automated Software Engg.	\N	Imbalanced feature selection, Imbalanced learning, Reopened bugs	\N	\N	#mar#	\N	1	\N	75--109	\N	\N	\N	\N	Kluwer Academic Publishers	\N	\N	\N	\N	\N	\N	Automatic, High Accuracy Prediction of Reopened Bugs	\N	http://dx.doi.org/10.1007/s10515-014-0162-2	22	2015	\N	\N	\N	\N	\N	\N	\N	Xia:2015:AHA:2737603.2737646
212	00000550	1	9	Xie2013	Triage is of great interest in software projects because it has the potential to reduce developer effort by involving a broader base of non-developer contributors to filter and augment reported issues. Using issue tracking data and interviews with experienced contributors we investigate ways to quantify the impact of triagers on reducing the number of issues developers need to resolve in two OSS projects: Mozilla and Gnome. We find the primary impact of triagers to involve issue filtering, filling missing information, and determining the relevant product. While triagers were good at filtering invalid issues and as accurate as developers in filling in missing issue attributes, they had more difficulty accurately pinpointing the relevant product. We expect that this work will highlight the importance of issue triage in software projects and will help design further studies on understanding and improving triage practices.	\N	\N	J. Xie and M. Zhou and A. Mockus	2013 ACM / IEEE International Symposium on Empirical Software Engineering and Measurement	\N	\N	\N	10.1109/ESEM.2013.62	\N	\N	\N	\N	\N	\N	\N	\N	online front-ends;project management;public domain software;software engineering;Gnome;Mozilla;OSS projects;issue filtering;issue tracking data;missing information filling;relevant product determination;software projects;triage impact;Accuracy;Atmospheric measurements;Communities;Computer bugs;Particle measurements;Software;Software engineering	\N	\N	Oct	\N	\N	\N	247-250	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Impact of Triage: A Study of Mozilla and Gnome	\N	\N	\N	2013	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Xie2013
213	00000551	1	9	Xuan:2012:DPB:2337223.2337227	\N	Piscataway, NJ, USA	\N	Xuan, Jifeng and Jiang, He and Ren, Zhilei and Zou, Weiqin	Proceedings of the 34th International Conference on Software Engineering	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Zurich, Switzerland	\N	\N	\N	\N	25--35	\N	\N	\N	\N	IEEE Press	\N	\N	\N	\N	\N	ICSE '12	Developer Prioritization in Bug Repositories	\N	http://dl.acm.org/citation.cfm?id=2337223.2337227	\N	2012	\N	\N	\N	\N	\N	\N	\N	Xuan:2012:DPB:2337223.2337227
214	00000552	1	9	Yu2012	During software evolution, new released versions still contain many bugs. One common scenario is that end users encounter regression faults and submit them to bug tracking systems. Different from in-house regression testing, typically only one test input is available, which passes the old version and fails the modified new version. To address the issue, delta debugging has been proposed for failure-inducing changes identification between two versions. Despite promising results, there are two practical factors that thwart the application of delta debugging: a large number of tests and misleading false positives. In this work, we present a combination of coverage analysis and delta debugging that automatically isolates failure-inducing changes. Evaluations on twelve real regression faults in GNU software demonstrate both the speed gain and effectiveness improvements. Moreover, a case study on libPNG and TCPflow indicates that our technique is comparable to peer techniques in debugging regressions faults.	\N	\N	K. Yu and M. Lin and J. Chen and X. Zhang	Automated Software Engineering (ASE), 2012 Proceedings of the 27th IEEE/ACM International Conference on	\N	\N	\N	10.1145/2351676.2351681	\N	\N	\N	\N	\N	\N	\N	\N	program debugging;regression analysis;software fault tolerance;GNU software;TCPflow;bug tracking system;delta debugging;effectiveness improvement;failure-inducing change identification;libPNG;regression fault debugging;regression testing;software evolution;speed gain;Regression fault;automated debugging;coverage analysis;delta debugging;field failure	\N	\N	Sept	\N	\N	\N	20-29	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Practical isolation of failure-inducing changes for debugging regression faults	\N	\N	\N	2012	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Yu2012
216	00000555	1	9	Zanetti2013a	Social organization and division of labor crucially influence the performance of collaborative software engineering efforts. In this paper, we provide a quantitative analysis of the relation between social organization and performance in Gentoo, an Open Source community developing a Linux distribution. We study the structure and dynamics of collaborations as recorded in the project's bug tracking system over a period of ten years. We identify a period of increasing centralization after which most interactions in the community were mediated by a single central contributor. In this period of maximum centralization, the central contributor unexpectedly left the project, thus posing a significant challenge for the community. We quantify how the rise, the activity as well as the subsequent sudden dropout of this central contributor affected both the social organization and the bug handling performance of the Gentoo community. We analyze social organization from the perspective of network theory and augment our quantitative findings by interviews with prominent members of the Gentoo community which shared their personal insights.	\N	\N	M. S. Zanetti and I. Scholtes and C. J. Tessone and F. Schweitzer	Cooperative and Human Aspects of Software Engineering (CHASE), 2013 6th International Workshop on	\N	\N	\N	10.1109/CHASE.2013.6614731	\N	\N	\N	\N	\N	\N	\N	\N	Linux;program debugging;public domain software;GENTOO community;Linux distribution;bug handling performance;bug tracking system;central contributor;collaboration dynamics;collaboration structure;collaborative software engineering;labor division;maximum centralization;network theory;open source community;social organization;Collaboration;Communities;Computer bugs;Network topology;Organizations;Peer-to-peer computing;Topology	\N	\N	May	\N	\N	\N	49-56	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	The rise and fall of a central contributor: Dynamics of social organization and performance in the GENTOO community	\N	\N	\N	2013	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Zanetti2013a
217	00000556	1	1	Zhang2014a	Software products are increasingly complex, so it is becoming more difficult to find and correct bugs in large programs. Software developers rely on bug reports to fix bugs; thus, bug-tracking tools have been introduced to allow developers to upload, manage, and comment on bug reports to guide corrective software maintenance. However, the very high frequency of duplicate bug reports means that the triagers who help software developers in eliminating bugs must allocate large amounts of time and effort to the identification and analysis of these bug reports. In addition, classifying bug reports can help triagers arrange bugs in categories for the fixers who have more experience for resolving historical bugs in the same category. Unfortunately, due to a large number of submitted bug reports every day, the manual classification for these bug reports increases the triagers' workload. To resolve these problems, in this study, we develop a novel technique for automatic duplicate detection and classification of bug reports, which reduces the time and effort consumed by triagers for bug fixing. Our novel technique uses a support vector machine to check whether a new bug report is a duplicate. The concept profile is also used to classify the bug reports into related categories in a taxonomic tree. Finally, we conduct experiments that demonstrate the feasibility of our proposed approach using bug reports extracted from the large-scale open source project Mozilla. Copyright © 2014 The Institute of Electronics, Information and Communication Engineers.	\N	\N	Zhang, T. and Lee, B.	\N	\N	\N	\N	10.1587/transinf.E97.D.1756	\N	\N	\N	\N	\N	\N	IEICE Transactions on Information and Systems	\N	\N	\N	\N	\N	cited By 0	7	\N	1756-1768	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	A novel technique for duplicate detection and classification of bug reports	\N	https://www.scopus.com/inward/record.uri?eid=2-s2.0-84903701013&partnerID=40&md5=b2fbabe4eb85c94c1ba645bc2672f4ba	E97-D	2014	\N	\N	\N	2016.06.08	dissertacao	\N	[dissertacao:]	Zhang2014a
218	00000557	1	9	Zhang:2011:BRB:2055440.2055904	\N	Washington, DC, USA	\N	Zhang, Tao and Lee, Byungjeong	Proceedings of the 2011 IEEE 11th International Conference on Computer and Information Technology	\N	\N	\N	10.1109/CIT.2011.90	\N	\N	\N	\N	\N	\N	\N	\N	bug report classification, bug tracking system, developer feedback, software maintenance	\N	\N	\N	\N	\N	\N	336--343	\N	\N	\N	\N	IEEE Computer Society	\N	\N	\N	\N	\N	CIT '11	A Bug Rule Based Technique with Feedback for Classifying Bug Reports	\N	http://dx.doi.org/10.1109/CIT.2011.90	\N	2011	\N	\N	\N	\N	\N	\N	\N	Zhang:2011:BRB:2055440.2055904
219	00000558	1	9	Zhang2014	When a bug is reported to the bug tracking system, it should be assigned to a developer responsible for its resolution after it is verified. This processing is also called bug triage. With increasing number of bug reports submitted to the bug tracking system, it is more and more difficult to assign appropriate developers to all the reported bugs manually. In this paper, we propose an approach called BUTTER (BUg Triage by topic modeling and heTERogeneous network analysis) to automatically assign bugs to developers. Different from other work, we regard that in most cases, bug resolution is a collaborative activity which involves many developers' participation. Although social network analysis has been introduced to characterize the collaboration of developers, networks constructed by researchers are usually homogenous. That is, all the nodes and links in these networks are regarded as having same properties. Considering developers collaborated on different bugs, we construct a heterogeneous network that includes relationships between submitters, bugs and developers to characterize developers' collaboration. Experiment shows that BUTTER outperforms other methods on automated bug triage.	\N	\N	W. Zhang and G. Han and Q. Wang	Cloud Computing and Big Data (CCBD), 2014 International Conference on	\N	\N	\N	10.1109/CCBD.2014.14	\N	\N	\N	\N	\N	\N	\N	\N	program debugging;program verification;BUTTER;bug reports;bug resolution;bug tracking system;bug triage by topic modeling and heterogeneous network analysis;collaborative activity;developers collaboration;social network analysis;verification;Analytical models;Computer bugs;Dairy products;Mathematical model;Social network services;Software;Training;bug triage;heterogeneous network;topic model	\N	\N	Nov	\N	\N	\N	62-69	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	BUTTER: An Approach to Bug Triage with Topic Modeling and Heterogeneous Network Analysis	\N	\N	\N	2014	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Zhang2014
220	00000559	1	1	Zhang:2016:KSA:2873074.2873292	\N	Newton, MA, USA	\N	Zhang, Wen and Wang, Song and Wang, Qing	\N	\N	\N	\N	10.1016/j.infsof.2015.10.004	\N	\N	\N	\N	\N	\N	Inf. Softw. Technol.	\N	Bug report assignment, Developer recommendation, Heterogeneous network, Heterogeneous proximity	\N	\N	#feb#	\N	C	\N	68--84	\N	\N	\N	\N	Butterworth-Heinemann	\N	\N	\N	\N	\N	\N	KSAP	\N	http://dx.doi.org/10.1016/j.infsof.2015.10.004	70	2016	\N	\N	\N	\N	\N	\N	\N	Zhang:2016:KSA:2873074.2873292
221	00000560	1	9	Zhang:2013:HNA:2569431.2569763	\N	Washington, DC, USA	\N	Zhang, Wen and Wang, Song and Yang, Ye and Wang, Qing	Proceedings of the 2013 International Conference on Cloud and Service Computing	\N	\N	\N	10.1109/CSC.2013.23	\N	\N	\N	\N	\N	\N	\N	\N	bug triage, developer contribution, heterogeneous network	\N	\N	\N	\N	\N	\N	98--105	\N	\N	\N	\N	IEEE Computer Society	\N	\N	\N	\N	\N	CSC '13	Heterogeneous Network Analysis of Developer Contribution in Bug Repositories	\N	http://dx.doi.org/10.1109/CSC.2013.23	\N	2013	\N	\N	\N	\N	\N	\N	\N	Zhang:2013:HNA:2569431.2569763
223	00000562	1	9	Zimmermann2009	Software development results in a huge amount of data: changes to source code are recorded in version archives, bugs are reported to issue tracking systems, and communications are archived in e-mails and newsgroups. We present techniques for mining version archives and bug databases to understand and support software development. First, we introduce the concept of co-addition of method calls, which we use to identify patterns that describe how methods should be called. We use dynamic analysis to validate these patterns and identify violations. The co-addition of method calls can also detect cross-cutting changes, which are an indicator for concerns that could have been realized as aspects in aspect-oriented programming. Second, we present techniques to build models that can successfully predict the most defect-prone parts of large-scale industrial software, in our experiments Windows Server 2003. This helps managers to allocate resources for quality assurance to those parts of a system that are expected to have most defects. The proposed measures on dependency graphs outperformed traditional complexity metrics. In addition, we found empirical evidence for a domino effect, i.e., depending on defect-prone binaries increases the chances of having defects.	\N	\N	T. Zimmermann	Software Maintenance, 2009. ICSM 2009. IEEE International Conference on	\N	\N	\N	10.1109/ICSM.2009.5306296	\N	\N	\N	\N	\N	\N	\N	\N	data mining;object-oriented programming;program debugging;software quality;Windows Server 2003;aspect-oriented programming;bug databases;large-scale industrial software;quality assurance;resource allocation;software development;source code;tracking systems;version archives mining;Computer bugs;Computer industry;Databases;Large-scale systems;Pattern analysis;Predictive models;Programming;Quality assurance;Quality management;Resource management	\N	\N	Sept	\N	\N	\N	443-446	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Changes and bugs Mining and predicting development activities	\N	\N	\N	2009	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Zimmermann2009
225	00000568	1	4	Zimmermann2009b	It is important that information provided in bug reports is relevant and complete in order to help resolve bugs quickly. However, often such information trickles to developers after several iterations of communication between developers and reporters. Poorly designed bug tracking systems are partly to blame for this exchange of information being stretched over time. Our paper addresses the concerns of bug tracking systems by proposing four broad directions for enhancements. As a proof-of-concept, we also demonstrate a prototype interactive bug tracking system that gathers relevant information from the user and identifies files that need to be fixed to resolve the bug. © 2009 IEEE.	\N	\N	Zimmermann, T.a b and Premraj, R.b and Sillito, J.c and Breu, S.d 	\N	\N	\N	\N	10.1109/ICSE-COMPANION.2009.5070993	\N	\N	\N	\N	\N	\N	2009 31st International Conference on Software Engineering - Companion Volume, ICSE 2009	\N	\N	\N	\N	\N	cited By 11	\N	\N	247-250	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Improving bug tracking systems	\N	https://www.scopus.com/inward/record.uri?eid=2-s2.0-70349694449&partnerID=40&md5=be7a1ad461d14b326b5eb0459983cc56	\N	2009	\N	\N	\N	2016.06.08	dissertacao	\N	[dissertacao:]	Zimmermann2009b
226	00000569	1	9	Zou2015	Bug fixing is one of the most important activities in software development and maintenance. A software project often employs an issue tracking system such as Bugzilla to store and manage their bugs. In the issue tracking system, many bugs are invalid but take unnecessary efforts to identify them. In this paper, we mainly focus on bug fixing rate, i.e., The proportion of the fixed bugs in the reported closed bugs. In particular, we study the characteristics of bug fixing rate and investigate the impact of a reporter's different contribution behaviors to the bug fixing rate. We perform an empirical study on all reported bugs of two large open source software communities Eclipse and Mozilla. We find (1) the bug fixing rates of both projects are not high, (2) there exhibits a negative correlation between a reporter's bug fixing rate and the average time cost to close the bugs he/she reports, (3) the amount of bugs a reporter ever fixed has a strong positive impact on his/her bug fixing rate, (4) reporters' bug fixing rates have no big difference, whether their contribution behaviors concentrate on a few products or across many products, (5) reporters' bug fixing rates tend to increase as time goes on, i.e., Developers become more experienced at reporting bugs.	\N	\N	W. Zou and X. Xia and W. Zhang and Z. Chen and D. Lo	Computer Software and Applications Conference (COMPSAC), 2015 IEEE 39th Annual	\N	\N	\N	10.1109/COMPSAC.2015.57	\N	\N	\N	\N	\N	\N	\N	\N	program debugging;public domain software;software maintenance;Eclipse;Mozilla;bug fixing rate;open source software community;software development;software maintenance;Computer aided software engineering;Computer bugs;Correlation;Entropy;History;Open source software;Bug Fixing Rate;Bug Reports;Empirical Study;Statistical Analysis	\N	\N	July	\N	\N	\N	254-263	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	An Empirical Study of Bug Fixing Rate	\N	\N	2	2015	\N	\N	\N	2016.06.08	dissertacao	\N	\N	Zou2015
227	00000570	1	1	2015	The proceedings contain 38 papers. The special focus in this conference is on Search-Based Software Engineering. The topics include: Genetic improvement of software for multiple objectives; amortised optimisation of non-functional properties in production environments; metrics are not enough; searching for useful parallelism in functional programs; an improved beam-search for the test case generation for formal verification systems; combining multiple coverage criteria in search-based unit test generation; epistatic genetic algorithm for test case prioritization; a scala combinator toolkit for semi-automated composition of metaheuristics; hypervolume-based search for test case prioritization; optimizing aspect-oriented product line architectures with search-based algorithms; adaptive neighbourhood search for the component deployment problem; transformed search based software engineering; regression test case prioritisation for guava; continuous test generation on guava; generating readable unit tests for guava; testing django configurations using combinatorial interaction testing; synthesis of equivalent method calls in guava; object-oriented genetic improvement for improved energy consumption in google guava; automated transplantation of call graph and layout features into kate; growing django citation services using SBSE; multi-objective module clustering for kate; search based component selection for budget hardware; search-based bug report prioritization for kate editor bugs repository; inferring test models from kate’s bug reports using multi-objective search; introducing learning mechanism for class responsibility assignment problem; transformed vargha-delaney effect size; optimizing software product line architectures with OPLA-tool; exploring the landscape of non-functional program properties using spatial analysis and interactive software release planning with preferences base.	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Lecture Notes in Computer Science (including subseries Lecture Notes in Artificial Intelligence and Lecture Notes in Bioinformatics)	\N	\N	\N	\N	\N	cited By 0	\N	\N	1-354	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7th International Symposium on Search-Based Software Engineering, SSBSE 2015	\N	https://www.scopus.com/inward/record.uri?eid=2-s2.0-84951276529&partnerID=40&md5=2ddd99abeb9b2d0bb59d68811edc6a6b	9275	2015	\N	\N	\N	2016.06.08	dissertacao	\N	[dissertacao:]	2015
228	00000571	1	4	2012	The proceedings contain 38 papers. The topics discussed include: towards improving bug tracking systems with game mechanisms; a linked data platform for mining software repositories; how distributed version control systems impact open source software projects; an empirical study of supplementary bug fixes; incorporating version histories in information retrieval based bug localization; think locally, act globally: improving defect and effort prediction models; are faults localizable?; green mining: a methodology of relating software change to power consumption; analysis of customer satisfaction survey data; mining usage data and development artifacts; bug introducing changes: a case study with android; trendy bugs: topic trends in the android bug reports; do the stars align? multidimensional analysis of android's layered architecture; and the build dependency perspective of android's concrete architecture.	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	IEEE International Working Conference on Mining Software Repositories	\N	\N	\N	\N	\N	cited By 0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2012 9th IEEE Working Conference on Mining Software Repositories, MSR 2012 - Proceedings	\N	https://www.scopus.com/inward/record.uri?eid=2-s2.0-84865136454&partnerID=40&md5=4d20f0cb5d009f5004265a2c43dccc42	\N	2012	\N	\N	\N	2016.06.08	dissertacao	\N	[dissertacao:]	2012
\.


--
-- Name: entries_entries_id_seq; Type: SEQUENCE SET; Schema: mapeamento_its; Owner: dissertacao
--

SELECT pg_catalog.setval('entries_entries_id_seq', 229, true);


--
-- Data for Name: entry_group; Type: TABLE DATA; Schema: mapeamento_its; Owner: dissertacao
--

COPY entry_group (entries_id, groups_id) FROM stdin;
\.


--
-- Name: entry_group_entries_id_seq; Type: SEQUENCE SET; Schema: mapeamento_its; Owner: dissertacao
--

SELECT pg_catalog.setval('entry_group_entries_id_seq', 1, false);


--
-- Data for Name: entry_types; Type: TABLE DATA; Schema: mapeamento_its; Owner: dissertacao
--

COPY entry_types (entry_types_id, label, abstract, address, annote, author, booktitle, chapter, comment, crossref, doi, edition, editor, eid, file, howpublished, institution, journal, key_, keywords, language, location, month, note, number, organization, pages, pdf, pmid, priority, ps, publisher, qualityassured, ranking, relevance, school, search, series, title, type, url, volume, year, date, __groupsearch, entrytype, "timestamp", owner, __search, __markedentry, bibtexkey) FROM stdin;
1	article	gen	gen	gen	req	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	req	gen	gen	gen	gen	opt	opt	opt	gen	opt	gen	gen	gen	gen	gen	gen	gen	gen	gen	uti	gen	req	gen	gen	opt	req	gen	gen	gen	gen	gen	gen	gen	gen
2	book	gen	opt	gen	req	gen	gen	gen	gen	gen	opt	req	gen	gen	gen	gen	gen	gen	gen	gen	gen	opt	opt	opt	gen	gen	gen	gen	gen	gen	req	gen	gen	gen	gen	uti	opt	req	gen	gen	opt	req	gen	gen	gen	gen	gen	gen	gen	gen
3	booklet	gen	opt	gen	opt	gen	gen	gen	gen	gen	gen	gen	gen	gen	opt	gen	gen	gen	gen	gen	gen	opt	opt	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	uti	gen	req	gen	gen	gen	opt	gen	gen	gen	gen	gen	gen	gen	gen
4	conference	gen	opt	gen	req	req	gen	gen	gen	gen	gen	opt	gen	gen	gen	gen	gen	gen	gen	gen	gen	opt	opt	opt	opt	opt	gen	gen	gen	gen	opt	gen	gen	gen	gen	uti	opt	req	gen	gen	opt	req	gen	gen	gen	gen	gen	gen	gen	gen
5	electronic	gen	opt	gen	opt	gen	gen	gen	gen	gen	gen	gen	gen	gen	opt	gen	gen	gen	gen	opt	gen	opt	opt	gen	opt	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	uti	gen	opt	gen	opt	gen	opt	gen	gen	gen	gen	gen	gen	gen	gen
6	ieeetranbstctl	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	uti	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen
7	inbook	gen	opt	gen	req	gen	req	gen	gen	gen	opt	req	gen	gen	gen	gen	gen	gen	gen	gen	gen	opt	opt	opt	gen	req	gen	gen	gen	gen	req	gen	gen	gen	gen	uti	opt	req	opt	gen	opt	req	gen	gen	gen	gen	gen	gen	gen	gen
8	incollection	gen	opt	gen	req	req	opt	gen	gen	gen	opt	opt	gen	gen	gen	gen	gen	gen	gen	gen	gen	opt	opt	opt	gen	opt	gen	gen	gen	gen	req	gen	gen	gen	gen	uti	opt	req	opt	gen	opt	req	gen	gen	gen	gen	gen	gen	gen	gen
9	inproceedings	gen	opt	gen	req	req	gen	gen	gen	gen	gen	opt	gen	gen	gen	gen	gen	gen	gen	gen	gen	opt	opt	opt	opt	opt	gen	gen	gen	gen	opt	gen	gen	gen	gen	uti	opt	req	gen	gen	opt	req	gen	gen	gen	gen	gen	gen	gen	gen
10	manual	gen	opt	gen	opt	gen	gen	gen	gen	gen	opt	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	opt	opt	gen	opt	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	uti	gen	req	gen	gen	gen	opt	gen	gen	gen	gen	gen	gen	gen	gen
11	mastersthesis	gen	opt	gen	req	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	opt	opt	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	req	uti	gen	req	opt	gen	gen	req	gen	gen	gen	gen	gen	gen	gen	gen
12	misc	gen	gen	gen	opt	gen	gen	gen	gen	gen	gen	gen	gen	gen	opt	gen	gen	gen	gen	gen	gen	opt	opt	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	uti	gen	opt	gen	gen	gen	opt	gen	gen	gen	gen	gen	gen	gen	gen
13	other	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	uti	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen
14	patent	gen	opt	gen	opt	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	opt	gen	opt	opt	req	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	uti	gen	opt	opt	opt	gen	req	gen	gen	gen	gen	gen	gen	gen	gen
15	periodical	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	opt	gen	gen	gen	gen	gen	gen	gen	opt	gen	opt	opt	opt	opt	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	uti	opt	req	gen	opt	opt	req	gen	gen	gen	gen	gen	gen	gen	gen
16	phdthesis	gen	opt	gen	req	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	opt	opt	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	req	uti	gen	req	opt	gen	gen	req	gen	gen	gen	gen	gen	gen	gen	gen
17	proceedings	gen	opt	gen	gen	gen	gen	gen	gen	gen	gen	opt	gen	gen	gen	gen	gen	gen	gen	gen	gen	opt	opt	opt	opt	gen	gen	gen	gen	gen	opt	gen	gen	gen	gen	uti	opt	req	gen	gen	opt	req	gen	gen	gen	gen	gen	gen	gen	gen
18	standard	gen	opt	gen	opt	gen	gen	gen	gen	gen	gen	gen	gen	gen	opt	req	gen	gen	gen	opt	gen	opt	opt	opt	req	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	uti	gen	req	opt	opt	gen	opt	gen	gen	gen	gen	gen	gen	gen	gen
19	techreport	gen	opt	gen	req	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	req	gen	gen	gen	gen	gen	opt	opt	opt	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	uti	gen	req	opt	gen	gen	req	gen	gen	gen	gen	gen	gen	gen	gen
20	unpublished	gen	gen	gen	req	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	opt	req	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	gen	uti	gen	req	gen	gen	gen	opt	gen	gen	gen	gen	gen	gen	gen	gen
\.


--
-- Name: entry_types_entry_types_id_seq; Type: SEQUENCE SET; Schema: mapeamento_its; Owner: dissertacao
--

SELECT pg_catalog.setval('entry_types_entry_types_id_seq', 20, true);


--
-- Data for Name: group_types; Type: TABLE DATA; Schema: mapeamento_its; Owner: dissertacao
--

COPY group_types (group_types_id, label) FROM stdin;
1	AllEntriesGroup:
2	ExplicitGroup:
3	KeywordGroup:
4	SearchGroup:
\.


--
-- Name: group_types_group_types_id_seq; Type: SEQUENCE SET; Schema: mapeamento_its; Owner: dissertacao
--

SELECT pg_catalog.setval('group_types_group_types_id_seq', 4, true);


--
-- Data for Name: groups; Type: TABLE DATA; Schema: mapeamento_its; Owner: dissertacao
--

COPY groups (groups_id, group_types_id, label, database_id, parent_id, search_field, search_expression, case_sensitive, reg_exp, hierarchical_context) FROM stdin;
1	1	All Entries	1	0	\N	\N	\N	\N	0
\.


--
-- Name: groups_groups_id_seq; Type: SEQUENCE SET; Schema: mapeamento_its; Owner: dissertacao
--

SELECT pg_catalog.setval('groups_groups_id_seq', 1, true);


--
-- Data for Name: jabref_database; Type: TABLE DATA; Schema: mapeamento_its; Owner: dissertacao
--

COPY jabref_database (database_id, database_name, md5_path) FROM stdin;
1	Mapeamento Sistemático Issue Tracking System	997ef342d60cbb1698e896f7d79a035f
\.


--
-- Name: jabref_database_database_id_seq; Type: SEQUENCE SET; Schema: mapeamento_its; Owner: dissertacao
--

SELECT pg_catalog.setval('jabref_database_database_id_seq', 1, true);


--
-- Data for Name: strings; Type: TABLE DATA; Schema: mapeamento_its; Owner: dissertacao
--

COPY strings (strings_id, label, content, database_id) FROM stdin;
\.


--
-- Name: strings_strings_id_seq; Type: SEQUENCE SET; Schema: mapeamento_its; Owner: dissertacao
--

SELECT pg_catalog.setval('strings_strings_id_seq', 1, false);


SET search_path = popularidade_its, pg_catalog;

--
-- Data for Name: semana; Type: TABLE DATA; Schema: popularidade_its; Owner: dissertacao
--

COPY semana (id_semana, cod_semana, data_inicio_semana, data_fim_semana) FROM stdin;
1	1	2004-01-04	2004-01-10
2	2	2004-01-11	2004-01-17
3	3	2004-01-18	2004-01-24
4	4	2004-01-25	2004-01-31
5	5	2004-02-01	2004-02-07
6	6	2004-02-08	2004-02-14
7	7	2004-02-15	2004-02-21
8	8	2004-02-22	2004-02-28
9	9	2004-02-29	2004-03-06
10	10	2004-03-07	2004-03-13
11	11	2004-03-14	2004-03-20
12	12	2004-03-21	2004-03-27
13	13	2004-03-28	2004-04-03
14	14	2004-04-04	2004-04-10
15	15	2004-04-11	2004-04-17
16	16	2004-04-18	2004-04-24
17	17	2004-04-25	2004-05-01
18	18	2004-05-02	2004-05-08
19	19	2004-05-09	2004-05-15
20	20	2004-05-16	2004-05-22
21	21	2004-05-23	2004-05-29
22	22	2004-05-30	2004-06-05
23	23	2004-06-06	2004-06-12
24	24	2004-06-13	2004-06-19
25	25	2004-06-20	2004-06-26
26	26	2004-06-27	2004-07-03
27	27	2004-07-04	2004-07-10
28	28	2004-07-11	2004-07-17
29	29	2004-07-18	2004-07-24
30	30	2004-07-25	2004-07-31
31	31	2004-08-01	2004-08-07
32	32	2004-08-08	2004-08-14
33	33	2004-08-15	2004-08-21
34	34	2004-08-22	2004-08-28
35	35	2004-08-29	2004-09-04
36	36	2004-09-05	2004-09-11
37	37	2004-09-12	2004-09-18
38	38	2004-09-19	2004-09-25
39	39	2004-09-26	2004-10-02
40	40	2004-10-03	2004-10-09
41	41	2004-10-10	2004-10-16
42	42	2004-10-17	2004-10-23
43	43	2004-10-24	2004-10-30
44	44	2004-10-31	2004-11-06
45	45	2004-11-07	2004-11-13
46	46	2004-11-14	2004-11-20
47	47	2004-11-21	2004-11-27
48	48	2004-11-28	2004-12-04
49	49	2004-12-05	2004-12-11
50	50	2004-12-12	2004-12-18
51	51	2004-12-19	2004-12-25
52	52	2004-12-26	2005-01-01
53	53	2005-01-02	2005-01-08
54	54	2005-01-09	2005-01-15
55	55	2005-01-16	2005-01-22
56	56	2005-01-23	2005-01-29
57	57	2005-01-30	2005-02-05
58	58	2005-02-06	2005-02-12
59	59	2005-02-13	2005-02-19
60	60	2005-02-20	2005-02-26
61	61	2005-02-27	2005-03-05
62	62	2005-03-06	2005-03-12
63	63	2005-03-13	2005-03-19
64	64	2005-03-20	2005-03-26
65	65	2005-03-27	2005-04-02
66	66	2005-04-03	2005-04-09
67	67	2005-04-10	2005-04-16
68	68	2005-04-17	2005-04-23
69	69	2005-04-24	2005-04-30
70	70	2005-05-01	2005-05-07
71	71	2005-05-08	2005-05-14
72	72	2005-05-15	2005-05-21
73	73	2005-05-22	2005-05-28
74	74	2005-05-29	2005-06-04
75	75	2005-06-05	2005-06-11
76	76	2005-06-12	2005-06-18
77	77	2005-06-19	2005-06-25
78	78	2005-06-26	2005-07-02
79	79	2005-07-03	2005-07-09
80	80	2005-07-10	2005-07-16
81	81	2005-07-17	2005-07-23
82	82	2005-07-24	2005-07-30
83	83	2005-07-31	2005-08-06
84	84	2005-08-07	2005-08-13
85	85	2005-08-14	2005-08-20
86	86	2005-08-21	2005-08-27
87	87	2005-08-28	2005-09-03
88	88	2005-09-04	2005-09-10
89	89	2005-09-11	2005-09-17
90	90	2005-09-18	2005-09-24
91	91	2005-09-25	2005-10-01
92	92	2005-10-02	2005-10-08
93	93	2005-10-09	2005-10-15
94	94	2005-10-16	2005-10-22
95	95	2005-10-23	2005-10-29
96	96	2005-10-30	2005-11-05
97	97	2005-11-06	2005-11-12
98	98	2005-11-13	2005-11-19
99	99	2005-11-20	2005-11-26
100	100	2005-11-27	2005-12-03
101	101	2005-12-04	2005-12-10
102	102	2005-12-11	2005-12-17
103	103	2005-12-18	2005-12-24
104	104	2005-12-25	2005-12-31
105	105	2006-01-01	2006-01-07
106	106	2006-01-08	2006-01-14
107	107	2006-01-15	2006-01-21
108	108	2006-01-22	2006-01-28
109	109	2006-01-29	2006-02-04
110	110	2006-02-05	2006-02-11
111	111	2006-02-12	2006-02-18
112	112	2006-02-19	2006-02-25
113	113	2006-02-26	2006-03-04
114	114	2006-03-05	2006-03-11
115	115	2006-03-12	2006-03-18
116	116	2006-03-19	2006-03-25
117	117	2006-03-26	2006-04-01
118	118	2006-04-02	2006-04-08
119	119	2006-04-09	2006-04-15
120	120	2006-04-16	2006-04-22
121	121	2006-04-23	2006-04-29
122	122	2006-04-30	2006-05-06
123	123	2006-05-07	2006-05-13
124	124	2006-05-14	2006-05-20
125	125	2006-05-21	2006-05-27
126	126	2006-05-28	2006-06-03
127	127	2006-06-04	2006-06-10
128	128	2006-06-11	2006-06-17
129	129	2006-06-18	2006-06-24
130	130	2006-06-25	2006-07-01
131	131	2006-07-02	2006-07-08
132	132	2006-07-09	2006-07-15
133	133	2006-07-16	2006-07-22
134	134	2006-07-23	2006-07-29
135	135	2006-07-30	2006-08-05
136	136	2006-08-06	2006-08-12
137	137	2006-08-13	2006-08-19
138	138	2006-08-20	2006-08-26
139	139	2006-08-27	2006-09-02
140	140	2006-09-03	2006-09-09
141	141	2006-09-10	2006-09-16
142	142	2006-09-17	2006-09-23
143	143	2006-09-24	2006-09-30
144	144	2006-10-01	2006-10-07
145	145	2006-10-08	2006-10-14
146	146	2006-10-15	2006-10-21
147	147	2006-10-22	2006-10-28
148	148	2006-10-29	2006-11-04
149	149	2006-11-05	2006-11-11
150	150	2006-11-12	2006-11-18
151	151	2006-11-19	2006-11-25
152	152	2006-11-26	2006-12-02
153	153	2006-12-03	2006-12-09
154	154	2006-12-10	2006-12-16
155	155	2006-12-17	2006-12-23
156	156	2006-12-24	2006-12-30
157	157	2006-12-31	2007-01-06
158	158	2007-01-07	2007-01-13
159	159	2007-01-14	2007-01-20
160	160	2007-01-21	2007-01-27
161	161	2007-01-28	2007-02-03
162	162	2007-02-04	2007-02-10
163	163	2007-02-11	2007-02-17
164	164	2007-02-18	2007-02-24
165	165	2007-02-25	2007-03-03
166	166	2007-03-04	2007-03-10
167	167	2007-03-11	2007-03-17
168	168	2007-03-18	2007-03-24
169	169	2007-03-25	2007-03-31
170	170	2007-04-01	2007-04-07
171	171	2007-04-08	2007-04-14
172	172	2007-04-15	2007-04-21
173	173	2007-04-22	2007-04-28
174	174	2007-04-29	2007-05-05
175	175	2007-05-06	2007-05-12
176	176	2007-05-13	2007-05-19
177	177	2007-05-20	2007-05-26
178	178	2007-05-27	2007-06-02
179	179	2007-06-03	2007-06-09
180	180	2007-06-10	2007-06-16
181	181	2007-06-17	2007-06-23
182	182	2007-06-24	2007-06-30
183	183	2007-07-01	2007-07-07
184	184	2007-07-08	2007-07-14
185	185	2007-07-15	2007-07-21
186	186	2007-07-22	2007-07-28
187	187	2007-07-29	2007-08-04
188	188	2007-08-05	2007-08-11
189	189	2007-08-12	2007-08-18
190	190	2007-08-19	2007-08-25
191	191	2007-08-26	2007-09-01
192	192	2007-09-02	2007-09-08
193	193	2007-09-09	2007-09-15
194	194	2007-09-16	2007-09-22
195	195	2007-09-23	2007-09-29
196	196	2007-09-30	2007-10-06
197	197	2007-10-07	2007-10-13
198	198	2007-10-14	2007-10-20
199	199	2007-10-21	2007-10-27
200	200	2007-10-28	2007-11-03
201	201	2007-11-04	2007-11-10
202	202	2007-11-11	2007-11-17
203	203	2007-11-18	2007-11-24
204	204	2007-11-25	2007-12-01
205	205	2007-12-02	2007-12-08
206	206	2007-12-09	2007-12-15
207	207	2007-12-16	2007-12-22
208	208	2007-12-23	2007-12-29
209	209	2007-12-30	2008-01-05
210	210	2008-01-06	2008-01-12
211	211	2008-01-13	2008-01-19
212	212	2008-01-20	2008-01-26
213	213	2008-01-27	2008-02-02
214	214	2008-02-03	2008-02-09
215	215	2008-02-10	2008-02-16
216	216	2008-02-17	2008-02-23
217	217	2008-02-24	2008-03-01
218	218	2008-03-02	2008-03-08
219	219	2008-03-09	2008-03-15
220	220	2008-03-16	2008-03-22
221	221	2008-03-23	2008-03-29
222	222	2008-03-30	2008-04-05
223	223	2008-04-06	2008-04-12
224	224	2008-04-13	2008-04-19
225	225	2008-04-20	2008-04-26
226	226	2008-04-27	2008-05-03
227	227	2008-05-04	2008-05-10
228	228	2008-05-11	2008-05-17
229	229	2008-05-18	2008-05-24
230	230	2008-05-25	2008-05-31
231	231	2008-06-01	2008-06-07
232	232	2008-06-08	2008-06-14
233	233	2008-06-15	2008-06-21
234	234	2008-06-22	2008-06-28
235	235	2008-06-29	2008-07-05
236	236	2008-07-06	2008-07-12
237	237	2008-07-13	2008-07-19
238	238	2008-07-20	2008-07-26
239	239	2008-07-27	2008-08-02
240	240	2008-08-03	2008-08-09
241	241	2008-08-10	2008-08-16
242	242	2008-08-17	2008-08-23
243	243	2008-08-24	2008-08-30
244	244	2008-08-31	2008-09-06
245	245	2008-09-07	2008-09-13
246	246	2008-09-14	2008-09-20
247	247	2008-09-21	2008-09-27
248	248	2008-09-28	2008-10-04
249	249	2008-10-05	2008-10-11
250	250	2008-10-12	2008-10-18
251	251	2008-10-19	2008-10-25
252	252	2008-10-26	2008-11-01
253	253	2008-11-02	2008-11-08
254	254	2008-11-09	2008-11-15
255	255	2008-11-16	2008-11-22
256	256	2008-11-23	2008-11-29
257	257	2008-11-30	2008-12-06
258	258	2008-12-07	2008-12-13
259	259	2008-12-14	2008-12-20
260	260	2008-12-21	2008-12-27
261	261	2008-12-28	2009-01-03
262	262	2009-01-04	2009-01-10
263	263	2009-01-11	2009-01-17
264	264	2009-01-18	2009-01-24
265	265	2009-01-25	2009-01-31
266	266	2009-02-01	2009-02-07
267	267	2009-02-08	2009-02-14
268	268	2009-02-15	2009-02-21
269	269	2009-02-22	2009-02-28
270	270	2009-03-01	2009-03-07
271	271	2009-03-08	2009-03-14
272	272	2009-03-15	2009-03-21
273	273	2009-03-22	2009-03-28
274	274	2009-03-29	2009-04-04
275	275	2009-04-05	2009-04-11
276	276	2009-04-12	2009-04-18
277	277	2009-04-19	2009-04-25
278	278	2009-04-26	2009-05-02
279	279	2009-05-03	2009-05-09
280	280	2009-05-10	2009-05-16
281	281	2009-05-17	2009-05-23
282	282	2009-05-24	2009-05-30
283	283	2009-05-31	2009-06-06
284	284	2009-06-07	2009-06-13
285	285	2009-06-14	2009-06-20
286	286	2009-06-21	2009-06-27
287	287	2009-06-28	2009-07-04
288	288	2009-07-05	2009-07-11
289	289	2009-07-12	2009-07-18
290	290	2009-07-19	2009-07-25
291	291	2009-07-26	2009-08-01
292	292	2009-08-02	2009-08-08
293	293	2009-08-09	2009-08-15
294	294	2009-08-16	2009-08-22
295	295	2009-08-23	2009-08-29
296	296	2009-08-30	2009-09-05
297	297	2009-09-06	2009-09-12
298	298	2009-09-13	2009-09-19
299	299	2009-09-20	2009-09-26
300	300	2009-09-27	2009-10-03
301	301	2009-10-04	2009-10-10
302	302	2009-10-11	2009-10-17
303	303	2009-10-18	2009-10-24
304	304	2009-10-25	2009-10-31
305	305	2009-11-01	2009-11-07
306	306	2009-11-08	2009-11-14
307	307	2009-11-15	2009-11-21
308	308	2009-11-22	2009-11-28
309	309	2009-11-29	2009-12-05
310	310	2009-12-06	2009-12-12
311	311	2009-12-13	2009-12-19
312	312	2009-12-20	2009-12-26
313	313	2009-12-27	2010-01-02
314	314	2010-01-03	2010-01-09
315	315	2010-01-10	2010-01-16
316	316	2010-01-17	2010-01-23
317	317	2010-01-24	2010-01-30
318	318	2010-01-31	2010-02-06
319	319	2010-02-07	2010-02-13
320	320	2010-02-14	2010-02-20
321	321	2010-02-21	2010-02-27
322	322	2010-02-28	2010-03-06
323	323	2010-03-07	2010-03-13
324	324	2010-03-14	2010-03-20
325	325	2010-03-21	2010-03-27
326	326	2010-03-28	2010-04-03
327	327	2010-04-04	2010-04-10
328	328	2010-04-11	2010-04-17
329	329	2010-04-18	2010-04-24
330	330	2010-04-25	2010-05-01
331	331	2010-05-02	2010-05-08
332	332	2010-05-09	2010-05-15
333	333	2010-05-16	2010-05-22
334	334	2010-05-23	2010-05-29
335	335	2010-05-30	2010-06-05
336	336	2010-06-06	2010-06-12
337	337	2010-06-13	2010-06-19
338	338	2010-06-20	2010-06-26
339	339	2010-06-27	2010-07-03
340	340	2010-07-04	2010-07-10
341	341	2010-07-11	2010-07-17
342	342	2010-07-18	2010-07-24
343	343	2010-07-25	2010-07-31
344	344	2010-08-01	2010-08-07
345	345	2010-08-08	2010-08-14
346	346	2010-08-15	2010-08-21
347	347	2010-08-22	2010-08-28
348	348	2010-08-29	2010-09-04
349	349	2010-09-05	2010-09-11
350	350	2010-09-12	2010-09-18
351	351	2010-09-19	2010-09-25
352	352	2010-09-26	2010-10-02
353	353	2010-10-03	2010-10-09
354	354	2010-10-10	2010-10-16
355	355	2010-10-17	2010-10-23
356	356	2010-10-24	2010-10-30
357	357	2010-10-31	2010-11-06
358	358	2010-11-07	2010-11-13
359	359	2010-11-14	2010-11-20
360	360	2010-11-21	2010-11-27
361	361	2010-11-28	2010-12-04
362	362	2010-12-05	2010-12-11
363	363	2010-12-12	2010-12-18
364	364	2010-12-19	2010-12-25
365	365	2010-12-26	2011-01-01
366	366	2011-01-02	2011-01-08
367	367	2011-01-09	2011-01-15
368	368	2011-01-16	2011-01-22
369	369	2011-01-23	2011-01-29
370	370	2011-01-30	2011-02-05
371	371	2011-02-06	2011-02-12
372	372	2011-02-13	2011-02-19
373	373	2011-02-20	2011-02-26
374	374	2011-02-27	2011-03-05
375	375	2011-03-06	2011-03-12
376	376	2011-03-13	2011-03-19
377	377	2011-03-20	2011-03-26
378	378	2011-03-27	2011-04-02
379	379	2011-04-03	2011-04-09
380	380	2011-04-10	2011-04-16
381	381	2011-04-17	2011-04-23
382	382	2011-04-24	2011-04-30
383	383	2011-05-01	2011-05-07
384	384	2011-05-08	2011-05-14
385	385	2011-05-15	2011-05-21
386	386	2011-05-22	2011-05-28
387	387	2011-05-29	2011-06-04
388	388	2011-06-05	2011-06-11
389	389	2011-06-12	2011-06-18
390	390	2011-06-19	2011-06-25
391	391	2011-06-26	2011-07-02
392	392	2011-07-03	2011-07-09
393	393	2011-07-10	2011-07-16
394	394	2011-07-17	2011-07-23
395	395	2011-07-24	2011-07-30
396	396	2011-07-31	2011-08-06
397	397	2011-08-07	2011-08-13
398	398	2011-08-14	2011-08-20
399	399	2011-08-21	2011-08-27
400	400	2011-08-28	2011-09-03
401	401	2011-09-04	2011-09-10
402	402	2011-09-11	2011-09-17
403	403	2011-09-18	2011-09-24
404	404	2011-09-25	2011-10-01
405	405	2011-10-02	2011-10-08
406	406	2011-10-09	2011-10-15
407	407	2011-10-16	2011-10-22
408	408	2011-10-23	2011-10-29
409	409	2011-10-30	2011-11-05
410	410	2011-11-06	2011-11-12
411	411	2011-11-13	2011-11-19
412	412	2011-11-20	2011-11-26
413	413	2011-11-27	2011-12-03
414	414	2011-12-04	2011-12-10
415	415	2011-12-11	2011-12-17
416	416	2011-12-18	2011-12-24
417	417	2011-12-25	2011-12-31
418	418	2012-01-01	2012-01-07
419	419	2012-01-08	2012-01-14
420	420	2012-01-15	2012-01-21
421	421	2012-01-22	2012-01-28
422	422	2012-01-29	2012-02-04
423	423	2012-02-05	2012-02-11
424	424	2012-02-12	2012-02-18
425	425	2012-02-19	2012-02-25
426	426	2012-02-26	2012-03-03
427	427	2012-03-04	2012-03-10
428	428	2012-03-11	2012-03-17
429	429	2012-03-18	2012-03-24
430	430	2012-03-25	2012-03-31
431	431	2012-04-01	2012-04-07
432	432	2012-04-08	2012-04-14
433	433	2012-04-15	2012-04-21
434	434	2012-04-22	2012-04-28
435	435	2012-04-29	2012-05-05
436	436	2012-05-06	2012-05-12
437	437	2012-05-13	2012-05-19
438	438	2012-05-20	2012-05-26
439	439	2012-05-27	2012-06-02
440	440	2012-06-03	2012-06-09
441	441	2012-06-10	2012-06-16
442	442	2012-06-17	2012-06-23
443	443	2012-06-24	2012-06-30
444	444	2012-07-01	2012-07-07
445	445	2012-07-08	2012-07-14
446	446	2012-07-15	2012-07-21
447	447	2012-07-22	2012-07-28
448	448	2012-07-29	2012-08-04
449	449	2012-08-05	2012-08-11
450	450	2012-08-12	2012-08-18
451	451	2012-08-19	2012-08-25
452	452	2012-08-26	2012-09-01
453	453	2012-09-02	2012-09-08
454	454	2012-09-09	2012-09-15
455	455	2012-09-16	2012-09-22
456	456	2012-09-23	2012-09-29
457	457	2012-09-30	2012-10-06
458	458	2012-10-07	2012-10-13
459	459	2012-10-14	2012-10-20
460	460	2012-10-21	2012-10-27
461	461	2012-10-28	2012-11-03
462	462	2012-11-04	2012-11-10
463	463	2012-11-11	2012-11-17
464	464	2012-11-18	2012-11-24
465	465	2012-11-25	2012-12-01
466	466	2012-12-02	2012-12-08
467	467	2012-12-09	2012-12-15
468	468	2012-12-16	2012-12-22
469	469	2012-12-23	2012-12-29
470	470	2012-12-30	2013-01-05
471	471	2013-01-06	2013-01-12
472	472	2013-01-13	2013-01-19
473	473	2013-01-20	2013-01-26
474	474	2013-01-27	2013-02-02
475	475	2013-02-03	2013-02-09
476	476	2013-02-10	2013-02-16
477	477	2013-02-17	2013-02-23
478	478	2013-02-24	2013-03-02
479	479	2013-03-03	2013-03-09
480	480	2013-03-10	2013-03-16
481	481	2013-03-17	2013-03-23
482	482	2013-03-24	2013-03-30
483	483	2013-03-31	2013-04-06
484	484	2013-04-07	2013-04-13
485	485	2013-04-14	2013-04-20
486	486	2013-04-21	2013-04-27
487	487	2013-04-28	2013-05-04
488	488	2013-05-05	2013-05-11
489	489	2013-05-12	2013-05-18
490	490	2013-05-19	2013-05-25
491	491	2013-05-26	2013-06-01
492	492	2013-06-02	2013-06-08
493	493	2013-06-09	2013-06-15
494	494	2013-06-16	2013-06-22
495	495	2013-06-23	2013-06-29
496	496	2013-06-30	2013-07-06
497	497	2013-07-07	2013-07-13
498	498	2013-07-14	2013-07-20
499	499	2013-07-21	2013-07-27
500	500	2013-07-28	2013-08-03
501	501	2013-08-04	2013-08-10
502	502	2013-08-11	2013-08-17
503	503	2013-08-18	2013-08-24
504	504	2013-08-25	2013-08-31
505	505	2013-09-01	2013-09-07
506	506	2013-09-08	2013-09-14
507	507	2013-09-15	2013-09-21
508	508	2013-09-22	2013-09-28
509	509	2013-09-29	2013-10-05
510	510	2013-10-06	2013-10-12
511	511	2013-10-13	2013-10-19
512	512	2013-10-20	2013-10-26
513	513	2013-10-27	2013-11-02
514	514	2013-11-03	2013-11-09
515	515	2013-11-10	2013-11-16
516	516	2013-11-17	2013-11-23
517	517	2013-11-24	2013-11-30
518	518	2013-12-01	2013-12-07
519	519	2013-12-08	2013-12-14
520	520	2013-12-15	2013-12-21
521	521	2013-12-22	2013-12-28
522	522	2013-12-29	2014-01-04
523	523	2014-01-05	2014-01-11
524	524	2014-01-12	2014-01-18
525	525	2014-01-19	2014-01-25
526	526	2014-01-26	2014-02-01
527	527	2014-02-02	2014-02-08
528	528	2014-02-09	2014-02-15
529	529	2014-02-16	2014-02-22
530	530	2014-02-23	2014-03-01
531	531	2014-03-02	2014-03-08
532	532	2014-03-09	2014-03-15
533	533	2014-03-16	2014-03-22
534	534	2014-03-23	2014-03-29
535	535	2014-03-30	2014-04-05
536	536	2014-04-06	2014-04-12
537	537	2014-04-13	2014-04-19
538	538	2014-04-20	2014-04-26
539	539	2014-04-27	2014-05-03
540	540	2014-05-04	2014-05-10
541	541	2014-05-11	2014-05-17
542	542	2014-05-18	2014-05-24
543	543	2014-05-25	2014-05-31
544	544	2014-06-01	2014-06-07
545	545	2014-06-08	2014-06-14
546	546	2014-06-15	2014-06-21
547	547	2014-06-22	2014-06-28
548	548	2014-06-29	2014-07-05
549	549	2014-07-06	2014-07-12
550	550	2014-07-13	2014-07-19
551	551	2014-07-20	2014-07-26
552	552	2014-07-27	2014-08-02
553	553	2014-08-03	2014-08-09
554	554	2014-08-10	2014-08-16
555	555	2014-08-17	2014-08-23
556	556	2014-08-24	2014-08-30
557	557	2014-08-31	2014-09-06
558	558	2014-09-07	2014-09-13
559	559	2014-09-14	2014-09-20
560	560	2014-09-21	2014-09-27
561	561	2014-09-28	2014-10-04
562	562	2014-10-05	2014-10-11
563	563	2014-10-12	2014-10-18
564	564	2014-10-19	2014-10-25
565	565	2014-10-26	2014-11-01
566	566	2014-11-02	2014-11-08
567	567	2014-11-09	2014-11-15
568	568	2014-11-16	2014-11-22
569	569	2014-11-23	2014-11-29
570	570	2014-11-30	2014-12-06
571	571	2014-12-07	2014-12-13
572	572	2014-12-14	2014-12-20
573	573	2014-12-21	2014-12-27
574	574	2014-12-28	2015-01-03
575	575	2015-01-04	2015-01-10
576	576	2015-01-11	2015-01-17
577	577	2015-01-18	2015-01-24
578	578	2015-01-25	2015-01-31
579	579	2015-02-01	2015-02-07
580	580	2015-02-08	2015-02-14
581	581	2015-02-15	2015-02-21
582	582	2015-02-22	2015-02-28
583	583	2015-03-01	2015-03-07
584	584	2015-03-08	2015-03-14
585	585	2015-03-15	2015-03-21
586	586	2015-03-22	2015-03-28
587	587	2015-03-29	2015-04-04
588	588	2015-04-05	2015-04-11
589	589	2015-04-12	2015-04-18
590	590	2015-04-19	2015-04-25
591	591	2015-04-26	2015-05-02
592	592	2015-05-03	2015-05-09
593	593	2015-05-10	2015-05-16
594	594	2015-05-17	2015-05-23
595	595	2015-05-24	2015-05-30
596	596	2015-05-31	2015-06-06
597	597	2015-06-07	2015-06-13
598	598	2015-06-14	2015-06-20
599	599	2015-06-21	2015-06-27
600	600	2015-06-28	2015-07-04
601	601	2015-07-05	2015-07-11
602	602	2015-07-12	2015-07-18
603	603	2015-07-19	2015-07-25
604	604	2015-07-26	2015-08-01
605	605	2015-08-02	2015-08-08
606	606	2015-08-09	2015-08-15
607	607	2015-08-16	2015-08-22
608	608	2015-08-23	2015-08-29
609	609	2015-08-30	2015-09-05
610	610	2015-09-06	2015-09-12
611	611	2015-09-13	2015-09-19
612	612	2015-09-20	2015-09-26
613	613	2015-09-27	2015-10-03
614	614	2015-10-04	2015-10-10
615	615	2015-10-11	2015-10-17
616	616	2015-10-18	2015-10-24
617	617	2015-10-25	2015-10-31
618	618	2015-11-01	2015-11-07
619	619	2015-11-08	2015-11-14
620	620	2015-11-15	2015-11-21
621	621	2015-11-22	2015-11-28
622	622	2015-11-29	2015-12-05
623	623	2015-12-06	2015-12-12
624	624	2015-12-13	2015-12-19
625	625	2015-12-20	2015-12-26
626	626	2015-12-27	2016-01-02
627	627	2016-01-03	2016-01-09
628	628	2016-01-10	2016-01-16
629	629	2016-01-17	2016-01-23
630	630	2016-01-24	2016-01-30
631	631	2016-01-31	2016-02-06
632	632	2016-02-07	2016-02-13
633	633	2016-02-14	2016-02-20
634	634	2016-02-21	2016-02-27
635	635	2016-02-28	2016-03-05
636	636	2016-03-06	2016-03-12
637	637	2016-03-13	2016-03-19
638	638	2016-03-20	2016-03-26
639	639	2016-03-27	2016-04-02
640	640	2016-04-03	2016-04-09
641	641	2016-04-10	2016-04-16
642	642	2016-04-17	2016-04-23
643	643	2016-04-24	2016-04-30
\.


--
-- Name: semana_id_semana_seq; Type: SEQUENCE SET; Schema: popularidade_its; Owner: dissertacao
--

SELECT pg_catalog.setval('semana_id_semana_seq', 643, true);


SET search_path = public, pg_catalog;

--
-- Data for Name: issue_tracking_system; Type: TABLE DATA; Schema: public; Owner: dissertacao
--

COPY issue_tracking_system (id_issue_tracking_system, cod_issue_tracking_system, nome_issue_tracking_system, descricao, criador, licenca, linguagem_implementacao, back_end, ano_lancamento, url) FROM stdin;
\.


--
-- Name: issue_tracking_system_id_issue_tracking_system_seq; Type: SEQUENCE SET; Schema: public; Owner: dissertacao
--

SELECT pg_catalog.setval('issue_tracking_system_id_issue_tracking_system_seq', 1, false);


SET search_path = mapeamento_its, pg_catalog;

--
-- Name: entries_pkey; Type: CONSTRAINT; Schema: mapeamento_its; Owner: dissertacao; Tablespace: 
--

ALTER TABLE ONLY entries
    ADD CONSTRAINT entries_pkey PRIMARY KEY (entries_id);


--
-- Name: entry_group_pkey; Type: CONSTRAINT; Schema: mapeamento_its; Owner: dissertacao; Tablespace: 
--

ALTER TABLE ONLY entry_group
    ADD CONSTRAINT entry_group_pkey PRIMARY KEY (groups_id, entries_id);


--
-- Name: entry_types_pkey; Type: CONSTRAINT; Schema: mapeamento_its; Owner: dissertacao; Tablespace: 
--

ALTER TABLE ONLY entry_types
    ADD CONSTRAINT entry_types_pkey PRIMARY KEY (entry_types_id);


--
-- Name: group_types_pkey; Type: CONSTRAINT; Schema: mapeamento_its; Owner: dissertacao; Tablespace: 
--

ALTER TABLE ONLY group_types
    ADD CONSTRAINT group_types_pkey PRIMARY KEY (group_types_id);


--
-- Name: groups_pkey; Type: CONSTRAINT; Schema: mapeamento_its; Owner: dissertacao; Tablespace: 
--

ALTER TABLE ONLY groups
    ADD CONSTRAINT groups_pkey PRIMARY KEY (groups_id);


--
-- Name: jabref_database_pkey; Type: CONSTRAINT; Schema: mapeamento_its; Owner: dissertacao; Tablespace: 
--

ALTER TABLE ONLY jabref_database
    ADD CONSTRAINT jabref_database_pkey PRIMARY KEY (database_id);


--
-- Name: strings_pkey; Type: CONSTRAINT; Schema: mapeamento_its; Owner: dissertacao; Tablespace: 
--

ALTER TABLE ONLY strings
    ADD CONSTRAINT strings_pkey PRIMARY KEY (strings_id);


SET search_path = popularidade_its, pg_catalog;

--
-- Name: pk_semana; Type: CONSTRAINT; Schema: popularidade_its; Owner: dissertacao; Tablespace: 
--

ALTER TABLE ONLY semana
    ADD CONSTRAINT pk_semana PRIMARY KEY (id_semana);


--
-- Name: uq_cod_semana; Type: CONSTRAINT; Schema: popularidade_its; Owner: dissertacao; Tablespace: 
--

ALTER TABLE ONLY semana
    ADD CONSTRAINT uq_cod_semana UNIQUE (cod_semana);


SET search_path = public, pg_catalog;

--
-- Name: issue_tracking_system_cod_issue_tracking_system_key; Type: CONSTRAINT; Schema: public; Owner: dissertacao; Tablespace: 
--

ALTER TABLE ONLY issue_tracking_system
    ADD CONSTRAINT issue_tracking_system_cod_issue_tracking_system_key UNIQUE (cod_issue_tracking_system);


--
-- Name: issue_tracking_system_pkey; Type: CONSTRAINT; Schema: public; Owner: dissertacao; Tablespace: 
--

ALTER TABLE ONLY issue_tracking_system
    ADD CONSTRAINT issue_tracking_system_pkey PRIMARY KEY (id_issue_tracking_system);


SET search_path = mapeamento_its, pg_catalog;

--
-- Name: entries_database_id_fkey; Type: FK CONSTRAINT; Schema: mapeamento_its; Owner: dissertacao
--

ALTER TABLE ONLY entries
    ADD CONSTRAINT entries_database_id_fkey FOREIGN KEY (database_id) REFERENCES jabref_database(database_id);


--
-- Name: entries_entry_types_id_fkey; Type: FK CONSTRAINT; Schema: mapeamento_its; Owner: dissertacao
--

ALTER TABLE ONLY entries
    ADD CONSTRAINT entries_entry_types_id_fkey FOREIGN KEY (entry_types_id) REFERENCES entry_types(entry_types_id);


--
-- Name: entry_group_entries_id_fkey; Type: FK CONSTRAINT; Schema: mapeamento_its; Owner: dissertacao
--

ALTER TABLE ONLY entry_group
    ADD CONSTRAINT entry_group_entries_id_fkey FOREIGN KEY (entries_id) REFERENCES entries(entries_id) ON DELETE CASCADE;


--
-- Name: entry_group_groups_id_fkey; Type: FK CONSTRAINT; Schema: mapeamento_its; Owner: dissertacao
--

ALTER TABLE ONLY entry_group
    ADD CONSTRAINT entry_group_groups_id_fkey FOREIGN KEY (groups_id) REFERENCES groups(groups_id);


--
-- Name: groups_database_id_fkey; Type: FK CONSTRAINT; Schema: mapeamento_its; Owner: dissertacao
--

ALTER TABLE ONLY groups
    ADD CONSTRAINT groups_database_id_fkey FOREIGN KEY (database_id) REFERENCES jabref_database(database_id);


--
-- Name: strings_database_id_fkey; Type: FK CONSTRAINT; Schema: mapeamento_its; Owner: dissertacao
--

ALTER TABLE ONLY strings
    ADD CONSTRAINT strings_database_id_fkey FOREIGN KEY (database_id) REFERENCES jabref_database(database_id);


--
-- Name: public; Type: ACL; Schema: -; Owner: dissertacao
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM dissertacao;
GRANT ALL ON SCHEMA public TO dissertacao;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

