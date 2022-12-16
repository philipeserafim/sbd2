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

CREATE DATABASE IF NOT EXISTS aula3exer1
    DEFAULT CHARACTER SET utf8;
USE aula3exer1;

CREATE TABLE SETOR (
    idSetor INT AUTO_INCREMENT NOT NULL,
    descricao VARCHAR(55) NOT NULL,

    CONSTRAINT PK_SETOR PRIMARY KEY(idSetor)
) ENGINE = InnoDB  AUTO_INCREMENT = 1;

CREATE TABLE PLANTONISTA (
    idPlantonista INT AUTO_INCREMENT NOT NULL,
    crm VARCHAR(15) NOT NULL,
    nome VARCHAR(55) NOT NULL,
    sexo ENUM('M', 'F') NOT NULL,

    CONSTRAINT PK_PLANTONISTA PRIMARY KEY(idPlantonista),
    CONSTRAINT UN_PLANTONISTA UNIQUE(crm)
) ENGINE = InnoDB  AUTO_INCREMENT = 1;

CREATE TABLE ESPECIALIDADE (
    idEspecialidade INT NOT NULL,
    nome VARCHAR(55) NOT NULL,

    CONSTRAINT PK_ESPECIALIDADE PRIMARY KEY(idEspecialidade)
) ENGINE = InnoDB  AUTO_INCREMENT = 1;

CREATE TABLE lotado (
    fk_PLANTONISTA_idPlantonista INT NOT NULL,
    fk_SETOR_idSetor INT NOT NULL,
    horaFinalPlantao DATETIME NOT NULL,
    horaInicioPlantao DATETIME NOT NULL,

    CONSTRAINT lotado_FK_PLANTONISTA FOREIGN KEY(fk_PLANTONISTA_idPlantonista)
        REFERENCES PLANTONISTA (idPlantonista),
    CONSTRAINT lotado_FK_SETOR FOREIGN KEY(fk_SETOR_idSetor)
        REFERENCES SETOR (idSetor),
    CONSTRAINT UN_PLANTONISTA
        UNIQUE(fk_PLANTONISTA_idPlantonista, horaFinalPlantao, horaInicioPlantao)
);

CREATE TABLE possui (
    fk_PLANTONISTA_idPlantonista INT NOT NULL,
    fk_ESPECIALIDADE_idEspecialidade INT NOT NULL,

    CONSTRAINT possui_FK_PLANTONISTA FOREIGN KEY(fk_PLANTONISTA_idPlantonista)
        REFERENCES PLANTONISTA (idPlantonista),
    CONSTRAINT possui_FK_ESPECIALIDADE FOREIGN KEY(fk_ESPECIALIDADE_idEspecialidade)
        REFERENCES ESPECIALIDADE (idEspecialidade)
);