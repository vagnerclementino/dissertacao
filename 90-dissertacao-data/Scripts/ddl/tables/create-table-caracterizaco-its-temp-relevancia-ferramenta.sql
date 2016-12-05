drop table IF EXISTS caracterizacao_its.temp_relevancia_ferramentas;

CREATE TABLE caracterizacao_its.temp_relevancia_ferramentas(
    id_temp_relevancia_ferramentas SERIAL,
    id_temp_participantes integer,
    cod_participante CHAR(4) not null,
    nome_ferramenta VARCHAR(50) not null,
    relevancia VARCHAR(100)
    
);


alter table caracterizacao_its.temp_relevancia_ferramentas
add constraint pk_temp_relevancia_ferramentas 
primary KEY(id_temp_relevancia_ferramentas);

alter table caracterizacao_its.temp_relevancia_ferramentas
add constraint pfk_relevferramenta_participante
foreign key (id_temp_participantes)
references caracterizacao_its.temp_participantes(id_temp_participantes);

commit;