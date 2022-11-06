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
    --         =>  Tabelas
    -- -------------------------------------------------------------------

    CREATE DATABASE IF NOT EXISTS aula1exer2;
    USE aula1exer2;

    CREATE TABLE EMPREGADO (
        rua VARCHAR(55) NOT NULL,
        numero VARCHAR(10) NOT NULL,
        cep VARCHAR(9) NOT NULL,
        complemento VARCHAR(25),
        cidade VARCHAR(55) NOT NULL,
        estado VARCHAR(25) NOT NULL,
        bairro VARCHAR(25) NOT NULL,
        matricula INT NOT NULL AUTO_INCREMENT,
        cpf VARCHAR(11) NOT NULL,
        senha VARCHAR(25) NOT NULL,
        nome VARCHAR(55) NOT NULL,

        CONSTRAINT EMPREGADO_PK PRIMARY KEY (matricula)
    )ENGINE=INNODB AUTO_INCREMENT=1;

    CREATE TABLE GERENTE (
        formacaoEscolar VARCHAR(55) NOT NULL,
        email VARCHAR(55) NOT NULL,
        matricula INT NOT NULL AUTO_INCREMENT,
        cpf VARCHAR(11) NOT NULL,
        senha VARCHAR(25) NOT NULL,
        nome VARCHAR(55) NOT NULL,

        CONSTRAINT GERENTE_PK PRIMARY KEY (matricula)
    )ENGINE=INNODB AUTO_INCREMENT=1;

    CREATE TABLE AREA (
        codigo INT NOT NULL AUTO_INCREMENT,
        nome VARCHAR(25) NOT NULL,
        descricao VARCHAR(55) NOT NULL,

        CONSTRAINT AREA_PK PRIMARY KEY (codigo)
    )ENGINE=INNODB AUTO_INCREMENT=1;

    CREATE TABLE PRODUTO (
        codigo INT NOT NULL AUTO_INCREMENT,
        nome VARCHAR(25) NOT NULL,
        descricao VARCHAR(55) NOT NULL,
        valor DOUBLE NOT NULL,
        FK_AREA_codigo INT NOT NULL,

        CONSTRAINT PRODUTO_PK PRIMARY KEY (codigo),
        CONSTRAINT AREA_FK FOREIGN KEY (FK_AREA_codigo) REFERENCES AREA (codigo)
    )ENGINE=INNODB AUTO_INCREMENT=1;

    CREATE TABLE VENDA (
        dataVenda TIMESTAMP NOT NULL,
        numeroVenda INT NOT NULL AUTO_INCREMENT,
        FK_EMPREGADO_matricula INT NOT NULL,

        CONSTRAINT VENDA_PK PRIMARY KEY (numeroVenda),
        CONSTRAINT EMPREGADO_FK FOREIGN KEY (FK_EMPREGADO_matricula) REFERENCES EMPREGADO (matricula)
    )ENGINE=INNODB AUTO_INCREMENT=1;

    CREATE TABLE telefone (
        EMPREGADO_FK INT NOT NULL,
        telefone VARCHAR(25) NOT NULL,

        CONSTRAINT EMPREGADO_telefone_FK FOREIGN KEY (EMPREGADO_FK) REFERENCES EMPREGADO (matricula)
    )ENGINE=INNODB;

    CREATE TABLE supervisiona (
        fk_EMPREGADO_matricula INT NOT NULL,
        fk_GERENTE_matricula INT NOT NULL,

        CONSTRAINT supervisiona_EMPREGADO_fk FOREIGN KEY (fk_EMPREGADO_matricula) REFERENCES EMPREGADO (matricula),
        CONSTRAINT supervisiona_GERENTE_fk FOREIGN KEY (fk_GERENTE_matricula) REFERENCES GERENTE (matricula)
    )ENGINE=INNODB;

    CREATE TABLE possui (
        fk_VENDA_numeroVenda INT NOT NULL,
        fk_PRODUTO_codigo INT NOT NULL,

        CONSTRAINT possui_VENDA_FK FOREIGN KEY (fk_VENDA_numeroVenda) REFERENCES VENDA (numeroVenda),
        CONSTRAINT possui_PRODUTO_FK FOREIGN KEY (fk_PRODUTO_codigo) REFERENCES PRODUTO (codigo)
    )ENGINE=INNODB;

    CREATE TABLE habilitado (
        fk_EMPREGADO_matricula INT NOT NULL,
        fk_AREA_codigo INT NOT NULL,

        CONSTRAINT fk_EMPREGADO_MATRICULA FOREIGN KEY (fk_EMPREGADO_matricula) REFERENCES EMPREGADO (matricula),
        CONSTRAINT fk_AREA_CODIGO FOREIGN KEY (fk_AREA_codigo) REFERENCES AREA (codigo)
    )ENGINE=INNODB;