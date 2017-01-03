select vw2.ano_artigo::numeric, count(1) as frequencia
from mapeamento_its.vw_artigos_mapeamento vw
inner join mapeamento_its.vw_artigos_escolhidos vw2
	on vw2.titulo_artigo = vw.titulo_artigo
group by vw2.ano_artigo
order by vw2.ano_artigo