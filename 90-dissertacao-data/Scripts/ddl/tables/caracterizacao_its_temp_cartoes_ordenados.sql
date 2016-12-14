DROP TABLE IF EXISTS caracterizacao_its.temp_cartoes_ordenados;

CREATE TABLE  caracterizacao_its.temp_cartoes_ordenados(
    id_temp_cartoes_ordenados SERIAL,
    data_hora_preenchimento   TIMESTAMP NOT NULL,
    nome_ferramenta           VARCHAR(100) NOT NULL,
    url_documentacao          VARCHAR(500) NOT NULL,
    nome_funcionalidade       VARCHAR(300) NOT NULL,
    descricao_funcionalidade  TEXT NOT NULL,
    observacoes               TEXT NULL
);


ALTER  TABLE caracterizacao_its.temp_cartoes_ordenados
    ADD CONSTRAINT  pk_emp_cartoes_ordernado PRIMARY KEY (id_temp_cartoes_ordenados);

