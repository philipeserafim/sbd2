-- ----------------     << aula1exer2 >>     --------------------
--
--                    SCRIPT DE CRIACAO (DDL)
--
-- Data Criacao ...........: 06/11/2022
-- Autor(es) ..............: Philipe Rosa Serafim
-- Banco de Dados .........: PostgreSQL
-- Banco de Dados(nome) ...: aula1exer2
--
-- date Ultima Alteracao ..: 06/11/2022
--   => Criação
--
-- PROJETO => 01 Base de Dados
--         =>  Controle
-- -------------------------------------------------------------------

USE aula1exer2;

CREATE USER  GERENTE
  IDENTIFIED BY 'senhaGerente';
GRANT ALL PRIVILEGES ON aula1exer2.* TO 'GERENTE';

CREATE USER EMPREGADO
  IDENTIFIED BY 'senhaEmpregado';
GRANT SELECT ON aula1exer2.* TO 'EMPREGADO';
GRANT INSERT ON aula1exer2.VENDA TO 'EMPREGADO';
GRANT INSERT ON aula1exer2.PRODUTO TO 'EMPREGADO';
GRANT INSERT ON aula1exer2.possui TO 'EMPREGADO';

GRANT UPDATE ON aula1exer2.VENDA TO 'EMPREGADO';
GRANT UPDATE ON aula1exer2.PRODUTO TO 'EMPREGADO';
GRANT UPDATE ON aula1exer2.possui TO 'EMPREGADO';