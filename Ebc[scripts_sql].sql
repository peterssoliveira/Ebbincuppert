-----Criação de tabelas
CREATE TABLE materias(
id integer primary key AUTOINCREMENT,
nome text not null
)
CREATE table conteudos(
id integer primary KEY  autoincrement,
materia_id integer not null,
nome text,
nivel integer,
importancia text,
tempo_estimado integer,
ordem_aprendizado integer,
FOREIGN key(materia_id)
REFERENCES materias(id)
);
--------Adicionar materias
INSERT INTO materias (nome) values ('Matematica'),
('Física'),('Química'),('Biologia'),('Portugês'),
('Redação'),('História'),('Geografia'),('Filosofia'),
('Sociologia'),('Ingles'),('Espanhol'),('Atualidades');
------------
alter table conteudos
add column categoria text
;
---------Tabela registro_estudos
create table registro_estudos (
id integer primary key,
conteudo_id integer not null,
data_inicio date not null,
FOREIGN KEY (conteudo_id)
    REFERENCES conteudos(id)
);
--------Tabela revisao
create table revisao (
id integer primary key,
data_revisao date not null,
estudos_id integer not null,
numero_revisao integer not null,
realizado integer DEFAULT 0,
FOREIGN key (estudos_id)
	references registro_estudos (id)
);PRAGMA database_list;

ALTER TABLE conteudos add column topico text;
delete from materias where nome= 'Redação';


UPDATE conteudos
SET tempo_estimado = "30min"
where materia_id=1;

SELECT nome from conteudos c where c.materia_id =1;

ALTER TABLE registro_estudos 
add materia_id integer not null,
add FOREIGN KEY (materia_id)
	REFERENCES materias(id);
delete from registro_estudos ;
---alter
ALTER TABLE registro_estudos 
ADD materia_id INTEGER NOT NULL;
alter table registro_estudos 
add CONSTRAINT FK_materia_id 
FOREIGN KEY (materia_id) REFERENCES materias(id);

ALTER TABLE registro_estudos 
ADD CONSTRAINT fk_registro_materias 
FOREIGN KEY (materia_id) REFERENCES materias(id);