select "temp-perfil-participantes"."What is your current location?" as localizacao,
	   count(1)
from "temp-perfil-participantes" 
group by "temp-perfil-participantes"."What is your current location?";


select "temp-perfil-participantes"."In your organization context, what is your job title?" as funcao,
	   count(1) as total 
from "temp-perfil-participantes" 
where "In your organization context, what is your job title?" <> '' 
group by "temp-perfil-participantes"."In your organization context, what is your job title?"


select "temp-perfil-participantes"."For how long have you been working in development or maintenance of software?" as tempo_experiencia,
	   count(1) as total 
from "temp-perfil-participantes" 
where "For how long have you been working in development or maintenance of software?" <> '' 
group by "temp-perfil-participantes"."For how long have you been working in development or maintenance of software?"

