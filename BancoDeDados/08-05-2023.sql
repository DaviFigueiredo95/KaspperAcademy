# Criando um database
# create database aula_08_05_2023db;

# use aula_08_05_2023db;

# Criando uma tabela
/* create table categorias (
id int,
nome varchar(50)
); */

# DROP Apagar artefatos
# DROP TABLE categorias;

# Criar a tabela com CHAVE PRIMÁRIA
/* create table clientes (
cpf varchar(11) not null,
nome varchar(80) not null,
idade int,
primary key (cpf)
); */

# Inserindo registros na tabela
/* insert into clientes (cpf, nome, idade)
values ('11122233345', 'José', 35),
('11122233354', 'Maria', 51) */

# Consulta a tabela
select * from clientes