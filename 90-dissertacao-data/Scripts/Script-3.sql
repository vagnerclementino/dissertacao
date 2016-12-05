select r.nome_ferramenta,
	   r.relevancia,
	   count(1) as frequencia
from caracterizacao_its.temp_relevancia_ferramentas r
group by r.nome_ferramenta,
	   	 r.relevancia
order by r.nome_ferramenta,
	   	 r.relevancia