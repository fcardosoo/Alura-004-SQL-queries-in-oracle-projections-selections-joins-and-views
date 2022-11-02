/* Usando o GROUP BY*/

-- SUM - soma
-- AVG - média
-- MAX - máximo
-- MIN - mínimo 

select * from tabela_de_clientes;
select cidade, sum(idade) from tabela_de_clientes group by cidade order by cidade;
select cidade, avg(idade) from tabela_de_clientes group by cidade order by cidade;

select cidade, sum(limite_de_credito), sum(idade) from tabela_de_clientes group by cidade order by cidade;

select embalagem, max(preco_de_lista) as maior_preco from tabela_de_produtos group by embalagem;

select embalagem, count(*) from tabela_de_produtos group by embalagem order by embalagem;
select embalagem, count(*) as numero_de_produtos from tabela_de_produtos where sabor = 'Laranja' group by embalagem order by embalagem;