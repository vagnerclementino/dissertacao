	select t.dimensao_melhoria,
		   count(1) as frequencia
		   
	from mapeamento_its.temp_esquema_classificao_melhoria t
	group by t.dimensao_melhoria
	order by count(1) desc
