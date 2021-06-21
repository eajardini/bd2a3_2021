--1. No relatório de desempenho de vendedores, há a necessidade de saber o número de pedido que cada vendedor

--Antes, vamos criar um vendedor novo para garantir que haja pelo menos um vendedor sem pedido.
insert into vendedor
values (1211, 'Vendedor sem nome', 43211, 'A', '123456');

select nome_vendedor, count(num_pedido)
from vendedor ve left join pedido pe 
     on (ve.codigo_vendedor = pe.codigo_vendedor)
group by 1;

Resposta:
   nome_vendedor   | count 
-------------------+-------
 Carlos            |     1
 Felipe            |     1
 Vendedor sem nome |     0
 Maurício          |     2
 Antônio           |     3
 Josias            |     1
 João              |     7
 Jonas             |     1
 José              |     2
(9 rows)


--2. Em escolas, é corriqueiro que alunos façam matrícula, mas abandonem o curso sem mesmo terminar um

select alu_nome , hist_matriculaaluno
from aluno alu left join historico hist
           on (alu.alu_matricula = hist_matriculaaluno)
;

Resposta:

 alu_nome        | hist_matriculaaluno 
------------------------+---------------------
 Marcos Silva Hydra     |                   1
 Luis Firmino Rios      |                   5
 Marcos Silva Hydra     |                   1
 Marcos Silva Hydra     |                   1
 Tadeu Mauro Alencar    |                   4
 Wellington Machado     |                   3
 Otávio Ramos Oliveira  |                    
 Ademar Silveira Barros |                    

 
 --3. Altere a consulta anterior para trazer somente os alunos desistentes. O relatório deve trazer somente o nome
 
 select alu_nome                        
from aluno alu left join historico hist
   on (alu.alu_matricula = hist_matriculaaluno)
where hist_matriculaaluno is null;

Respsota:
        alu_nome        
------------------------
 Otávio Ramos Oliveira
 Ademar Silveira Barros
(2 rows)

