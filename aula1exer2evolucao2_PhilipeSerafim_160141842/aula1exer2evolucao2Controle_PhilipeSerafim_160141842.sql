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
--   => Revisão para evolução
--
-- PROJETO => 01 Base de Dados
--         =>  Controle
-- -------------------------------------------------------------------

USE aula1exer2evolucao2;

CREATE USER  GERENTE
  IDENTIFIED BY 'senhaGerente';
GRANT ALL PRIVILEGES ON aula1exer2evolucao2.* TO 'GERENTE';

CREATE USER EMPREGADO
  IDENTIFIED BY 'senhaEmpregado';
GRANT SELECT ON aula1exer2evolucao2.* TO 'EMPREGADO';
GRANT INSERT ON aula1exer2evolucao2.VENDA TO 'EMPREGADO';
GRANT INSERT ON aula1exer2evolucao2.PRODUTO TO 'EMPREGADO';
GRANT INSERT ON aula1exer2evolucao2.possui TO 'EMPREGADO';

GRANT UPDATE ON aula1exer2evolucao2.VENDA TO 'EMPREGADO';
GRANT UPDATE ON aula1exer2evolucao2.PRODUTO TO 'EMPREGADO';
GRANT UPDATE ON aula1exer2evolucao2.possui TO 'EMPREGADO';