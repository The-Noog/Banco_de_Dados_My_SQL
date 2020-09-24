create table tb_funcionarios


(
id_funcionario int not null auto_increment,
nome varchar (45),
nascimento double(10,2),
cargo varchar (45),
salario double (1000,2),
primary key (id_funcionario)

);

select*from tb_funcionarios;

select*from tb_funcionarios
where salario >2000.00;
#order by salario;

select*from tb_funcionarios
where salario <2000.00;

select*from tb_funcionarios;