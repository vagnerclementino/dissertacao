select vw.papel_suportado_ferramenta,
	   count(1) as total
from mapeamento_its.vw_papel_suportados_artigos vw 
where (vw.papel_suportado_ferramenta <> 'N/A' and vw.papel_suportado_ferramenta <> 'Sem papel específico')
group by vw.papel_suportado_ferramenta
order by count(1) desc;

select t.id_temp_artigos_escolhidos, t.papel_suportado_ferramenta
FROM mapeamento_its.temp_artigos_escolhidos t
WHERE upper(t.artigo_sera_incluido::text) = 'SIM'::text 
order by t.papel_suportado_ferramenta;