select * from tabela_de_vendedores;

select * from notas_fiscais;

select matricula, count(*) as numero_de_notas from notas_fiscais
group by matricula;


select notas_fiscais.matricula, tabela_de_vendedores.nome, count(*) as numero_de_notas
from notas_fiscais
inner join tabela_de_vendedores
on notas_fiscais.matricula = tabela_de_vendedores.matricula
group by notas_fiscais.matricula, tabela_de_vendedores.nome;

select nf.matricula, tv.nome, count(*) as numero_de_notas
from notas_fiscais nf
inner join tabela_de_vendedores tv
on nf.matricula = tv.matricula
group by nf.matricula, tv.nome;

select * from itens_notas_fiscais;
select * from tabela_de_produtos;

SELECT nf.CODIGO_DO_PRODUTO, tp.nome_do_produto, SUM(nf.QUANTIDADE)
FROM ITENS_NOTAS_FISCAIS nf
inner join tabela_de_produtos tp
on nf.codigo_do_produto = tp.codigo_do_produto
GROUP BY nf.CODIGO_DO_PRODUTO, tp.nome_do_produto HAVING SUM(nf.QUANTIDADE) > 394000 
ORDER BY SUM(nf.QUANTIDADE) DESC;