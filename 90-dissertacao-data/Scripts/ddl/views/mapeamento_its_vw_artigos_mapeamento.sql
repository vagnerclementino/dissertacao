create or replace view mapeamento_its.vw_artigos_mapeamento as
(SELECT identificador_artigo,
	   titulo_artigo,
	   resumo_artigo,
	   palavras_chaves_artigo,
	   contribuicao_artigo,
	   papel_suportado_ferramenta,
	   query_retrieve_information,
	   document_retrieve_information,
	   reasoning_retrieve_information,
	   ferramenta_artigo,
	   artigo_usa_base_ferramenta,
	   virou_extensao_ferramenta,
	   observacoes
FROM mapeamento_its.temp_artigos_escolhidos
where upper(artigo_sera_incluido) = 'SIM'
);