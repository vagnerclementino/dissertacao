drop table IF EXISTS mapeamento_its.revisao_artigo;

create table mapeamento_its.revisao_artigo(
	id_revisao_artigo SERIAL,
	data_hora_revisao TIMESTAMP not null,
	cite_key VARCHAR(50) not null,
	titulo_artigo VARCHAR(200) not null,
	ano_artigo SMALLSERIAL not null,
	resumo_artigo TEXT,
	situacao_artigo VARCHAR(50) not null,
	observacao varchar(1000),
	data_atualizacao TIMESTAMP default now()
);


alter table mapeamento_its.revisao_artigo
add constraint pk_revisao_artigo primary KEY(id_revisao_artigo);


alter table mapeamento_its.revisao_artigo
add constraint uq_cite_key unique (cite_key);

