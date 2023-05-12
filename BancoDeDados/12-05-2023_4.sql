# Exibindo todas as cidades do Paraná
SELECT * FROM cidade
WHERE UF = 18;

# Exibindo ordenado ASC | DESC
SELECT nome FROM cidade
WHERE uf = 18
ORDER BY nome DESC;

# Exibindo todos os estados da Região Sul
select * from ESTADO
where IBGE in (41,42,43);

# Exibir o relacionamento das TABELAS JOIN
select cidade.nome, estado.nome from cidade, estado
where cidade.uf = estado.id and estado.id = 18;

select cidade.nome, estado.nome from cidade
inner join estado on cidade.uf = estado.id
where estado.id = 18;

# Contagem de registros
SELECT COUNT(CIDADE.NOME) FROM CIDADE
INNER JOIN ESTADO ON CIDADE.UF = ESTADO.ID WHERE ESTADO.ID = 18;

# Agrupando
SELECT COUNT(CIDADE.NOME) AS TOTAL_CIDADES, ESTADO.NOME FROM CIDADE
INNER JOIN ESTADO ON CIDADE.UF = ESTADO.ID WHERE ESTADO.ID = 11
GROUP BY ESTADO.NOME;