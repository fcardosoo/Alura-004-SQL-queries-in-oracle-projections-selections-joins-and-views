/* CASE WHEN*/

select nome_do_produto, preco_de_lista,
(case when preco_de_lista >=12 then 'produto caro'
    when preco_de_lista > 7 and preco_de_lista < 12 then 'Produto em conta'
    else 'Produto barato' END) as classificacao
from tabela_de_produtos;

select nome_do_produto, preco_de_lista,
(case when preco_de_lista >=12 then 'produto caro'
    when preco_de_lista > 7 and preco_de_lista < 12 then 'Produto em conta'
    else 'Produto barato' END) as classificacao
from tabela_de_produtos
where sabor='Manga';

/*Mostrando a classifica��o em ordem alfab�tica*/
select nome_do_produto, preco_de_lista,
(case when preco_de_lista >=12 then 'produto caro'
    when preco_de_lista > 7 and preco_de_lista < 12 then 'Produto em conta'
    else 'Produto barato' END) as classificacao
from tabela_de_produtos
order by 
(case when preco_de_lista >=12 then 'produto caro'
    when preco_de_lista > 7 and preco_de_lista < 12 then 'Produto em conta'
    else 'Produto barato' END);


/*Mostrando a classifica��o em ordem alfab�tica COM o ALIAS*/
select nome_do_produto, preco_de_lista,
(case when preco_de_lista >=12 then 'produto caro'
    when preco_de_lista > 7 and preco_de_lista < 12 then 'Produto em conta'
    else 'Produto barato' END) as classificacao
from tabela_de_produtos
order by classificacao;

select * from tabela_de_clientes;

/*
Para cada cliente, temos seus limites de cr�dito mensais. Liste somente os nomes
dos clientes e os classifique por:

    Acima ou igual a 150.000 de limite de cr�dito - Clientes grandes
    Entre 150.000 e 110.000 de limite de cr�dito - Clientes m�dios
    Menores que 110.000 de limite de cr�dito - Clientes pequenos
*/

SELECT nome, limite_de_credito,
(case when limite_de_credito >= 150000 then 'Grande'
    when limite_de_credito < 150000 and limite_de_credito >= 110000 then 'Medio'
    else 'Pequeno' end) as classificacao
from tabela_de_clientes;









