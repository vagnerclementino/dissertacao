drop table if exists email_sender.registro_envio;

create table email_sender.registro_envio (

	id_registro_envio SERIAL not null,
	email_participante VARCHAR(500) not null,
	data_envio_email timestamp default now(),
	data_atualizacao timestamp default now()
);

-- COMMENTS
comment on table email_sender.registro_envio is 
'Tabela para armazenar o registro do envio de email para os participantes';

comment on column email_sender.registro_envio.id_registro_envio is
'Chave primária autoincrementada';

comment on column  email_sender.registro_envio.email_participante is 
'Armazena o email do participate';

comment on column email_sender.registro_envio.data_envio_email is 
'Data e hora de envio do e-mail';

comment on column email_sender.registro_envio.data_atualizacao is 
'Data e hora de atualização do registro';

-- CONSTRAINTS
alter table email_sender.registro_envio
add constraint pk_registro_envio
primary key(id_registro_envio);

CREATE INDEX idx_regenvio_mailpart ON email_sender.registro_envio (email_participante);

CREATE INDEX idx_regenvio_mailpartdtenvio ON email_sender.registro_envio (email_participante, data_envio_email);

-- GRANTS
grant select, insert, update , delete on email_sender.registro_envio to email_sender;
grant usage on email_sender.registro_envio_id_registro_envio_seq to email_sender;
