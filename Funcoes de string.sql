select nome from tabela_de_clientes;

-- Convertendo a string NOME para MINÚSCULO
select nome, lower(nome), upper(nome) from tabela_de_clientes;

-- Convertendo a string NOME para MAIÚSCULO
select nome_do_produto from tabela_de_produtos;

select nome_do_produto from tabela_de_produtos;
--Usando o INITCAP
select nome_do_produto, initcap(nome_do_produto) from tabela_de_produtos;

select endereco_1, bairro from tabela_de_clientes;
-- Usando o CONCAT que aceita apenas 2 parâmetros
select endereco_1, bairro, concat(concat(endereco_1, ' - '), bairro) from tabela_de_clientes;

-- Para concatear vários parâmetros é possível usar o PIPE '|'
select endereco_1 || ' - ' || bairro || ' - ' || cidade || ' - ' || estado || ' - ' || cep from tabela_de_clientes;

-- Uando o LPAD que completa os espaços à ESQUERDA com o caracter especificado
select nome_do_produto, lpad(nome_do_produto, 70, '*') from tabela_de_produtos;
select nome_do_produto, rpad(nome_do_produto, 70, '*') from tabela_de_produtos;

-- Pega a partir da TERCEIRA(3) letas as próximas 5
select nome_do_produto, substr(nome_do_produto, 3,5) from tabela_de_produtos;

-- Busca e retorna a POSIÇÃO de uma palavra em uma string 
select nome_do_produto, instr(nome_do_produto, 'Campo') from tabela_de_produtos;


select nome from tabela_de_clientes;
select nome, instr(nome, 'Mattos') from tabela_de_clientes;

-- Para ver apenas os clientes de sobrenome 'Mattos' é possível utilizar o where
select nome from tabela_de_clientes where instr(nome, 'Mattos') <> 0;

-- Para tirar os espços utiliza-se o RTRIM ou LTRIM
-- Para o exemplo cria-se uma tabela virtual com o comando DUAL
select '     Fabiano     ' as X,
ltrim('     Fabiano     ') as Y,
rtrim('     Fabiano     ') as Z,
trim('     Fabiano     ') as W
from dual;

select nome_do_produto from tabela_de_produtos;

-- Substituindo uma palavra em uma string
select nome_do_produto, replace(nome_do_produto, 'Litro', 'L') from tabela_de_produtos;
-- O replace acima retornou alguns 'Ls', ara corrigir usaremos o replace aninhado
select nome_do_produto, replace(replace(nome_do_produto, 'Litro', 'L'),'Ls', 'L') from tabela_de_produtos;

