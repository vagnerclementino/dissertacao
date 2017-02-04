select  vw.nome_funcao_classificada as funcao,
	    count(1) as frequencia
from caracterizacao_its.temp_participantes vw 
where vw.cod_participante <> 'P999'
group by vw.nome_funcao_classificada
order by count(1) desc;

select vw.tempo_experiencia_participante as tempo_experiencia,
	   count(1) frequencia
from caracterizacao_its.temp_participantes vw 
where vw.cod_participante <> 'P999'
group by vw.tempo_experiencia_participante
order by count(1) desc;


select vw.local_trabaho_participante as local_trabalho,
	   count(1) frequencia
from caracterizacao_its.temp_participantes vw 
where vw.cod_participante <> 'P999'
group by vw.local_trabaho_participante
order by count(1) desc;



select vw.tamanho_equipe_participante as tamanho_equipe,
	   count(1) frequencia
from caracterizacao_its.temp_participantes vw 
where vw.cod_participante <> 'P999'
group by vw.tamanho_equipe_participante
order by count(1) desc;


select *
from caracterizacao_its.temp_participantes


select *
from email_sender.lista_negra_participantes
