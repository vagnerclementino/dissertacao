create or replace view mapeamento_its.vw_artigos_escolhidos as (
SELECT id_revisao_artigo,
	 to_char(data_hora_revisao, 'DD/MM/YYYY HH:MM:SS') as data_hora_revisao,
	 cite_key,
	 titulo_artigo,
	 ano_artigo,
	 resumo_artigo,
	 situacao_artigo,
	 observacao,
	 to_char(data_atualizacao, 'DD/MM/YYYY HH:MM:SS') as data_atualizacao
	 "Python" as project
FROM mapeamento_its.revisao_artigo ra
where ra.ano_artigo >= 2010
and ra.situacao_artigo like 'INCLU%'
);