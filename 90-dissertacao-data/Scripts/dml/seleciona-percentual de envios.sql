select   to_char( count(1) / (select count(1)
from email_sender.participantes_survey ps2
				   )::float8, 'FM999999990.000') as percentual
from email_sender.registro_envio re 
where exists (select 1 from email_sender.participantes_survey ps2 
			 where ps2.email_participante = re.email_participante
			 )
and re.data_envio_email::date >= now()::date