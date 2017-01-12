drop table if exists email_sender.lista_negra_participantes;

create table email_sender.lista_negra_participantes (

	id_lista_negra_participantes SERIAL not null,
	email_participante VARCHAR(500) not null,
	motivo_inclusao TEXT not null,
	data_inclusao  timestamp default now(),
	data_atualizacao timestamp default now()
);

-- COMMENTS
comment on table email_sender.lista_negra_participantes is 
'Tabela para armazenar o email dos participantes do survey que devem ser excluídos do processo de envio';

comment on column email_sender.lista_negra_participantes.id_lista_negra_participantes is
'Chave primária autoincrementada';

comment on column  email_sender.lista_negra_participantes.email_participante is 
'Armazena o email do participante que será excluído do envio';

comment on column email_sender.lista_negra_participantes.motivo_inclusao is 
'Descreve o motivo de inclusão do email do participante na lista negra';


comment on column email_sender.lista_negra_participantes.data_inclusao is 
'Data e hora de inclusão do email do participante na lista negra';

comment on column email_sender.lista_negra_participantes.data_atualizacao is 
'Data e hora de atualização do registro';

-- CONSTRAINTS
alter table email_sender.lista_negra_participantes
add constraint pk_lista_negra_participantes
primary key(id_lista_negra_participantes);

alter table email_sender.lista_negra_participantes
add constraint uq_lista_negra_participantes_email_participante
unique (email_participante);



-- INDEX
CREATE INDEX idx_listanegrpart_mailpart ON email_sender.lista_negra_participantes (email_participante);


-- GRANTS
grant select, insert, update , delete on email_sender.lista_negra_participantes to email_sender;
grant usage on email_sender.lista_negra_participantes_id_lista_negra_participantes_seq to email_sender;
