select "temp-perfil-participantes"."What is the current size of your team?" as tamanho_equipe,
	   count(1) as total 
from "temp-perfil-participantes" 
where "What is the current size of your team?" <> '' 
group by "temp-perfil-participantes"."What is the current size of your team?"