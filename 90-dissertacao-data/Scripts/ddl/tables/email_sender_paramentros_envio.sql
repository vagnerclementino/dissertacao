drop table if exists email_sender.parametros_envio;

create table email_sender.parametros_envio (

	id_parametros_envio SERIAL not null,
	ind_bloqueio_envio CHAR(1) not null,
	max_num_envios smallint not null,
	data_atualizacao timestamp default now()
);

-- COMMENTS
comment on table email_sender.parametros_envio is 
'Tabela para armazenar os paramentos de envio aos participantes do survey';

comment on column email_sender.parametros_envio.id_parametros_envio is
'Chave primária autoincrementada';

comment on column email_sender.parametros_envio.ind_bloqueio_envio is
'Indica se o envio esta bloqueado ind_bloqueio_envio = S ou esta permitido ind_bloqueio_envio = N';

comment on column  email_sender.parametros_envio.max_num_envios is 
'Armazena o número máximo de envio que será realizada para determinado usuário';

comment on column email_sender.parametros_envio.data_atualizacao is 
'Data e hora de atualização do registro';

-- CONSTRAINTS
alter table email_sender.parametros_envio
add constraint pk_parametros_envio
primary key(id_parametros_envio);

alter table email_sender.parametros_envio
add constraint chk_indbloqenvio_sn
check (ind_bloqueio_envio in ('S','N'));

alter table email_sender.parametros_envio
add constraint chk_maxnumenvio_gtezero
check (max_num_envios >= 0);


-- GRANTS
grant select, insert, update , delete on email_sender.parametros_envio to email_sender;
grant usage on email_sender.parametros_envio_id_parametros_envio_seq to email_sender;
