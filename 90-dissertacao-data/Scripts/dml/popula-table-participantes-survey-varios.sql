INSERT INTO email_sender.participantes_survey
(id_participantes_survey, nome_participante, email_participante, data_atualizacao, id_grupo_participante, ind_ativo)
(
SELECT nextval('email_sender.participantes_survey_id_participantes_survey_seq'::regclass) as id_participantes_survey,
	   cp.nome_contribuidor as nome_participante,
	   cp.email_contribuidor as email_participante,
	   now() as data_atualizacao,
	   gp.id_grupo_participante as id_grupo_participante,
	   'S' as ind_ativo
FROM public.contribuidores_projetos cp 
inner join email_sender.grupo_participante gp 
	on gp.nome_grupo = upper(substring(cp.projeto from (position('/' in cp.projeto) + 1) for length(cp.projeto)))
where cp.cod_contribuidor >= 331
);