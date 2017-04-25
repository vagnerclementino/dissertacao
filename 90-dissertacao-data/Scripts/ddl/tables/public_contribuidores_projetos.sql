drop table if exists public.contribuidores_projetos;

create table public.contribuidores_projetos (
	id_contribuidores_projetos SERIAL not null,
    cod_contribuidor  SMALLINT not null,
    nome_contribuidor VARCHAR(4000) not null,
	email_contribuidor VARCHAR(500) not null,
	data_atualizacao timestamp default now()
);

-- COMMENTS
comment on table public.contribuidores_projetos is
'Tabela para armazenar os dados de contribuidores de projeto do Github que
participam de avaliações realizadas na dissertação.'

comment on column public.contribuidores_projetos.id_contribuidores_projetos is
'Chave primária autoincrementada';

comment on column public.contribuidores_projetos.cod_contribuidor is
'Código único de identificação do contribuidor. Código sequencial atribuido
apenas para o projeto.'

comment on column public.contribuidores_projetos.nome_contribuidor is
'Nome do contribuidor'

comment on column  public.contribuidores_projetos.email_contribuidor is
'Armazena o email do contribuidor';

comment on column public.contribuidores_projetos.data_atualizacao is
'Data e hora de atualização do registro';

-- CONSTRAINTS
alter table public.contribuidores_projetos
add constraint pk_contribuidores_projetos
primary key(id_contribuidores_projetos);

alter table public.contribuidores_projetos
add constraint uq_contribprojetos_codcontribuidor
unique (cod_contribuidor)

alter table public.contribuidores_projetos
add constraint uq_contribproj_emailcontribuidor
unique (email_contribuidor);

-- INDICES
CREATE INDEX idx_regenvio_mailpart
ON public.contribuidores_projetos (email_contribuidor);

-- GRANTS
