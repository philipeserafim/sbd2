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

INSERT INTO SETOR (descricao) VALUES
    ("Cardiologia"),
    ("Neurologia"),
    ("Pediatria"),
    ("Ortopedia");
INSERT INTO PLANTONISTA (cmr, nome, sexo) VALUES
    ("Alex Karev", 'M'),
    ("Cristina Yung", 'F'),
    ("Dereck Sherped", 'M'),
    ("Callie Torres", 'F');
INSERT INTO ESPECIALIDADE (nome) VALUES
    ("Cardiologista"),
    ("Neurologista"),
    ("Pediatra"),
    ("Ortopedista");
INSERT INTO lotado (fk_PLANTONISTA_idPlantonista, fk_SETOR_idSetor, horaFinalPlantao, horaInicioPlantao) VALUES
    (1, 3, "2022-12-24 19:00", "2022-12-25 07:00" ),
    (2, 1, "2022-12-24 19:00", "2022-12-25 07:00" ),
    (3, 2, "2022-12-24 19:00", "2022-12-25 07:00" ),
    (4, 4, "2022-12-24 19:00", "2022-12-25 07:00" );
INSERT INTO possui (fk_PLANTONISTA_idPlantonista, fk_ESPECIALIDADE_idEspecialidade) VALUES
    (1, 3),
    (2, 1),
    (3, 2),
    (4, 4);

