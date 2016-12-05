select vw2.nome_ferramenta,
	    SUM(vw.pontuacao) as indice_relevancia_ferramenta
 from (select vw.nome_ferramenta,
			   case coalesce(vw.relevancia,'Não conheço a ferramenta')
			   	  	when 'Não conheço a ferramenta' then vw.frequencia * 1
			   	  	when 'Nada relevante' then vw.frequencia * 2
			   	  	when 'Pouco relevante' then vw.frequencia * 3			
					when 'Relevante' then vw.frequencia * 4
					when 'Muito relevante' then vw.frequencia * 5	   	 
			   end	as pontuacao
		from (select r.nome_ferramenta,
			   r.relevancia,
			   count(1) as frequencia
			  from caracterizacao_its.temp_relevancia_ferramentas r
			  group by r.nome_ferramenta,
			   	 	 r.relevancia
			 ) vw
)vw2
group by vw2.nome_ferramenta
order by  SUM(vw.pontuacao) desc;