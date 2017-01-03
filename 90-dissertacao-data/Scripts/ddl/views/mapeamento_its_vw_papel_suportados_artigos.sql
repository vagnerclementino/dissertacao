create or replace view mapeamento_its.vw_papel_suportados_artigos as
(select vw.identificador_artigo,
	   vw.titulo_artigo, 
	   vw.contribuicao_artigo,
	   vw.resumo_artigo,
	   trim(unnest(string_to_array(vw.papel_suportado_ferramenta, ','))) as papel_suportado_ferramenta
from mapeamento_its.vw_artigos_mapeamento vw
);