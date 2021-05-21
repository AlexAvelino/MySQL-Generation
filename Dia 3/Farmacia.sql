create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
tipo varchar (255) not null,
ativo boolean,
primary key(id)
);

insert into tb_categoria(tipo, ativo) values("Rémedio", true);
insert into tb_categoria(tipo, ativo) values("Rémedio controlado", true);
insert into tb_categoria(tipo, ativo) values("Higiene", true);
insert into tb_categoria(tipo, ativo) values("Cosmético", true);
insert into tb_categoria(tipo, ativo) values("Perfume", false);

create table tb_produto(
id bigint auto_increment,
nome varchar (255) not null,
preco decimal(5,2) not null,
qtProduto int not null,
categoria_id bigint,
primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);

insert into tb_produto(nome, preco, qtProduto, categoria_id) values("NeoSoro", 15.00, 2, 1);
insert into tb_produto(nome, preco, qtProduto, categoria_id) values("Paracetamol", 5.00, 1, 1);
insert into tb_produto(nome, preco, qtProduto, categoria_id) values("Nivea Creme", 20.00, 2, 4);
insert into tb_produto(nome, preco, qtProduto, categoria_id) values("Malbec", 60.00, 1, 5);
insert into tb_produto(nome, preco, qtProduto, categoria_id) values("gardenal", 49.99, 1, 2);
insert into tb_produto(nome, preco, qtProduto, categoria_id) values("Lenço umedecido", 32.40, 1, 3);
insert into tb_produto(nome, preco, qtProduto, categoria_id) values("Desodorante Nivea", 15.00, 1, 3);
insert into tb_produto(nome, preco, qtProduto, categoria_id) values("Ibupofreno", 10.00, 1, 1);

select * from tb_produto where preco>50.00;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where nome like "%b%";

select * from tb_produto inner join tb_categoria on tb_categoria.id=tb_produto.categoria_id;

select * from tb_produto inner join tb_categoria on tb_categoria.id=tb_produto.categoria_id where tipo = "cosmetico";