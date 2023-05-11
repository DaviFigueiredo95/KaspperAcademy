# create database aula_10_05_2023db;

# use aula_10_05_2023db;

# Criação de tabela cliente
/* create table clientes (
rg int,
nome varchar(60),
telefone varchar(15),
endereco varchar(80),
primary key (rg)
); */

/* create table produtos (
sku int,
nome varchar(60),
tipo varchar(15),
preco decimal(6, 2),
quantidade int,
primary key (sku)
); */

# Criando a tabela vendas e itens_venda
 create table venda (
 id int,
 data_compra date,
 valor_total decimal(6, 2),
 rg int,
 primary key (id),
 foreign key (rg) references
 );

