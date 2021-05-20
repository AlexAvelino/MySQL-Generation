create database db_e_commerce;

use db_e_commerce;

create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal not null,
tipo varchar(255),
garantia varchar(255),
primary key(id)
);

insert into tb_produtos(nome, preco, tipo, garantia) values("Geladeira", 5000.00, "eletrodoméstico", "2 anos");
insert into tb_produtos(nome, preco, tipo, garantia) values("Fogão", 2699.00, "eletrodoméstico", "5 anos");
insert into tb_produtos(nome, preco, tipo, garantia) values("microondas", 1500.00, "eletrodoméstico", "2 anos");
insert into tb_produtos(nome, preco, tipo, garantia) values("Maquina de lavar", 6000.00, "eletrodoméstico", "5 anos");
insert into tb_produtos(nome, preco, tipo, garantia) values("Computador", 7000.00, "eletrônico", "4 anos");
insert into tb_produtos(nome, preco, tipo, garantia) values("Televisão", 2000.00, "eletrônico", "2 anos");
insert into tb_produtos(nome, preco, tipo, garantia) values("celular", 600.00, "eletrônico", "1 ano");
insert into tb_produtos(nome, preco, tipo, garantia) values("mouse", 100.00, "eletrônico", "2 anos");

select * from tb_produtos where preco>500;
select * from tb_produtos where preco<=500;

update tb_produtos set preco = 2700.00 where id= 2;