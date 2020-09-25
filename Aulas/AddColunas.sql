create database funcoes_novas;
use funcoes_novas;

create table produtos (

#not null (não pode ser nulo), unique:nao pode repetir
nome varchar(30) not null unique,
descricao text,
pagamento enum ('cartao', 'dinheiro', 'cheque'),
quantidade int UNSIGNED,
#5 numéros ao todo, com dois depois da virugula
preco decimal(5,2),
data date ,
cidade varchar(30) DEFAULT 'São Paulo'
);

#alters adicionar coluno no começo
#Comando para adicionar uma coluna
alter  table produtos add column codigo_produto int first;

select * from produtos;

#Comando para adicionar uma coluna, depois de outro atributo
alter  table produtos add column pagamento varchar (45) after descricao;

#alter table produtos drop column pagamento;

#comando para alterar o nome da tabela.
alter  table produtos change column Forma_Pagamento forma_pagamento varchar (10);


select * from produtos;
