# Atividades 12/05/2023

# Selecione somente o nome dos países em ordem alfabética inversa
SELECT nome FROM pais ORDER BY nome DESC;

# Selecione todos os estados que começam com a letra M
SELECT nome FROM estado WHERE nome LIKE 'M%';

# Selecione somente o nome e ddd do estado do Paraná
SELECT nome, ddd FROM estado WHERE id = '18';

# Selecione todas as cidades que iniciam com a letra W
SELECT nome FROM cidade WHERE nome LIKE 'W%';

# Somente o nomes das cidades de Mato Grosso do Sul
SELECT nome FROM cidade WHERE uf = '12';

# Todas as cidades do Estado do Amazonas e do Pará*
SELECT nome FROM cidade WHERE uf IN (3,14);

