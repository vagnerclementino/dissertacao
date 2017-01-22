insert
	into
		email_sender.participantes_survey(
			nome_participante,
			email_participante,
			data_atualizacao,
			id_grupo_participante
		) select
			vwup.real_name,
			vwup.github_mail,
			now(),
			(
				select
					gp.id_grupo_participante
				from
					email_sender.grupo_participante gp
				where
					gp.nome_grupo = 'Python'
			)
		from
			oss_comunity.vw_user_python_project vwup;

commit;