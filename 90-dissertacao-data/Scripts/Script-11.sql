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


select *
from mapeamento_its.vw_ir_tecnica_artigos vw 
where vw.titulo_artigo in (


select t.titulo_artigo
from  mapeamento_its.temp_esquema_classificao_melhoria t 
where t.topico_classificacao = 'Localização de RM Duplicados'

)


select *
from public.contribuidores_projetos

