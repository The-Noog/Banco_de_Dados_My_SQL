create database db_cidade_das_carnes;
use db_cidade_das_carnes;


#Criando a tabela
create table tb_produto
(
id_produto int not null auto_increment,
nome varchar (45),
marca varchar (45),
tipo_carne varchar (45),
preco decimal (3,2),

primary key (id_produto)


);

#populando a tabela
insert into tb_produto(`id_produto`,`nome`,`marca`,`tipo_carne`,`preco`) 
values ('1','Alcatra','Friboi','Bovina','30,00');
insert into tb_produto(`id_produto`,`nome`,`marca`,`tipo_carne`,`preco`) 
values ('2','picanha','Fribov','Suina','20,00');
insert into tb_produto(`id_produto`,`nome`,`marca`,`tipo_carne`,`preco`) 
values ('3','Asa','Friboi','aviária','10,00');
insert into tb_produto(`id_produto`,`nome`,`marca`,`tipo_carne`,`preco`) 
values ('4','Coxa','Friboi','aviária','100,00');

select*from tb_produto;

# deledando
#delete from tb_produto where id_produto = '4';


create table tb_categoria
(
id_categoria int not null auto_increment,
qualidade enum ('A','B','C'),
validade varchar (45),
primary key (id_categoria),
constraint fk_chave foreign key(id_categoria) references tb_produto(id_produto)
);

#populando a tabela
insert into tb_categoria(`id_categoria`,`qualidade`,`validade`) 
values (null,'A','6 meses');
insert into tb_categoria(`id_categoria`,`qualidade`,`validade`) 
values (null,'B','3 meses');
insert into tb_categoria(`id_categoria`,`qualidade`,`validade`) 
values (null,'C','2 meses');
insert into tb_categoria(`id_categoria`,`qualidade`,`validade`) 
values (null,'A','2 meses');

Select * from tb_categoria;

# select que retorne os Produtos com o valor maior do que 50 reais.
Select * from tb_produto where preco > 50;

# Select trazendo os Produtos com valor entre 3 e 60 reais.
Select * from tb_produto where preco > 3 and preco < 50;

# Select utilizando LIKE buscando os Produtos com a letra C.
select * from tb_produto where nome like 'c%';

# Select com Inner join entre tabela categoria e produto.
SELECT * FROM tb_produto
INNER JOIN tb_categoria ON tb_produto.id_produto = tb_categoria.id_categoria;


