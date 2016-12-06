create or replace view mapeamento_its.vw_ir_tecnica_artigos as
(
select vw.identificador_artigo,
	   vw.titulo_artigo, 
	   vw.contribuicao_artigo,
	   vw.resumo_artigo,
	   vw.query_retrieve_information,
	   vw.document_retrieve_information,
	   vw.reasoning_retrieve_information
	   
from mapeamento_its.vw_artigos_mapeamento vw
where vw.query_retrieve_information not in ('Não utiliza',
											'N/A'
										    )
										    
);										    