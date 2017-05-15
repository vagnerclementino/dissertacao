select *
from (
SELECT 	'Completude Palavras-Chaves' as "Dimensão",
	   COUNT("Completude Palavras-Chaves") - SUM("Completude Palavras-Chaves") as "Frequência"
FROM issue_quality.vw_erros_dimensoes

union all 

SELECT 	'Anexo',
	   COUNT("Anexo") - SUM("Anexo") 
FROM issue_quality.vw_erros_dimensoes


union all 

SELECT 	'Legibilidade do texto',
	   COUNT("Legibilidade do texto") - SUM("Legibilidade do texto") 
FROM issue_quality.vw_erros_dimensoes

union all 

SELECT 	'Fragmento de Código',
	   COUNT("Fragmento de Código") - SUM("Fragmento de Código") 
FROM issue_quality.vw_erros_dimensoes


union all 

SELECT 	'Etapas para Reproduzir',
	   COUNT("Etapas para Reproduzir") - SUM("Etapas para Reproduzir") 
FROM issue_quality.vw_erros_dimensoes
) vw
order by  "Frequência" desc;

