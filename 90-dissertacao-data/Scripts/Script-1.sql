select t.dimensao_melhoria, 
	   t.topico_classificacao,
	   count(1)
from mapeamento_its.temp_esquema_classificao_melhoria t
group by t.dimensao_melhoria, 
	   t.topico_classificacao
order by t.dimensao_melhoria, count(1) desc