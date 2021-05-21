create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment,
curso varchar (255) not null,
ativo boolean,
primary key(id)
);

insert into tb_categoria(curso, ativo) values ("JAVA", true);
insert into tb_categoria(curso, ativo) values ("Python", true);
insert into tb_categoria(curso, ativo) values ("Javascript", true);
insert into tb_categoria(curso, ativo) values ("C", true);
insert into tb_categoria(curso, ativo) values ("HTML", true);

create table tb_curso(
id bigint auto_increment,
nome varchar(255) not null,
idade int not null,
nota decimal (5,1) not null,
categoria_id bigint,
primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);

insert into tb_curso(nome, idade, nota, categoria_id) values ("Alex", 20, 10.0, 1);
insert into tb_curso(nome, idade, nota, categoria_id) values ("Douglas", 19, 9.5, 1);
insert into tb_curso(nome, idade, nota, categoria_id) values ("Elisa", 20, 5.0, 5);
insert into tb_curso(nome, idade, nota, categoria_id) values ("Gabi", 21, 8.0, 2);
insert into tb_curso(nome, idade, nota, categoria_id) values ("Geraldo", 18, 7.0, 4);
insert into tb_curso(nome, idade, nota, categoria_id) values ("Hugo", 20, 3.0, 3);
insert into tb_curso(nome, idade, nota, categoria_id) values ("Iago", 17, 6.5, 1);
insert into tb_curso(nome, idade, nota, categoria_id) values ("Yelena", 20, 10.0, 5);

select * from tb_curso where nota> 7;
select * from tb_curso where nota between 4 and 7;
select * from tb_curso where nome like "%J%";

select tb_curso.nome, tb_curso.idade, tb_categoria.curso 
from tb_curso inner join tb_categoria on tb_categoria.id=tb_curso.categoria_id;

select * from tb_curso inner join tb_categoria on tb_categoria.id=tb_curso.categoria_id
 where curso = "Java";