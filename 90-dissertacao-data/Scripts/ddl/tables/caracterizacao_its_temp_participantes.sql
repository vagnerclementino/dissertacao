drop table IF EXISTS caracterizacao_its.temp_participantes;

CREATE TABLE caracterizacao_its.temp_participantes(
    id_temp_participantes SERIAL,
    cod_participante CHAR(4) not null,
    nome_funcao_participante VARCHAR(3000) not null,
    desc_atribuicoes_participante TEXT not null,
    tipo_atividade_participante VARCHAR(3000) not null,
    tempo_experiencia_participante VARCHAR(100) not null,
    local_trabaho_participante VARCHAR(300) not null,
    tamanho_equipe_participante VARCHAR(50) not null,
    receber_resultado VARCHAR(3) not null,
    participar_novamente VARCHAR(3) not null,
    data_atualizacao TIMESTAMP
);


alter table caracterizacao_its.temp_participantes
add constraint pk_temp_participantes primary KEY(id_temp_participantes);

alter table caracterizacao_its.temp_participantes
add constraint uq_temppart_codpart UNIQUE(cod_participante);

commit;