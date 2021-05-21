create database db_generation_game_online;
use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
classe varchar (255) not null,
descricao varchar(255) not null,
primary key(id)
);

insert into tb_classe(classe, descricao) values("Guerreiro", "corpo a corpo");
insert into tb_classe(classe, descricao) values("Mago", "magia");
insert into tb_classe(classe, descricao) values("arqueiro", "distância");
insert into tb_classe(classe, descricao) values("curandeiro", "pacifista");
insert into tb_classe(classe, descricao) values("Feiticeiro", "magia negra");

select * from tb_classe;

create table tb_personagem(
id bigint auto_increment,
nome varchar(255) not null,
atk decimal(7,2) not null,
def decimal(7,2) not null,
classe_id bigint,
primary key(id),
foreign key(classe_id) references tb_classe(id)
);

insert into tb_personagem(nome, atk, def, classe_id) values("Gandalf", 5000, 1000,2);
insert into tb_personagem(nome, atk, def, classe_id) values("Merlim", 10000, 500,2);
insert into tb_personagem(nome, atk, def, classe_id) values("Oliver", 1900, 1300,3);
insert into tb_personagem(nome, atk, def, classe_id) values("Illiana", 2500, 2560,1);
insert into tb_personagem(nome, atk, def, classe_id) values("Joshua", 0, 5000,4);
insert into tb_personagem(nome, atk, def, classe_id) values("Emilia", 1350, 900,3);
insert into tb_personagem(nome, atk, def, classe_id) values("Severu", 3200, 2000,5);
insert into tb_personagem(nome, atk, def, classe_id) values("Barbarus", 10000, 100,1);

select * from tb_personagem; 
select * from tb_personagem where atk> 2000;
select * from tb_personagem where def between 1000 and 2000;
select * from tb_personagem where nome like "%C%";

select tb_personagem.nome, tb_personagem.atk, tb_personagem.def, tb_classe.classe  
from tb_personagem inner join tb_classe on tb_classe.id=tb_personagem.classe_id;

select tb_personagem.nome, tb_personagem.atk, tb_personagem.def, tb_classe.classe  
from tb_personagem inner join tb_classe on tb_classe.id=tb_personagem.classe_id where tb_classe.classe like "ar%";



