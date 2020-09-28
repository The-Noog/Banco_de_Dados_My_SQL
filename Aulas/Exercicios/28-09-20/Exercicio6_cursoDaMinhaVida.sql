create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

#Criando uma tabela
create table tb_categoria
(
id_categoria int,
setor enum ('Infantil', 'Juvenil', 'Adulto'),
tipo enum ('Ingles', 'TI'),
primary key (id_categoria)

);

#Adicionando valores na tabela tb_categoria
insert into tb_categoria(`id_categoria`,`setor`,`tipo`) 
values ('1','Infantil','Ingles');
insert into tb_categoria(`id_categoria`,`setor`,`tipo`) 
values ('2','Juvenil','TI');
insert into tb_categoria(`id_categoria`,`setor`,`tipo`) 
values ('3','Adulto','Ingles');

Select * from tb_categoria;


#Criando uma tabela
create table tb_produto
(
id_produto int,
nome varchar (45),
valor varchar (45),
horasMensais varchar (45),
diasDaSemana varchar (45),
primary key (id_produto)

);

insert into tb_produto(`id_produto`,`nome`,`valor`,`horasMensais`,`diasDaSemana`) 
values ('1','Básico inglês','200.00','30', '5');
insert into tb_produto(`id_produto`,`nome`,`valor`,`horasMensais`,`diasDaSemana`) 
values ('2','Intermediário inglês','250.00','30', '6');
insert into tb_produto(`id_produto`,`nome`,`valor`,`horasMensais`,`diasDaSemana`) 
values ('3','Java','100.00','20', '5');
insert into tb_produto(`id_produto`,`nome`,`valor`,`horasMensais`,`diasDaSemana`) 
values ('4','C#','150.00','35', '5');

Select * from tb_produto;


# Faça um select que retorne os Produtos com o valor maior do que 50 reais.
select * from tb_produto where valor > 50;

# Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.
select * from tb_produto where valor >0 and valor <60;

# Faça um select  utilizando LIKE buscando os Produtos com a letra J.
select * from tb_produto where nome like 'J%';

# Faça um um select com Inner join entre tabela categoria e produto.
SELECT * FROM tb_produto
INNER JOIN tb_categoria ON tb_produto.id_produto = tb_categoria.id_categoria;

# Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos 
# que são da categoria JAva).
select *from tb_produto where nome like 'java';