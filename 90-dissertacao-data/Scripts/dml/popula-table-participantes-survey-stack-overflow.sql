insert
	into
		email_sender.participantes_survey(
			nome_participante,
			email_participante,
			data_atualizacao,
			id_grupo_participante
		) select
			distinct vwuso.displayname,
			vwuso.usermail,
			now(),
			(
				select
					gp.id_grupo_participante
				from
					email_sender.grupo_participante gp
				where
					gp.nome_grupo = 'Stack Overflow'
			)
		from
			oss_comunity.vw_user_stackoverflow vwuso
		where
			TRIM(vwuso.usermail) not in (
				select
					TRIM(ps.email_participante)
				from
					email_sender.participantes_survey ps
					);

--commit;