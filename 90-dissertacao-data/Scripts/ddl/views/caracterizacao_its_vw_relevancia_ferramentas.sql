drop view if exists caracterizacao_its.vw_relevancia_ferramentas;
create or replace view caracterizacao_its.vw_relevancia_ferramentas as (
select vw.nome_ferramenta,
	  vw.relevancia,
	  count(1) as frequencia
from (select  r.nome_ferramenta,
	  coalesce(tt.pt_br_termo, r.relevancia) as relevancia  
	  from caracterizacao_its.temp_relevancia_ferramentas r
	  left join public.traducao_termos tt
	   on tt.en_us_termo = r.relevancia
	   WHERE  r.relevancia  <> ''
      )vw
	  group by vw.nome_ferramenta,
	  	 vw.relevancia
);

commit;