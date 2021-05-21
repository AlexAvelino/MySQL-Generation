create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
tipo varchar (255) not null,
ativo boolean,
primary key(id)
);

insert into tb_categoria(tipo, ativo) values("Hidraulica", true);
insert into tb_categoria(tipo, ativo) values("Eletrica", true);
insert into tb_categoria(tipo, ativo) values("Piso", true);
insert into tb_categoria(tipo, ativo) values("construção", true);
insert into tb_categoria(tipo, ativo) values("concreto", true);

create table tb_produto(
id bigint auto_increment,
nome varchar (255) not null,
preco decimal(5,2) not null,
qtProduto int not null,
categoria_id bigint,
primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);

insert into tb_produto(nome, preco, qtProduto, categoria_id) values("Ceramica", 100, 10, 3);
insert into tb_produto(nome, preco, qtProduto, categoria_id) values("cimento", 240, 2, 5);
insert into tb_produto(nome, preco, qtProduto, categoria_id) values("cabos", 20.00, 1, 2);
insert into tb_produto(nome, preco, qtProduto, categoria_id) values("fios", 100.00, 5, 2);
insert into tb_produto(nome, preco, qtProduto, categoria_id) values("coluna", 500, 5, 4);
insert into tb_produto(nome, preco, qtProduto, categoria_id) values("Areia fina", 600, 1, 5);
insert into tb_produto(nome, preco, qtProduto, categoria_id) values("Areia Média", 700, 1, 5);
insert into tb_produto(nome, preco, qtProduto, categoria_id) values("Cano", 100, 10, 1);

select * from tb_produto where preco>50.00;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where nome like "%C%";

select * from tb_produto inner join tb_categoria on tb_categoria.id=tb_produto.categoria_id;

select * from tb_produto inner join tb_categoria on tb_categoria.id=tb_produto.categoria_id where tipo = "Hidraulica";