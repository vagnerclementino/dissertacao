create or replace view mapeamento_its.vw_palavras_chaves_artigos as
(select vw.identificador_artigo,
	   vw.titulo_artigo, 
	   vw.contribuicao_artigo,
	   vw.resumo_artigo,
	   trim(unnest(string_to_array(vw.palavras_chaves_artigo, ','))) as palavra_chave
from mapeamento_its.vw_artigos_mapeamento vw
);