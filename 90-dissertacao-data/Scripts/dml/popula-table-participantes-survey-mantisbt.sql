insert
	into
		email_sender.participantes_survey(
			id_participantes_survey,
			nome_participante,
			email_participante,
			data_atualizacao,
			id_grupo_participante,
			ind_ativo
		)(
			select
				nextval(
					'email_sender.participantes_survey_id_participantes_survey_seq'::regclass
				) as id_participantes_survey,
				cp.nome_contribuidor as nome_participante,
				cp.email_contribuidor as email_participante,
				now() as data_atualizacao,
				(
					select
						gp.id_grupo_participante
					from
						email_sender.grupo_participante gp
					where
						gp.nome_grupo = 'MANTISBT'
				) as id_grupo_participante,
				'N'::bpchar as ind_ativo
			from
				public.contribuidores_projetos cp
			where
				cp.projeto = 'mantisbt/mantisbt'
		);