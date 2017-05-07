drop table if exists issue_quality.project_comments;

create table issue_quality.project_comments (
    id_project_comments SERIAL,
    repo_name  VARCHAR(200) not NULL,
    issue_number smallint not null,
    "sequence" smallint not null, 
    kc_expected_observed_behavior smallint not null,
    kc_action_items smallint not null,
    kc_build_related smallint not null,
    kc_user_interface_elements smallint not null,
    kc_documentation_related smallint not null,
    kc_source_code_related smallint not null,
    kc_project_related smallint not null,
    kc_attach_file smallint not null,
    readability_ari decimal(5,2) not null,
    readability_dale_chall decimal(5,2) not null,
    readability_flesch decimal(5,2) not null,
    code_fragment smallint not null,
    step_to_reproduce smallint not null,
    start_time  timestamp not null,
    finish_time timestamp not null,
    "comment" text,
	data_atualizacao timestamp default now()
);

-- COMMENTS
comment on table issue_quality.project_comments is 
'Tabela para armazenar a os comentários gerados após execução da ferramenta issuequality';


-- CONSTRAINTS
alter table issue_quality.project_comments
add constraint pk_project_comments
primary key(id_project_comments);


alter table issue_quality.project_comments
add constraint uq_projcomments_repoissuesequence
UNIQUE (repo_name, issue_number, "sequence");



-- INDEX
--CREATE INDEX idx_dadosrm_project ON  issue_quality.project_comments(project);
--CREATE INDEX idx_dadosrm_id ON issue_quality.project_comments (id_rm);
