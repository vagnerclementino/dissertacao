select *
from email_sender.parametros_envio;

select *
from email_sender.lista_negra_participantes;

select count(1)
from email_sender.participantes_survey ps 
where exists
	(select 1
	from oss_comunity.vw_user_stackoverflow vw
	where trim(lower(ps.email_participante)) = trim(lower(vw.usermail))
	and vw.reputation <= 1000
	)

select *
from email_sender.registro_envio re 
where re.email_participante like 'a.vieira%';

select *
from email_sender.participantes_survey ps 
order by ps.id_participantes_survey;


update email_sender.participantes_survey ps
   set ind_ativo = 'S'
where ps.id_participantes_survey <= 6


select *
from email_sender.lista_negra_participantes l
where l.email_participante like 'a.vi%'
 