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
/* create table venda (
 id int,
 data_compra date,
 valor_total decimal(6, 2),
 rg int,
 primary key (id),
 foreign key (rg) references clientes (rg)
 ); */
 
 /* create table itens_venda (
 id_item int,
 sku int,
 id_venda int,
 quantidade int,
 subtotal decimal (6, 2),
 primary key (id_item),
 foreign key (sku) references produtos (sku),
 foreign key (id_venda) references venda (id)
 ); */

# insert into produtos (sku, nome, tipo) values(3, 'Vaso mineiro', 'vaso')

# select * from produtos;
# select nome, tipo from produtos;

# Atualizar um registro da Tabela
/* update produtos
set quantidade = 10
where sku = 1; */

# select * from produtos;

# Exclusão de Registro
# delete from produtos where sku = 2;

# Usando o operador like
select nome from produtos where nome like 'V%';