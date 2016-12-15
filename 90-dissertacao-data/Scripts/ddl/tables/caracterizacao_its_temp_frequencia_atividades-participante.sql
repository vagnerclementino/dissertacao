drop table IF EXISTS caracterizacao_its.temp_frequencia_atividades_participante;

CREATE TABLE caracterizacao_its.temp_frequencia_atividades_participante(
    id_temp_frequencia_atividades_participante SERIAL,
    id_temp_participantes integer,
    atividade VARCHAR(200) not null,
    frequencia VARCHAR(200) not null,
    data_atualizacao TIMESTAMP
);


alter table caracterizacao_its.temp_frequencia_atividades_participante
add constraint pk_temp_frequencia_atividades_participante 
primary KEY(id_temp_frequencia_atividades_participante);

alter table caracterizacao_its.temp_frequencia_atividades_participante
add constraint pf_freqatividades_participante
foreign key (id_temp_participantes)
references caracterizacao_its.temp_participantes(id_temp_participantes);

commit;