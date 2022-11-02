select 3.4 from dual;

-- arredonda para baixo
select round(3.4) from dual;

-- arredonda para cima
select round(3.6) from dual;

-- arredonda para cima
select round(3.5) from dual;

---------------------------------
-- Sempre arredonda para baixo
select trunc(3.4) from dual;

select trunc(3.6) from dual;

select trunc(3.9) from dual;
---------------------------------
-- Arredonda sempre para cima
select ceil(3.4) from dual;

select ceil(3.6) from dual;

select ceil(3.1) from dual;
---------------------------------
-- Arredonda sempre para baixo
select floor(3.4) from dual;

select floor(3.6) from dual;

select floor(3.9) from dual;
---------------------------------
-- Potência
select power(3,4) from dual;

select power(3, 6) from dual;

select power(3,9) from dual;

---------------------------------
-- Exponenciação
select exp(2) from dual;

select exp(6) from dual;

select exp(10) from dual;
---------------------------------
-- RAIZ QUADRADA
select sqrt(225) from dual;

select sqrt(36) from dual;

select sqrt(144) from dual;

---------------------------------
-- Número absoluto
select abs(-5) from dual;

---------------------------------
-- Módulo
select mod(5, 2) from dual;
select mod(10, 4) from dual;

/*
Na tabela de notas fiscais, temos o valor do imposto. Já na tabela de itens,
temos a quantidade e o faturamento. Calcule o valor do imposto pago no ano 
de 2016, arredondando para o menor inteiro.
*/

SELECT TO_CHAR(DATA_VENDA, 'YYYY'), FLOOR(SUM(IMPOSTO * (QUANTIDADE * PRECO))) 
FROM NOTAS_FISCAIS NF
INNER JOIN ITENS_NOTAS_FISCAIS INF ON NF.NUMERO = INF.NUMERO
WHERE TO_CHAR(DATA_VENDA, 'YYYY') = 2016
GROUP BY TO_CHAR(DATA_VENDA, 'YYYY')

