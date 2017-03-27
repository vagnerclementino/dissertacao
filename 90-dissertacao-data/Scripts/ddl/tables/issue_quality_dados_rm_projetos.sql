drop table if exists issue_quality.dados_rm_projetos;

create table issue_quality.dados_rm_projetos (
    id_dados_rm_projetos SERIAL,
	project  VARCHAR(1000) not null,
	id_rm SMALLINT not null,
	type_rm VARCHAR(1000) ,
	opendate VARCHAR(1000) ,
	changeddate VARCHAR(1000) ,
	priority VARCHAR(1000),
	platform VARCHAR(1000) ,
	assigntodemail VARCHAR(1000) ,
	assignedtoname VARCHAR(1000) ,
	reporteremail VARCHAR(1000) ,
	reportername VARCHAR(1000) ,
	status VARCHAR(1000) ,
	resolution VARCHAR(1000) ,
	version VARCHAR(1000) ,
	component VARCHAR(1000) ,
	description text not null,
	data_atualizacao timestamp default now()
);

-- COMMENTS
comment on table issue_quality.dados_rm_projetos is 
'Tabela para armazenar os dados de rm de projetos de código aberto';
/*

comment on column issue_quality.dados_rm_projetos.id_dados_rm_projetos is
'Chave primária autoincrementada';

comment on column issue_quality.dados_rm_projetos.nome_participante is
'Armazena o nome do participate';

comment on column  issue_quality.dados_rm_projetos.email_participante is 
'Armazena o email do participate';

comment on column  issue_quality.dados_rm_projetos.projeto_participante is 
'Armazena o nome do projeto ou origem do participante';


comment on column  issue_quality.dados_rm_projetos.url_formulario is 
'Armazena a URL para do formulário que será preenchido pelo participante';

comment on column issue_quality.dados_rm_projetos.data_atualizacao is 
'Data e hora de atualização do registro';
*/

-- CONSTRAINTS
alter table issue_quality.dados_rm_projetos
add constraint pk_dados_rm_projetos
primary key(id_dados_rm_projetos);




-- INDEX
CREATE INDEX idx_dadosrm_project ON  issue_quality.dados_rm_projetos(project);
CREATE INDEX idx_dadosrm_id ON issue_quality.dados_rm_projetos (id_rm);
