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
    --         =>  Popula
    -- -------------------------------------------------------------------

USE aula1exer2;

INSERT INTO EMPREGADO (rua, numero, cep, complemento, cidade, estado, bairro, cpf, senha, nome)
    VALUES ('Setor Sul', 32, '71700000', '', 'Brasília', 'DF', 'GAMA', '97665687123', 'senhaForte', 'Ricardo Muller'),
           ('Setor Oeste', 42, '71701000', '', 'Brasília', 'DF', 'GAMA', '19872418675', 'senhaForte', 'Jessica Louise'),
           ('Setor Leste', 89, '71702000', '', 'Brasília', 'DF', 'GAMA', '89711248745', 'senhaForte', 'Bernardo Henrique');

INSERT INTO GERENTE (formacaoEscolar, email, cpf, senha, nome)
    VALUES ('Superior', 'henrique@mail.com', '92814985676', 'senhaForte', 'Mateus Figueiredo'),
           ('Superior', 'douglas@mail.com',  '16542714657', 'senhaForte', 'Maria Carla'),
           ('Superior', 'santiago@mail.com', '93158756787', 'senhaForte', 'Samira Alves');

INSERT INTO AREA (nome, descricao)
    VALUES ('Hidráulica', 'Tubos, conexões, torneiras, etc.'),
           ('Elétrica', 'Fiação, disjuntores, tomadas, interruptores, etc.'),
           ('Pintura', 'Tintas, pincéis, rolos, etc.');

INSERT INTO PRODUTO (nome, descricao, valor, FK_AREA_codigo)
    VALUES ('Joelho', 'Conexão TIGRE em foramto de joelho', '9.90', 1),
           ('Fio 5mm', 'Fio de 5mm na cor vermelho e com resistência ao calor', '9.90', 2),
           ('Rolo 10cm', 'Rolo de lã com 10cm', '9.90', 3);

INSERT INTO VENDA (dataVenda, FK_EMPREGADO_matricula)
    VALUES (DATE('2022-11-06'), 1),
           (DATE('2022-11-06'), 2),
           (DATE('2022-11-06'), 2);

INSERT INTO telefone (EMPREGADO_FK, telefone)
    VALUES (1, '+55611213456789'), (2, '+55621213456789'), (3, '+55641213456789');

INSERT INTO supervisiona (fk_EMPREGADO_matricula, fk_GERENTE_matricula)
    VALUES (1, 2), (2, 2), (3, 3);

INSERT INTO possui (fk_VENDA_numeroVenda, fk_PRODUTO_codigo)
    VALUES (1, 1), (2, 2), (3, 3);

INSERT INTO habilitado (fk_EMPREGADO_matricula, fk_AREA_codigo)
    VALUES (1, 1), (2, 2), (3, 3);
