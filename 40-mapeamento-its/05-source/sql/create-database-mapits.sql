-- Database: mapits

-- DROP DATABASE mapits;

CREATE DATABASE mapits
  WITH OWNER = vagner
       ENCODING = 'UTF8'
       TABLESPACE = pg_default
       LC_COLLATE = 'pt_BR.UTF-8'
       LC_CTYPE = 'pt_BR.UTF-8'
       CONNECTION LIMIT = -1;

COMMENT ON DATABASE mapits
  IS 'Banco de Dados criado criado para armazenar os dados do Mapeamento Sistemático sobre Issue Tracking System'