/*************************************************************

 Seleciona o tempo de execução da extensão.

 *************************************************************/


SELECT 'todos' as projeto,
		1 as "sequencia",
		avg(duration)::NUMERIC(5,2) as media,
		median(duration::numeric)::NUMERIC(5,2) as mediana,
		STDDEV(duration)::NUMERIC(5,2) as desvio_padrao,
		min (duration)::NUMERIC(5,2) as min,
		max(duration)::NUMERIC(5,2) as max
FROM issue_quality.vw_tempo_execucao_extensao
group by 1,2

union all

SELECT repo_name as projeto,
		"sequence",
		avg(duration)::NUMERIC(5,2) as media,
		median(duration::numeric)::NUMERIC(5,2) as mediana,
		STDDEV(duration)::NUMERIC(5,2) as desvio_padrao,
		min (duration)::NUMERIC(5,2) as min,
		max(duration)::NUMERIC(5,2) as max
FROM issue_quality.vw_tempo_execucao_extensao
group by repo_name, "sequence";
