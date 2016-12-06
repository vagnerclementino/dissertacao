drop table if exists public.traducao_termos;
create table public.traducao_termos(
	id_traducao_termos SERIAL not null,
	pt_br_termo TEXT not null,
	en_us_termo TEXT not null,
	data_atualizada timestamp default now()
	);

alter table public.traducao_termos
add constraint pk_traducao_termos
primary key (id_traducao_termos);



