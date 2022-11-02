SELECT * FROM TABELA_DE_PRODUTOS WHERE SABOR = 'Manga' OR TAMANHO = '470 ml';

SELECT * FROM tabela_de_produtos WHERE SABOR = 'Manga' AND TAMANHO = '470 ml';

SELECT * FROM tabela_de_produtos WHERE NOT(SABOR='Manga' AND TAMANHO = '470 ml');

SELECT * FROM TABELA_DE_PRODUTOS WHERE not(SABOR = 'Manga' OR TAMANHO = '470 ml');

SELECT * FROM tabela_de_produtos WHERE SABOR = 'Manga' or sabor= 'Laranja' or sabor = 'Melancia';
select * from tabela_de_produtos where sabor in('Manga', 'Laranja', 'Melancia');

select * from tabela_de_produtos where sabor in('Manga', 'Laranja', 'Melancia') AND tamanho = '1 Litro';

select * from tabela_de_clientes;
select * from tabela_de_clientes where cidade in('Sao Paulo', 'Rio de Janeiro');
select * from tabela_de_clientes where cidade in('Sao Paulo', 'Rio de Janeiro') AND idade>20;
select * from tabela_de_clientes where cidade in('Sao Paulo', 'Rio de Janeiro') AND idade>20 and idade <=25;
select * from tabela_de_clientes where cidade in('Sao Paulo', 'Rio de Janeiro') AND idade between 20 and 26;

select * from tabela_de_produtos;

select * from tabela_de_produtos where sabor in ('Lima/Limao', 'Morango/Limao');

select * from tabela_de_produtos where sabor LIKE '%Limao';

select * from tabela_de_produtos where sabor LIKE '%Maca';
select * from tabela_de_produtos where sabor LIKE '%Maca%';

select * from tabela_de_produtos where sabor LIKE 'Morango%';
select * from tabela_de_produtos where sabor LIKE '%Morango';

select * from tabela_de_produtos where sabor LIKE 'Morango%' and embalagem = 'PET';

select * from tabela_de_clientes;
select * from tabela_de_clientes where nome like '%Silva%';


