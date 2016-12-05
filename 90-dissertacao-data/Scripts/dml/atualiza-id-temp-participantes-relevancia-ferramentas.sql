
select *
from  caracterizacao_its.temp_relevancia_ferramentas;

update caracterizacao_its.temp_relevancia_ferramentas r
	set  id_temp_participantes = (select p.id_temp_participantes
					            from caracterizacao_its.temp_participantes p
					            where p.cod_participante = r.cod_participante
					            );
commit;
select *
from  caracterizacao_its.temp_relevancia_ferramentas;	


