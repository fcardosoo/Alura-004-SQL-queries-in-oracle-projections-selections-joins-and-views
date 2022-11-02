select
tc.cpf as cpf_cadastro,
tc.nome as nome_cliente,
nf.cpf as cpf_notas_fiscais
from
tabela_de_clientes tc
inner join
notas_fiscais nf
on tc.cpf = nf.cpf;


select distinct
tc.cpf as cpf_cadastro,
tc.nome as nome_cliente,
nf.cpf as cpf_notas_fiscais
from
tabela_de_clientes tc
inner join
notas_fiscais nf
on tc.cpf = nf.cpf;

/*Para ver o total de linhas da tabela usar COUNT(*) e não precisa usar agrupamento*/
select count(*) from tabela_de_clientes;

/* Inserindo um novo cliente*/
insert into tabela_de_clientes
(CPF, NOME, ENDERECO_1, ENDERECO_2, BAIRRO, CIDADE, ESTADO, CEP, DATA_DE_NASCIMENTO,
IDADE, SEXO, LIMITE_DE_CREDITO, VOLUME_DE_COMPRA, PRIMEIRA_COMPRA)
VALUES('23412632331', 'Juliana Silva', 'R. Tramandaí', '', 'Bangu', 'Rio de Janeiro',
'RJ', '23400000', TO_DATE('1989-02-04','YYYY-MM-DD'), 28, 'F', 180000.0000, 24500, 0);

SELECT * FROM tabela_de_clientes;

select distinct
tc.cpf as cpf_cadastro,
tc.nome as nome_cliente,
nf.cpf as cpf_notas_fiscais
from
tabela_de_clientes tc
LEFT join
notas_fiscais nf
on tc.cpf = nf.cpf;

select distinct
tc.cpf as cpf_cadastro,
tc.nome as nome_cliente
/* nf.cpf as cpf_notas_fiscais */
from
tabela_de_clientes tc
LEFT join
notas_fiscais nf
on tc.cpf = nf.cpf
WHERE NF.CPF IS NULL;


SELECT DISTINCT
TV.NOME AS NOME_VENDEDOR,
TV.BAIRRO AS BAIRRO_VENDEDOR,
TC.NOME AS NOME_CLIENTE,
TC.BAIRRO AS BAIRRO_CLIENTE
FROM
TABELA_DE_CLIENTES TC
INNER JOIN
TABELA_DE_VENDEDORES TV
ON TV.BAIRRO = TC.BAIRRO;

SELECT DISTINCT
TV.NOME AS NOME_VENDEDOR,
TV.BAIRRO AS BAIRRO_VENDEDOR,
TC.NOME AS NOME_CLIENTE,
TC.BAIRRO AS BAIRRO_CLIENTE
FROM
TABELA_DE_CLIENTES TC
LEFT JOIN
TABELA_DE_VENDEDORES TV
ON TV.BAIRRO = TC.BAIRRO;

SELECT DISTINCT
TV.NOME AS NOME_VENDEDOR,
TV.BAIRRO AS BAIRRO_VENDEDOR,
TC.NOME AS NOME_CLIENTE,
TC.BAIRRO AS BAIRRO_CLIENTE
FROM
TABELA_DE_CLIENTES TC
RIGHT JOIN
TABELA_DE_VENDEDORES TV
ON TV.BAIRRO = TC.BAIRRO;

SELECT DISTINCT
TV.NOME AS NOME_VENDEDOR,
TV.BAIRRO AS BAIRRO_VENDEDOR,
TC.NOME AS NOME_CLIENTE,
TC.BAIRRO AS BAIRRO_CLIENTE
FROM
TABELA_DE_CLIENTES TC
FULL JOIN
TABELA_DE_VENDEDORES TV
ON TV.BAIRRO = TC.BAIRRO;


SELECT DISTINCT BAIRRO FROM tabela_de_clientes;
-- 12
SELECT DISTINCT BAIRRO FROM tabela_de_vendedores;
-- 4

-- O UNION  faz um distinct do resultado
SELECT DISTINCT BAIRRO FROM TABELA_DE_CLIENTES
UNION
SELECT DISTINCT BAIRRO FROM TABELA_DE_VENDEDORES;

-- O UNION ALL trás resultados duplicados
SELECT DISTINCT BAIRRO, 'cliente' as ORIGEM FROM TABELA_DE_CLIENTES
UNION ALL
SELECT DISTINCT BAIRRO, 'Vendedor' as ORIGEM FROM TABELA_DE_VENDEDORES;