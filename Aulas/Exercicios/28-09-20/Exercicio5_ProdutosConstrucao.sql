#Criando uma database
CREATE DATABASE db_construindo_a_nossa_vida;
USE db_construindo_a_nossa_vida;


#Criando uma tabela
CREATE TABLE tb_categoria 
(
id_categoria int,
setor varchar (45),
tipo varchar (45),

primary key (id_categoria)
);

#Adicionando valores na tabela tb_categoria
insert into tb_categoria(`id_categoria`,`setor`,`tipo`) 
values ('1','Hidraulica','Ferramentas');
insert into tb_categoria(`id_categoria`,`setor`,`tipo`) 
values ('2','PVC','Canos');
insert into tb_categoria(`id_categoria`,`setor`,`tipo`) 
values ('3','Lousa','cozinha');

select*from tb_categoria;


#Criando uma tabela
CREATE TABLE tb_produto
(
id_produto int,
nome varchar (45),
marca varchar (45),
valor varchar (45),

primary key (id_produto),

constraint fk_chave foreign key(id_categoria) references tb_produto(id_produto)
);

#Selecionando de Tb_produto.
select*from tb_produto;

#Adicionando valores na tabela tb_produto
insert into tb_produto(`id_produto`,`nome`,`marca`,`valor`) 
values ('1','macaco','Black Deker','1500.00');
insert into tb_produto(`id_produto`,`nome`,`marca`,`valor`)
values ('2','luva','tigrer','1.00');
insert into tb_produto(`id_produto`,`nome`,`marca`,`valor`)
values ('3','Privada','Doker','150.00');
insert into tb_produto(`id_produto`,`nome`,`marca`,`valor`)
values ('4','Cotovelo','tigrer','5.00');

# Faça um select que retorne os Produtos com o valor maior do que 50 reais.
select * from tb_produto where valor > 50;

# Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.
select * from tb_produto where valor >0 and valor <60;

# Faça um select  utilizando LIKE buscando os Produtos com a letra C.
select * from tb_produto where nome like 'c%';

# Faça um um select com Inner join entre tabela categoria e produto.
SELECT * FROM tb_produto
INNER JOIN tb_categoria ON tb_produto.id_produto = tb_categoria.id_categoria;

# Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos 
# que são da categoria hidráulica).

select *from tb_produto where nome like 'privada';



