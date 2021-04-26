-- Respostas da página 75 e 76

-- 1. Encontre os nomes e os endereços de todos os alunos.
select alu_nome,alu_ender from aluno;

-- 2. Faça uma consulta que mostre a descrição e o 
--    valor unitário de todos os produtos.
select descricao, valor_venda
from produto;

-- 3. Encontre os códigos, nome e salários de todos os vendedores.
select  codigo_vendedor,nome_vendedor,salario_fixo
from vendedor

--4. Faça uma consulta pra mostrar todos os dados de todos os pedidos.
select * from pedidos;

-- 5. Encontre o código do curso intitulado de Redes I.
select  cur_cod
,cur_nome
from curso
where cur_nome = 'Redes I';
-- 6. Faça uma consulta para trazer os nomes dos vendedores cujo salário esteja entre 1800,76 e 4000,23 e que a
--    faixa de comissão seja ‘A’.
select  nome_vendedor, salario_fixo
from vendedor
WHERE salario_fixo between 1800.76 and 4000.23;

-- 7. Monte um relatório, por meio da tabela histórico, que mostre o código da turma e a matrícula do aluno onde
--    as notas bimestrais do 1º ou do 2º sejam maiores ou iguais a 7,0.
select  hist_matriculaaluno
,hist_codigoturma
,hist_notabim1
,hist_notabim2
from historico
where hist_notabim1 >= 7
  and hist_notabim2 >= 7;

-- 8. Faça uma query (consulta) que retorne os números dos pedidos e os códigos dos vendedores dos pedidos
--    que NÃO foram feitos pelo vendedor de código 101.
select  num_pedido ,codigo_vendedor
from pedido
where codigo_vendedor != 101;

-- 9. Encontre, nos item dos pedidos, o número do pedido, o código do produto e a quantidade para os itens cuja
--    quantidade de produto vendido seja maior ou igual a 6 ou tenha a quantidade exata de 3.
select  num_pedido
,codigo_produto
,quantidade
from item_pedido
where quantidade >= 6
   or quantidade =3 ;

--Gabarito das questões Enade
10 - C; 11 - B