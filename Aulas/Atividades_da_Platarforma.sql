/* 



use db_estoque;

create table tb_marcas(
id bigint (5) auto_increment, # Auto increment ele auto incremeta
nome varchar (20) not null, # Not null não aceita daddos em branco.
ativo boolean, # Verdadeiro ou falso
primary key (id) # Chave primaria vai ser o id, vc escolhe quem vai ser a chave primária.


);

select * from tb_marcas;

insert into tb_marcas (nome,ativo) values ("Fatal surf",false)



update tb_marcas set nome = "FATAL SURF", ativo = true 
where  id = 2  # modifica os dados 
delete from tb_marcas where  id = 1 # apaga onde vc quer



*/


select * from tb_marcas;



