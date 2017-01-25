select t.id_temp_cartoes_ordenados,
		nome_ferramenta,
		nome_funcionalidade,
		descricao_funcionalidade,
	topico_funcionalidade
from caracterizacao_its.temp_cartoes_ordenados t
order by t.topico_funcionalidade, t.id_temp_cartoes_ordenados;