-- Table: popularidade_its.semana

-- DROP TABLE popularidade_its.semana;

CREATE TABLE popularidade_its.semana
(
  id_semana smallserial NOT NULL, -- Chave primária incrementada automaticamente
  cod_semana smallint NOT NULL, -- Código da semana, valor único
  data_inicio_semana date NOT NULL, -- Armazena o primeiro dia da semana
  data_fim_semana date NOT NULL, -- Coluna que armazena a data do fim da semana
  CONSTRAINT pk_semana PRIMARY KEY (id_semana),
  CONSTRAINT uq_cod_semana UNIQUE (cod_semana)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE popularidade_its.semana
  OWNER TO vagner;
COMMENT ON TABLE popularidade_its.semana
  IS 'Tabela que armazena as semanas relativo ao período de tempo em que a popularidade foi avaliada';
COMMENT ON COLUMN popularidade_its.semana.id_semana IS 'Chave primária incrementada automaticamente';
COMMENT ON COLUMN popularidade_its.semana.cod_semana IS 'Código da semana, valor único';
COMMENT ON COLUMN popularidade_its.semana.data_inicio_semana IS 'Armazena o primeiro dia da semana';
COMMENT ON COLUMN popularidade_its.semana.data_fim_semana IS 'Coluna que armazena a data do fim da semana';

