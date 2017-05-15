create or replace view issue_quality.vw_erros_dimensoes as (
SELECT  repo_name, 
	    issue_number,
		"sequence",
	 	case
	 	 when (array_length( string_to_array(  kc_expected_observed_behavior::text 	|| 
					      kc_action_items::text   				||
						  kc_build_related::text  				|| 
						  kc_user_interface_elements::text  	|| 
						  kc_documentation_related::text 		|| 
						  kc_source_code_related::text  		|| 
						  kc_project_related, '0') , 1) - 1 ) >= 5 then
						  0
						  else
						  1
						  end   as  "Completude Palavras-Chaves",
						  attach_file as "Anexo",
		CASE 
			WHEN ( (readability_ari  >= 13 and readability_dale_chall >= 13) or  
				   (readability_ari  >= 13 and readability_flesch <= 50) or (
				   readability_dale_chall >= 13 and readability_flesch <= 5)
				 ) THEN

			0
		
		ELSE 
		
			1 
		
		end as "Legibilidade do texto",	    
	
		code_fragment as "Fragmento de Código",
		step_to_reproduce as "Etapas para Reproduzir"
FROM issue_quality.project_comments
)
