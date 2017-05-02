INSERT INTO email_sender.grupo_participante
(id_grupo_participante, nome_grupo, url_grupo, url_formulario, data_atualizacao)

(select nextval('email_sender.grupo_participante_id_grupo_participante_seq'::regclass) as id_grupo_participante,
	  vw.nome_grupo as nome_grupo,
	  lower('https://github.com/' || vw.projeto) as url_grupo,
	  'https://goo.gl/forms/ykxeOUfAeBZs6e1R2' as  url_formulario,
	  now()
from (
select distinct upper(substring(cp.projeto from (position('/' in cp.projeto) + 1) for length(cp.projeto))) as nome_grupo,
				cp.projeto as projeto
FROM public.contribuidores_projetos cp
where upper(substring(cp.projeto from (position('/' in cp.projeto) + 1) for length(cp.projeto))) not in 

(select distinct gs.nome_grupo
from email_sender.participantes_survey ps
inner join email_sender.grupo_participante gs
	 on gs.id_grupo_participante = ps.id_grupo_participante
	 )
	)vw 
)
	