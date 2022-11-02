select extract(month from to_date('12/11/2019', 'DD/MM/YYYY')) from dual;

select extract(month from to_date('12/11/2019', 'MM/DD/YYYY')) from dual;

-- 
select '10' + '10' from dual;

-- 
select to_number('10') + '10' from dual;

select to_char(1234.123, '9999') from dual;

select to_char(1234.123, '9999,999') from dual;

select nvl(10, 0) from dual;

-- Quando encontra valor NULO retorna ZERO
select nvl(NULL, 0) from dual;

select
tv.nome as nome_vendedor,
tv.bairro as nome_bairro_vendedor,
tc.nome as nome_cliente,
tv.bairro as nome_bairro_cliente
from
tabela_de_vendedores tv
full join
tabela_de_clientes tc
on tv.bairro = tc.bairro;

-- Substituindo os 'null' por 'não encontrado'

select
nvl(tv.nome, 'NÃO ENCONTRADO') as nome_vendedor,
nvl(tv.bairro, 'NÃO ENCONTRADO')as nome_bairro_vendedor,
nvl(tc.nome , 'NÃO ENCONTRADO') as nome_cliente,
nvl(tc.bairro, 'NÃO ENCONTRADO') as nome_bairro_cliente
from
tabela_de_vendedores tv
full join
tabela_de_clientes tc
on tv.bairro = tc.bairro;

