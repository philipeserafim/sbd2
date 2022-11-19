-- ----------------     << aula1exer2evolucao2 >>     --------------------
--
--                    SCRIPT DE CRIACAO (DDL)
--
-- Data Criacao ...........: 06/11/2022
-- Autor(es) ..............: Philipe Rosa Serafim
-- Banco de Dados .........: PostgreSQL
-- Banco de Dados(nome) ...: aula1exer2evolucao2
--
-- date Ultima Alteracao ..: 10/11/2022
--   => Criação das views
--
-- PROJETO => 01 Base de Dados
--         =>  Selects
-- -------------------------------------------------------------------

USE aula1exer2evolucao2;

select g.nome as GERENTE, count(sup.fk_empregado_matricula) as QTD_EMPREGADO from gerente g, supervisiona sup
	where sup.fk_gerente_matricula = g.matricula
group by g.matricula;

select a.nome as AREA, sum(prod.valor) as TOTAL_VENDAS from area a, venda v, possui p, produto prod
		where p.fk_venda_numeroVenda = v.numeroVenda
		and p.fk_produto_codigo = prod.codigo
		and prod.fk_area_codigo = a.codigo
		GROUP BY a.nome;