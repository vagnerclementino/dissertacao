select *
from mapeamento_its.temp_esquema_classificao_melhoria t
where t.dimensao_melhoria = 'Informação'
order by dimensao_melhoria, topico_classificacao
