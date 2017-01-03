drop table if  exists mapeamento_its.temp_artigos_escolhidos;

CREATE TABLE mapeamento_its.temp_artigos_escolhidos (
	id_temp_artigos_escolhidos SERIAL not null,
	data_hora_preenchimento timestamp not null,
	identificador_artigo varchar(500) not null,
	titulo_artigo varchar(500) not null,
	resumo_artigo text not null,
	palavras_chaves_artigo varchar(500) not null,
	contribuicao_artigo text not null,
	papel_suportado_ferramenta varchar(500) not null,
	query_retrieve_information varchar(500) not null,
	document_retrieve_information varchar(500) not null,
	reasoning_retrieve_information varchar(500) not null,
	ferramenta_artigo varchar(500) not null,
	artigo_usa_base_ferramenta char(3) not null,
	virou_extensao_ferramenta char(3) not null,
	artigo_sera_incluido char(3) not null,
	observacoes text null
);

alter table mapeamento_its.temp_artigos_escolhidos 
add constraint pk_temp_artigos_escolhidos primary key (id_temp_artigos_escolhidos);

alter table mapeamento_its.temp_artigos_escolhidos 
add constraint uq_temp_artigos_id_artigo unique(identificador_artigo);