create database db_escola;

use db_escola;

create table tb_alunos(
id bigint auto_increment,
nome varchar(255) not null,
idade int not null,
materia varchar(255),
nota double,
primary key(id)
);

insert into tb_alunos(nome, idade, materia, nota) values("Alan", 15, "Português", 10.00);
insert into tb_alunos(nome, idade, materia, nota) values("Ana", 15, "Português", 8.50);
insert into tb_alunos(nome, idade, materia, nota) values("Ana Beatriz", 15, "Português", 6.00);
insert into tb_alunos(nome, idade, materia, nota) values("Bethoven", 15, "Português", 5.00);
insert into tb_alunos(nome, idade, materia, nota) values("Carla", 14, "Português", 10.00);
insert into tb_alunos(nome, idade, materia, nota) values("Eustáquio", 15, "Português", 9.00);
insert into tb_alunos(nome, idade, materia, nota) values("Luiz", 16, "Português", 4.00);
insert into tb_alunos(nome, idade, materia, nota) values("Zeke", 15, "Português", 7.00);

select * from tb_alunos where nota>7;
select * from tb_alunos where nota<=7;

update tb_alunos set nota = 9 where id= 2;