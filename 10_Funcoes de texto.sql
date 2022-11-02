-- Exibindo a data do sstema
select sysdate from dual;

select to_char(sysdate, 'DD/MM/YYYY HH:MI:SS') from dual;

select nome, data_de_nascimento from tabela_de_clientes;
select nome, to_char(data_de_nascimento, 'DD MONTH YYYY, DAY') from tabela_de_clientes;

-- Adicionando números a uma data
select sysdate + 127 from dual;

select nome, idade, to_char(data_de_nascimento, 'DD MONTH YYYY, DAY') from tabela_de_clientes;

-- Calculando a IDADE ATUAL dos clientes através da data do sistema
select nome, idade, (SYSDATE - data_de_nascimento)/365 from tabela_de_clientes;

-- Outra forma de calcular a idade atual, 1º calc os meses entre d.nasc e d.sistema divido por 12
select nome, idade, months_between(sysdate, data_de_nascimento)/12 from tabela_de_clientes;

-- Adicionando 10 meses a data atual;
select add_months (sysdate, 10) from dual;

-- Retornando um dia da semana a partir da data do sistema
select sysdate, next_day(sysdate, 'sexta') from dual;

-- Retorna o último dia do mês atual;
select sysdate, last_day(sysdate) from dual;

-- Retorna o primeiro dia do ano
select sysdate, trunc(sysdate, 'YEAR') from dual;

-- Retorna o primeiro dia do ANO
select sysdate, trunc(sysdate, 'MONTH') from dual;

-- Com o round, caso passe do meio do mês/ano a função retorna o próximo período.
select sysdate, round(sysdate, 'MONTH') from dual;