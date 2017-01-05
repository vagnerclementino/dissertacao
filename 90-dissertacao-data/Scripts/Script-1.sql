select *
from mapeamento_its.temp_esquema_classificao_melhoria t
where t.dimensao_melhoria = 'Processo'
and t.termo_dimensao = 'duplicate bug reports'
order by dimensao_melhoria, topico_classificacao
