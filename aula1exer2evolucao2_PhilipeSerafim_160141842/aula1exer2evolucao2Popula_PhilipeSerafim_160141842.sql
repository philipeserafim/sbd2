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
--   => Revisão para evolução e adição de tuplas
--
-- PROJETO => 01 Base de Dados
--         =>  Popula
-- -------------------------------------------------------------------

USE aula1exer2evolucao2;

INSERT INTO EMPREGADO (rua, numero, cep, complemento, cidade, estado, bairro, cpf, senha, nome) VALUES
        ('Chácara Chácara 133',   01, '72001825', '', 'Brasília', 'DF', 'Vicente Pires', '31980230099', 'senhaForte', 'Allana Adriana Clarice Melo'),
        ('Quadra QS 25 Conjunto 3', 02, '71884776', '', 'Brasília', 'DF', 'Riacho Fundo II', '48871585054', 'senhaForte', 'Juliana Bianca Jéssica de Paula'),
        ('Quadra QRSW 4 Bloco B-8', 03, '70675428', '', 'Brasília', 'DF', 'Setor Sudoeste', '14979806074', 'senhaForte', 'Silvana Cecília Rayssa Silva'),
        ('Quadra QBR 7 Bloco O', 04, '72594015', '', 'Brasília', 'DF', 'Santa Maria', '42717809015', 'senhaForte', 'Jéssica Gabrielly Campos'),
        ('Quadra SHPS Quadra 106A', 05, '72238060', '', 'Brasília', 'DF', 'Ceilândia', '69867752023', 'senhaForte', 'Thomas Luan Sérgio dos Santos'),
        ('QD QS 401 Conjunto', 06, '72319528', '', 'Brasília', 'DF', 'Asa Norte', '39494937007', 'senhaForte', 'Vera Eduarda Alves'),
        ('Área Especial SMDB', 07, '71680001', '', 'Brasília', 'DF', 'Mansões Dom Bosco', '24645772007', 'senhaForte', 'Raquel Isabela Fogaça');

INSERT INTO GERENTE (formacaoEscolar, email, cpf, senha, nome) VALUES
        ('Superior','sandracortereal@mail.com', '36945706320', 'senhaForte', 'Lara Sandra Corte Real'),
        ('Técnico', 'geraldoyurifreitas@mail.com',  '70283340231', 'senhaForte', 'Ricardo Geraldo Yuri Freitas'),
        ('Superior','camilaalanavieira@mail.com',  '70283340231', 'senhaForte', 'Camila Alana Vieira'),
        ('Técnico', 'carolinanataliafernandes@mail.com',  '25378752302', 'senhaForte', 'Carolina Natália Fernandes'),
        ('Superior','gaelmatheusalmeida@mail.com', '28109094236', 'senhaForte', 'Gael Matheus Almeida'),
        ('Técnico', 'ceciliacamilapeixoto@mail.com', '75152775050', 'senhaForte', 'Cecília Camila Peixoto'),
        ('Técnico', 'marciaLarissateixeira@mail.com', '72058955960', 'senhaForte', 'Márcia Larissa Teixeira');

INSERT INTO AREA (nome, descricao) VALUES
        ('Hidráulica', 'Tubos, conexões, torneiras, etc.'),
        ('Revestimentos', 'Cerâmicas, Porcelanatos, etc'),
        ('Decoração', 'Quadros, tapetes, etc.'),
        ('Elétrica', 'Fiação, tomadas, lâmpadas, etc.'),
        ('Pintura', 'Tintas, rolos, pinceis, etc.'),
        ('Alvenaria', 'Tijolo, cimento, areia, etc.'),
        ('Marcenaria', 'Madeira, MDF, etc.');

INSERT INTO PRODUTO (nome, descricao, valor, FK_AREA_codigo) VALUES
        ('Joelho Tigre 10mm', 'Conexão em L, TIGRE, 10mm, azul', '14.90', 1),
        ('Porcelanato Italia', 'Classe A, 79x79, branco', '15.90', 2),
        ('Moldura preta', 'Moldura com vidro, preto, 25x25', '19.90', 3),
        ('Tomada 3 pinos', 'Tomada 3 pinos, branca, lorenzeti', '79.90', 4),
        ('Tinta Branco Gelo', 'Coral, Branco gelo, 25L', '24.90', 5),
        ('Tijolo Baiano', 'Dezena', '32.90', 6),
        ('Placa MDF', 'Placa MDF 50x50x5', '23.90', 7);

INSERT INTO VENDA (dataVenda, FK_EMPREGADO_matricula) VALUES
        ('2022-11-06', 1),
        ('2022-10-07', 2),
        ('2022-09-08', 3),
        ('2022-08-09', 4),
        ('2022-07-10', 5),
        ('2022-06-11', 6),
        ('2022-05-12', 7);

INSERT INTO telefone (EMPREGADO_FK, telefone) VALUES
        (1, '61996248068'),
        (2, '43987003002'),
        (3, '67993492936'),
        (4, '81999196576'),
        (5, '98981341755'),
        (6, '68984856687'),
        (7, '32989210700');

INSERT INTO supervisiona (fk_EMPREGADO_matricula, fk_GERENTE_matricula) VALUES
        (1, 7),
        (2, 6),
        (3, 5),
        (4, 4),
        (5, 3),
        (6, 2),
        (7, 1);

INSERT INTO possui (fk_VENDA_numeroVenda, fk_PRODUTO_codigo) VALUES
        (1, 7),
        (2, 6),
        (3, 5),
        (4, 4),
        (5, 3),
        (6, 2),
        (7, 1);

INSERT INTO habilitado (fk_EMPREGADO_matricula, fk_AREA_codigo) VALUES
        (1, 7),
        (2, 6),
        (3, 5),
        (4, 4),
        (5, 3),
        (6, 2),
        (7, 1);
