CREATE OR REPLACE  VIEW public.vw_tempo_exec_consultas AS (

  SELECT db.datname as banco_de_dados,
         u.rolname as usuario,
         (total_time/sum(total_time) OVER()) * 100 AS tempo_execucao,
         calls total_chamadas,
         query consulta
  FROM information_schema.pg_stat_statements est
  INNER JOIN pg_catalog.pg_database db
      ON est.dbid = db.OID
  INNER JOIN pg_catalog.pg_authid u
      on u.OID = est.userid
  where db.datname = current_database()
  and  u.rolname = current_user
  ORDER BY total_time
  DESC LIMIT 100
);