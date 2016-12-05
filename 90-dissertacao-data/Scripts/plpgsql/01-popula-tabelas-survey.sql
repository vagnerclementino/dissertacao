DO 
$$
DECLARE
    participant_id integer := 0;
    id_temp_participantes integer;
    participant_cod CHAR(4);
    cr_avaliacao record;
    CONST_REGISTRADOR CONSTANT varchar :=  'Registrar Requisição de Mudança em uma FGRM';
    CONST_GERENTE CONSTANT varchar   :=  'Decidir se uma Requisição de Mudança será aceita ou rejeitada e qual tipo de manutenção deverá ser aplicada';
	CONST_AGENDADOR CONSTANT varchar   :=  'Planejar a fila de Requisições de Mudança (RM) aceitas e atribuir atribuição das RM’s para o desenvolver mais apto';
	CONST_DESENVOLVEDOR CONSTANT varchar   :=  'Realizar as ações que irão solucionar a Requisição de Mudança';
	CONST_TESTADOR CONSTANT varchar   :=  'Avaliar se uma Requisição de Mudança foi solucionada corretamente';
	CONST_CHEFE CONSTANT varchar   :=  'Definir os padrões e procedimentos que compõe o processo de manutenção que será utilizado';
    							 
begin
	
	delete 
	from caracterizacao_its.temp_frequencia_atividades_participante;
	
	delete
	from caracterizacao_its.temp_relevancia_ferramentas;
		
	delete 
	from caracterizacao_its.temp_participantes;
    
	for cr_avaliacao in (select * 
						 from caracterizacao_its.temp_avaliacao_ferramentas
						 ) 
	loop
		
	    
		id_temp_participantes := nextval('caracterizacao_its.temp_participantes_id_temp_participantes_seq'::regclass);
		
		
		INSERT INTO caracterizacao_its.temp_participantes
					(id_temp_participantes,
					 cod_participante,
					 nome_funcao_participante,
					 desc_atribuicoes_participante,
					 tipo_atividade_participante,
					 tempo_experiencia_participante,
					 local_trabaho_participante,
					 tamanho_equipe_participante,
					 receber_resultado,
					 participar_novamente,
					 data_atualizacao
					 )
		VALUES(id_temp_participantes,
			   cr_avaliacao."Código Participante",
			   cr_avaliacao."Nome da Função",
			   cr_avaliacao."Descrição das atribuições",
			   cr_avaliacao."Tipo de atividade",
			   cr_avaliacao."Tempo de experiência",
			   cr_avaliacao."Tipo local de trabalho",
			   cr_avaliacao."Tamanho da equipe",
			   cr_avaliacao."Receber resultado",
			   cr_avaliacao."Participar novamente",
			   now());	
			   
	   INSERT INTO caracterizacao_its.temp_frequencia_atividades_participante
					(id_temp_frequencia_atividades_participante,
					id_temp_participantes,
					atividade,
					frequencia,
					data_atualizacao)
					VALUES(nextval('caracterizacao_its.temp_frequencia_atividades_pa_id_temp_frequencia_atividades_seq'::regclass),
					id_temp_participantes, 
					CONST_REGISTRADOR, 
					cr_avaliacao."Frequência Registrar Requisição de Mudança em uma FGRM",
					now());

	 INSERT INTO caracterizacao_its.temp_frequencia_atividades_participante
					(id_temp_frequencia_atividades_participante,
					id_temp_participantes,
					atividade,
					frequencia,
					data_atualizacao)
					VALUES(nextval('caracterizacao_its.temp_frequencia_atividades_pa_id_temp_frequencia_atividades_seq'::regclass),
					id_temp_participantes, 
					CONST_GERENTE, 
					cr_avaliacao."Frequência Decidir se uma Requisição de Mudança será aceit",
					now());
					
	 INSERT INTO caracterizacao_its.temp_frequencia_atividades_participante
					(id_temp_frequencia_atividades_participante,
					id_temp_participantes,
					atividade,
					frequencia,
					data_atualizacao)
					VALUES(nextval('caracterizacao_its.temp_frequencia_atividades_pa_id_temp_frequencia_atividades_seq'::regclass),
					id_temp_participantes, 
					CONST_AGENDADOR, 
					cr_avaliacao."Frequência Planejar a fila de Requisições de Mudança (RM) a",
					now());
					
	 INSERT INTO caracterizacao_its.temp_frequencia_atividades_participante
					(id_temp_frequencia_atividades_participante,
					id_temp_participantes,
					atividade,
					frequencia,
					data_atualizacao)
					VALUES(nextval('caracterizacao_its.temp_frequencia_atividades_pa_id_temp_frequencia_atividades_seq'::regclass),
					id_temp_participantes, 
					CONST_DESENVOLVEDOR, 
					cr_avaliacao."Frequência Realizar as ações que irão solucionar a Requisi",
					now());
	 INSERT INTO caracterizacao_its.temp_frequencia_atividades_participante
					(id_temp_frequencia_atividades_participante,
					id_temp_participantes,
					atividade,
					frequencia,
					data_atualizacao)
					VALUES(nextval('caracterizacao_its.temp_frequencia_atividades_pa_id_temp_frequencia_atividades_seq'::regclass),
					id_temp_participantes, 
					CONST_TESTADOR, 
					cr_avaliacao."Frequência Avaliar se uma Requisição de Mudança foi solucio",
					now());
					
	 INSERT INTO caracterizacao_its.temp_frequencia_atividades_participante
					(id_temp_frequencia_atividades_participante,
					id_temp_participantes,
					atividade,
					frequencia,
					data_atualizacao)
					VALUES(nextval('caracterizacao_its.temp_frequencia_atividades_pa_id_temp_frequencia_atividades_seq'::regclass),
					id_temp_participantes, 
					CONST_CHEFE, 
					cr_avaliacao."Frequência Definir os padrões e procedimentos que compõe o p",
					now());				
			
					
					
					
	
	end loop;
	
	raise notice 'Carga executada com sucesso!';
	
EXCEPTION
    WHEN others THEN
 		raise notice 'Error message: % Erro Code: %', SQLERRM, SQLSTATE;
END;
$$ LANGUAGE plpgsql;