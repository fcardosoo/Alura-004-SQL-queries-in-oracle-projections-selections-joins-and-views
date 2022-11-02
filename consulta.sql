select * from tabela_de_clientes;

select NOME, CPF, BAIRRO from tabela_de_clientes;

select NOME as "Nome do Cliente", CPF as "Identificador", BAIRRO from tabela_de_clientes TDC;


/* Filtros QUANTITATIVOS*/

select * from tabela_de_clientes;

select * from tabela_de_clientes where idade <> 18;

select * from tabela_de_clientes where data_de_nascimento >= '14/11/95';
select * from tabela_de_clientes where data_de_nascimento >= TO_DATE('14/11/1995', 'DD/MM/YYYY');


SELECT * FROM tabela_de_clientes WHERE IDADE BETWEEN 18 AND 22;

SELECT * FROM tabela_de_clientes WHERE BAIRRO <= 'Lapa';



select * from tabela_de_produtos where sabor='Manga' or tamanho='470 ml';
select * from tabela_de_produtos where sabor='Manga' and tamanho='470 ml';
select * from tabela_de_produtos where NOT(sabor='Manga' or tamanho='470 ml');
select * from tabela_de_produtos where NOT(sabor='Manga' AND tamanho='470 ml');

select * from tabela_de_produtos where sabor='Manga' or sabor='Laranja' or sabor= 'Melancia';
select * from tabela_de_produtos where sabor IN('Manga', 'Laranja', 'Melancia');

select * from tabela_de_produtos where sabor IN('Manga', 'Laranja', 'Melancia') and tamanho = '1 Litro';

select * from tabela_de_clientes;
select * from tabela_de_clientes where cidade in ('Rio de Janeiro', 'Sao Paulo');
select * from tabela_de_clientes where cidade in ('Rio de Janeiro', 'Sao Paulo') and idade >= 20;
select * from tabela_de_clientes where cidade in ('Rio de Janeiro', 'Sao Paulo') and idade >= 20 and idade <= 25;

select * from tabela_de_clientes where cidade in ('Rio de Janeiro', 'Sao Paulo') and idade between 20 and 25;
