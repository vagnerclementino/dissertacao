select
	t.id_temp_cartoes_ordenados,
	nome_ferramenta,
	nome_funcionalidade,
	descricao_funcionalidade,
	topico_funcionalidade,
	categoria,
	dimensao
from
	caracterizacao_its.temp_cartoes_ordenados t
where t.dimensao like 'Processo%'
order by t.dimensao, t.categoria, t.topico_funcionalidade;


select

	t.categoria,
	count(1)
from
	caracterizacao_its.temp_cartoes_ordenados t
where t.categoria is not null
group by t.categoria
order by count(1) desc;


