create database db_empresa;

use db_empresa;

create table tb_funcionarios(
id bigint auto_increment,
nome varchar(255) not null,
idade int not null,
setor varchar(255),
salario decimal not null,
primary key(id)
);

insert into tb_funcionarios(nome, idade, setor, salario) values ("Alberto", 29, "design", 1500.00);
insert into tb_funcionarios(nome, idade, setor, salario) values ("Aluado", 30, "economia", 3000.00);
insert into tb_funcionarios(nome, idade, setor, salario) values ("Pedro", 20, "administração", 1000.00);
insert into tb_funcionarios(nome, idade, setor, salario) values ("Thiago", 49, "tecnologia", 150000.00);
insert into tb_funcionarios(nome, idade, setor, salario) values ("Yasmin", 25, "administração", 2000.00);

select * from tb_funcionarios where salario>2000;
select * from tb_funcionarios where salario<=2000;

update tb_funcionarios set salario = 2000 where id= 3;