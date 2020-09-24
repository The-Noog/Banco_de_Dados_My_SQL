create database escola;
use escola;

create table alunos(
id_aluno int not null auto_increment,

nome varchar (45),
idade varchar (3),
nome_do_pai varchar (45),
nome_da_mae varchar (45),
nota double (2,0),

primary key (id_aluno)
);

SELECT * FROM ALUNOS
WHERE NOTA > 7;

SELECT * FROM ALUNOS
WHERE NOTA < 7;

update alunos 
set nota = 8
where id_aluno = 1
limit 1;

SELECT * FROM ALUNOS;

