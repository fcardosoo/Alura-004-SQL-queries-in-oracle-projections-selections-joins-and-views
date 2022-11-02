/* Usando o DISTINCT*/
select embalagem from tabela_de_produtos;

select distinct embalagem from tabela_de_produtos;

select distinct embalagem from tabela_de_produtos where sabor='Morango';

select distinct embalagem, sabor from tabela_de_produtos;

select distinct sabor from tabela_de_produtos;


/* Usando o ROWNUM*/
select rownum, tabela_de_produtos.* from tabela_de_produtos;
select rownum, tb.* from tabela_de_produtos tb;

select rownum, tb.* from tabela_de_produtos tb where rownum <= 5;
select tb.* from tabela_de_produtos tb where rownum <= 5;

/* ORDER BY*/
select * from tabela_de_clientes order by nome;

select * from tabela_de_produtos;
select * from tabela_de_produtos order by preco_de_lista;
select * from tabela_de_produtos order by preco_de_lista desc;

select * from tabela_de_produtos order by embalagem, nome_do_produto;
select * from tabela_de_produtos order by embalagem desc, nome_do_produto;
select * from tabela_de_produtos order by embalagem desc, nome_do_produto desc;
select * from tabela_de_produtos order by embalagem, nome_do_produto desc;

/* Utilizando duas queries SQL, qual foi a maior venda do produto 
'Linha Resfrescante - 1 Litro - Morango/Limao, em quantidade?*/

select * from tabela_de_produtos where nome_do_produto = 'Linha Refrescante - 1 Litro - Morango/Limao';
select * from itens_notas_fiscais where codigo_do_produto = '1101035' order by quantidade desc;


select * from tabela_de_clientes;

select estado, sum(limite_de_credito) from tabela_de_clientes group by estado;

select estado, sum(limite_de_credito) from tabela_de_clientes group by estado
having sum(limite_de_credito) >= 900000;

/*Trazendo apenas os produtos que custam mais de R$10,00*/
select embalagem, max(preco_de_lista) as maior_preco, min(preco_de_lista) as menor_preco
from tabela_de_produtos where preco_de_lista >=10 group by embalagem;

/*Trazendo apenas os produtos que custam mais de R$10,00 e valor agregado maior que 15*/
select embalagem, max(preco_de_lista) as maior_preco, min(preco_de_lista) as menor_preco
from tabela_de_produtos
where preco_de_lista >=10
group by embalagem
having max(preco_de_lista) >= 15;

/*
Vamos voltar ao itens das notas fiscais. AS duas atividades anteriores olharam as
vendas do produto 1101035, mas nossa empresa vendeu mais produtos. Verifique as 
quantidades totais de vendas de cada produto e ordene da maior para a menor.
*/

select * from itens_notas_fiscais;

select codigo_do_produto as cod_prod, sum(quantidade) as quant_total from itens_notas_fiscais 
group by codigo_do_produto
order by sum(quantidade) desc;

/*
Vimos os produtos mais vendidos na atividade anterior. Agora, liste somente 
os produtos que venderam mais que 394000 litros.
*/
select codigo_do_produto as cod_prod, sum(quantidade) as quant_total from itens_notas_fiscais 
group by codigo_do_produto
having sum(quantidade) >=394000
order by sum(quantidade) desc;





