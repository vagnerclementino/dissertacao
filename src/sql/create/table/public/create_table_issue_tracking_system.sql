DROP TABLE public.issue_tracking_system;

CREATE TABLE IF NOT EXISTS public.issue_tracking_system(
	id_issue_tracking_system    SMALLSERIAL NOT NULL,
	cod_issue_tracking_system   SMALLINT NOT NULL,
	nome_issue_tracking_system  VARCHAR(50) NOT NULL,
	descricao		    VARCHAR(3000) NOT NULL,
	criador         	    VARCHAR(50) NOT NULL,
	licenca			    VARCHAR(100) NOT NULL,
	linguagem_implementacao	   VARCHAR(100) NOT NULL,
	back_end		   VARCHAR(100) NOT NULL,
	ano_lancamento		   SMALLINT NOT NULL,
	url			   VARCHAR(2000) NOT NULL
);

-- PK
ALTER TABLE public.issue_tracking_system
ADD PRIMARY KEY (id_issue_tracking_system);

-- UNIQUE
ALTER TABLE public.issue_tracking_system
ADD UNIQUE (cod_issue_tracking_system);