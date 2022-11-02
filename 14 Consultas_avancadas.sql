SELECT
TP.SABOR,
EXTRACT (YEAR FROM NF.DATA_VENDA) AS ANO,
SUM(INF.QUANTIDADE) AS QUANTIDADE_TOTAL
FROM
TABELA_DE_PRODUTOS TP
INNER JOIN
ITENS_NOTAS_FISCAIS INF
ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
INNER JOIN
NOTAS_FISCAIS NF
ON INF.NUMERO = NF.NUMERO
WHERE EXTRACT (YEAR FROM NF.DATA_VENDA) = 2016
GROUP BY
TP.SABOR,
EXTRACT (YEAR FROM NF.DATA_VENDA)
ORDER BY SUM(INF.QUANTIDADE) DESC;



SELECT
TP.SABOR,
EXTRACT (YEAR FROM NF.DATA_VENDA) AS ANO,
SUM(INF.QUANTIDADE) AS QUANTIDADE_TOTAL
FROM
TABELA_DE_PRODUTOS TP
INNER JOIN
ITENS_NOTAS_FISCAIS INF
ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
INNER JOIN
NOTAS_FISCAIS NF
ON INF.NUMERO = NF.NUMERO
WHERE EXTRACT (YEAR FROM NF.DATA_VENDA) = 2016
GROUP BY
TP.SABOR,
EXTRACT (YEAR FROM NF.DATA_VENDA)
ORDER BY SUM(INF.QUANTIDADE) DESC;


(SELECT
EXTRACT(YEAR FROM NF.DATA_VENDA) AS ANO,
SUM(INF.QUANTIDADE) AS QUANTIDADE_GERAL
FROM
NOTAS_FISCAIS NF
INNER JOIN
ITENS_NOTAS_FISCAIS INF
ON NF.NUMERO = INF.NUMERO
WHERE EXTRACT(YEAR FROM NF.DATA_VENDA) = 2016
GROUP BY EXTRACT (YEAR FROM NF.DATA_VENDA)) TOTAL_ANO;

SELECT TOTAL_ANO.QUANTIDADE_GERAL FROM 
(SELECT
EXTRACT(YEAR FROM NF.DATA_VENDA) AS ANO,
SUM(INF.QUANTIDADE) AS QUANTIDADE_GERAL
FROM
NOTAS_FISCAIS NF
INNER JOIN
ITENS_NOTAS_FISCAIS INF
ON NF.NUMERO = INF.NUMERO
WHERE EXTRACT(YEAR FROM NF.DATA_VENDA) = 2016
GROUP BY EXTRACT (YEAR FROM NF.DATA_VENDA)) TOTAL_ANO;


SELECT CONSULTA_RELATORIO.SABOR,
CONSULTA_RELATORIO.ANO,
CONSULTA_RELATORIO.QUANTIDADE_TOTAL,
ROUND((CONSULTA_RELATORIO.QUANTIDADE_TOTAL / CONSULTA_RELATORIO.QNT_GERAL) * 100,2) AS PARTICIPACAO
FROM 
(SELECT TP.SABOR, EXTRACT (YEAR FROM NF.DATA_VENDA) AS ANO,
SUM(INF.QUANTIDADE) AS QUANTIDADE_TOTAL,
(SELECT TOTAL_ANO.QUANTIDADE_GERAL FROM 
(SELECT EXTRACT(YEAR FROM NF.DATA_VENDA) AS ANO,
SUM(INF.QUANTIDADE) AS QUANTIDADE_GERAL
FROM NOTAS_FISCAIS NF
INNER JOIN ITENS_NOTAS_FISCAIS INF
ON NF.NUMERO = INF.NUMERO
WHERE EXTRACT(YEAR FROM NF.DATA_VENDA) = 2016
GROUP BY EXTRACT (YEAR FROM NF.DATA_VENDA)) TOTAL_ANO) AS QNT_GERAL
FROM
TABELA_DE_PRODUTOS TP
INNER JOIN ITENS_NOTAS_FISCAIS INF
ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
INNER JOIN NOTAS_FISCAIS NF
ON INF.NUMERO = NF.NUMERO
WHERE EXTRACT (YEAR FROM NF.DATA_VENDA) = 2016
GROUP BY TP.SABOR,
EXTRACT (YEAR FROM NF.DATA_VENDA)
ORDER BY SUM(INF.QUANTIDADE) DESC) CONSULTA_RELATORIO;

