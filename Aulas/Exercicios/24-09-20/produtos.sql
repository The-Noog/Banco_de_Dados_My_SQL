create database e_commerce;
use e_commerce;

create table produtos(
id_prod int not null auto_increment,

nome varchar (45),
validade date,
setor varchar(45),
preco double(5,2),


primary key (id_prod)

);

select * from produtos
	where preco >500.00;
    
select nome, setor from produtos
	where preco <500.00
    order by preco;
    
update produtos 
set preco = 3.00
where id_prod = 3
limit 1;

select * from produtos;

