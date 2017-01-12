drop table if exists email_sender.participantes_survey;

create table email_sender.participantes_survey (

	id_participantes_survey SERIAL not null,
	nome_participante VARCHAR(500) not null,
	email_participante VARCHAR(500) not null,
	projeto_participante VARCHAR(100) not null,
	url_formulario VARCHAR(100) not null,
	data_atualizacao timestamp default now()
);

-- COMMENTS
comment on table email_sender.participantes_survey is 
'Tabela para armazenar os possíveis participantes do survey';

comment on column email_sender.participantes_survey.id_participantes_survey is
'Chave primária autoincrementada';

comment on column email_sender.participantes_survey.nome_participante is
'Armazena o nome do participate';

comment on column  email_sender.participantes_survey.email_participante is 
'Armazena o email do participate';

comment on column  email_sender.participantes_survey.projeto_participante is 
'Armazena o nome do projeto ou origem do participante';


comment on column  email_sender.participantes_survey.url_formulario is 
'Armazena a URL para do formulário que será preenchido pelo participante';

comment on column email_sender.participantes_survey.data_atualizacao is 
'Data e hora de atualização do registro';

-- CONSTRAINTS
alter table email_sender.participantes_survey
add constraint pk_participantes_survey
primary key(id_participantes_survey);


-- INDEX
CREATE INDEX idx_partsurv_mailpart ON email_sender.participantes_survey (email_participante);
CREATE INDEX idx_partsurv_nomemailprojc ON email_sender.participantes_survey (nome_participante,email_participante,projeto_participante);


-- GRANTS
grant select, insert, update , delete on email_sender.participantes_survey to email_sender;
grant usage on email_sender.participantes_survey_id_participantes_survey_seq to email_sender;
