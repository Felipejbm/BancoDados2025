CREATE DATABASE etecmcm2;

USE etecmcm2;

CREATE TABLE Produtos (
    id_produto int PRIMARY KEY AUTO_INCREMENT,
    nome varchar(255),
    quantidade int,
    preco decimal(10,2),
    marca varchar(255),
    fk_Categorias_id_categoria int
);

CREATE TABLE Categorias (
    id_categoria int PRIMARY KEY AUTO_INCREMENT,
    nome_cat varchar(255)
);
 
ALTER TABLE Produtos ADD CONSTRAINT FK_Produtos_2
    FOREIGN KEY (fk_Categorias_id_categoria)
    REFERENCES Categorias (id_categoria)
    ON DELETE RESTRICT;