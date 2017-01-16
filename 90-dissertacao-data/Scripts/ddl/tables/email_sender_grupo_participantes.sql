drop table if exists email_sender.grupo_participante;

create table email_sender.grupo_participante (

	id_grupo_participante SERIAL not null,
	nome_grupo VARCHAR(500) not null,
	url_grupo VARCHAR(500) not null,
	url_formulario VARCHAR(500) not null,
	data_atualizacao timestamp default now()
);

-- COMMENTS
comment on table email_sender.grupo_participante is 
'Tabela para armazenar o grupo que cada participante pertence';

comment on column email_sender.grupo_participante.id_grupo_participante is
'Chave primária autoincrementada';

comment on column email_sender.grupo_participante.nome_grupo is
'Armazena o nome do grupo';

comment on column  email_sender.grupo_participante.url_grupo is 
'Armazena a URL que identifica o grupo, que pode ser o site de onde as informações do grupo foi reterida, por exemplo';

comment on column  email_sender.grupo_participante.url_formulario is 
'Armazena a URL para do formulário que será preenchido pelo participante';

comment on column email_sender.grupo_participante.data_atualizacao is 
'Data e hora de atualização do registro';

-- CONSTRAINTS
alter table email_sender.grupo_participante
add constraint pk_grupo_participante
primary key(id_grupo_participante);


-- INDEX
CREATE INDEX idx_grupopart_nome_grupo ON email_sender.grupo_participante (nome_grupo);

-- GRANTS
grant select, insert, update , delete on email_sender.grupo_participante to email_sender;
grant usage on email_sender.grupo_participante_id_grupo_participante_seq to email_sender;
