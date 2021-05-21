create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(255) not null,
ativo boolean,
primary key(id)
);

insert into tb_categoria(tipo, ativo) values("Salgada", true);
insert into tb_categoria(tipo, ativo) values("Doce", true);
insert into tb_categoria(tipo, ativo) values("Broto", true);
insert into tb_categoria(tipo, ativo) values("Esfiha", true);
insert into tb_categoria(tipo, ativo) values("Refrigerante", true);

create table tb_pizza(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal(5,2) not null,
categoria_id bigint,
primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);
alter table tb_pizza add qtProdutos int not null;

insert into tb_pizza(nome, preco, qtProdutos, categoria_id) values("Portuguesa", 50.99, 2, 1);
insert into tb_pizza(nome, preco, qtProdutos, categoria_id) values("Romeu e Julieta", 30.99, 1, 2);
insert into tb_pizza(nome, preco, qtProdutos, categoria_id) values("Marguerita", 32.99, 2, 3);
insert into tb_pizza(nome, preco, qtProdutos, categoria_id) values("Muçarela", 60.00, 2, 1);
insert into tb_pizza(nome, preco, qtProdutos, categoria_id) values("Carne", 32.99, 20, 4);
insert into tb_pizza(nome, preco, qtProdutos, categoria_id) values("Catupiry", 40.00, 20, 4);
insert into tb_pizza(nome, preco, qtProdutos, categoria_id) values("Fanta", 15.00, 1, 5);
insert into tb_pizza(nome, preco, qtProdutos, categoria_id) values("Dolly", 10.00, 1, 5);

select * from tb_pizza where preco>45.00;
select * from tb_pizza where preco between 29 and 60;
select * from tb_pizza where nome like "%c%";

select * from tb_pizza inner join tb_categoria on tb_categoria.id=tb_pizza.categoria_id;

select * from tb_pizza inner join tb_categoria on tb_categoria.id=tb_pizza.categoria_id where tipo = "doce";