-- -------------------------------------------   << aula3exer1 >>   --------------------------------------------
--
--                                                 SCRIPT DE CRIAÇÃO (DDL)                                                 
--
-- Data Criacao ...........: 15/12/2022
-- Autor(es) ..............: Philipe Rosa Serafim
-- Banco de Dados .........: MySQL 8.0
-- Banco de Dados(nome) ...: aula3exer1
--
-- PROJETO => 01 Base de Dados
--         => 05 Tabelas
--
-- ------------------------------------------------------------------------------------------------------------------------

USE aula3exer1;

CREATE USER  ADMINISTRADOR
  IDENTIFIED BY 'senhaADMINISTRADOR';
GRANT SELECT ON aula3exer1.* TO 'ADMINISTRADOR';

CREATE USER  USUARIO
  IDENTIFIED BY 'senhaUSUARIO';
GRANT SELECT ON aula3exer1.* TO 'USUARIO';

CREATE USER  GESTOR
  IDENTIFIED BY 'senhaGESTOR';
GRANT SELECT ON aula3exer1.* TO 'GESTOR';
GRANT INSERT ON aula3exer1.PLANTONISTA TO 'GESTOR';
GRANT UPDATE ON aula3exer1.PLANTONISTA TO 'GESTOR';
GRANT INSERT ON aula3exer1.SETOR TO 'GESTOR';
GRANT UPDATE ON aula3exer1.SETOR TO 'GESTOR';
