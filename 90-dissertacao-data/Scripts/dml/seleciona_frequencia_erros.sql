
select 'Todos'as "Projeto",
	   avg("Ocorrências")::numeric(5,2) as "Média",
	   median("Ocorrências"::numeric)::numeric(5,2)  as "Mediana",
	   stddev("Ocorrências")::numeric(5,2)  as "Desvio Padrão",	
	   min("Ocorrências")::numeric(5,2)  as "Min",
	   max("Ocorrências")::numeric(5,2)  as "Max"


from (SELECT repo_name as "Projeto", 
			( 5 - ("Completude Palavras-Chaves" + "Anexo" +  "Legibilidade do texto" +  "Fragmento de Código" +  "Etapas para Reproduzir") ) as "Ocorrências"
	FROM issue_quality.vw_erros_dimensoes
     ) vw
     
group by  1

union all 


select "Projeto", 
	   avg("Ocorrências")::numeric(5,2) as "Média",
	   median("Ocorrências"::numeric)::numeric(5,2)  as "Mediana",
	   stddev("Ocorrências")::numeric(5,2)  as "Desvio Padrão",
	   min("Ocorrências")::numeric(5,2)  as "Min",
	   max("Ocorrências")::numeric(5,2)  as "Max"


from (SELECT repo_name as "Projeto", 
			( 5 - ("Completude Palavras-Chaves" + "Anexo" +  "Legibilidade do texto" +  "Fragmento de Código" +  "Etapas para Reproduzir") ) as "Ocorrências"
	FROM issue_quality.vw_erros_dimensoes
     ) vw
group by  "Projeto";
