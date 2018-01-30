create table rsvp.confirmacao_presenca(
id_confirmacao_presenca serial,
nome varchar(200) not null,
email varchar(200) not null,
evento varchar(200) not null,
acompanhante varchar(200) not null,
observacao text
);

alter table rsvp.confirmacao_presenca
add constraint pk_confirmacao_presenca
primary key(id_confirmacao_presenca);