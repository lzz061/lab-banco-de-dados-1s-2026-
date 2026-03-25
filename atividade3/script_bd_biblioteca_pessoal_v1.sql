/*1. Criando datadabese*/
CREATE database biblioteca_pessoal_1s2026;
use biblioteca_pessoal_1s2026;

/*2.Criando tabela Usuario*/
CREATE TABLE usuario(
	id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(128) NOT NULL UNIQUE,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data_atualização TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

/*3.Criando tabela categoria*/
CREATE TABLE categoria (
	id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(128) UNIQUE NOT NULL,
    descricao TEXT,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data_atualização TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

/*4.Criando tabela autor*/
CREATE TABLE autor (
	id_autor INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(128) NOT NULL,
    ano_nascimento YEAR,
    apresentacao TEXT,
    data_cadastro TIMESTAMP,
    data_atualizacao TIMESTAMP,
    ano_morte YEAR
);

/*5.Criando tabela licro*/
CREATE TABLE livro(
	id_livro INT AUTO_INCREMENT PRIMARY KEY,
	id_usuario INT NOT NULL,
    id_autor INT NOT NULL,
    id_editora INT NOT NULL,
    id_categoria INT NOT NULL,
    titulo VARCHAR(255) NOT NULL,
    sinopse TEXT NOT NULL,
    ano_publicacao YEAR NOT NULL,
    lido BOOLEAN NOT NULL,
    data_cadastro TIMESTAMP NOT NULL,
    data_atualizacao TIMESTAMP
);

/*7. Tabela editoria*/
CREATE TABLE editora (
	id_editora INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(255) UNIQUE,
    cidade VARCHAR(64) NOT NULL,
    estado VARCHAR(64) NOT NULL,
	pais VARCHAR(64) NOT NULL,
    data_cadastro TIMESTAMP NOT NULL,
    data_atualizacao TIMESTAMP NOT NULL
);

/*6.Criando relacionamentos(USUARIO)*/
ALTER TABLE livro 
ADD CONSTRAINT fk_usuario 
FOREIGN KEY (id_usuario) 
REFERENCES usuario(id_usuario) 
ON DELETE CASCADE;

/*6.1 Criando relacionamentos(AUTOR)*/
ALTER TABLE livro
ADD CONSTRAINT fk_autor
FOREIGN KEY (id_autor)
REFERENCES autor(id_autor)
ON DELETE RESTRICT;

/*6.2 Criando relacionamentos(EDITORA)*/
ALTER TABLE livro
ADD CONSTRAINT fk_editora
FOREIGN KEY (id_editora)
REFERENCES  editora(id_editora)
ON DELETE RESTRICT;

/*6.3 Criando relacionamentos(CATEGORIA)*/
ALTER TABLE livro
ADD CONSTRAINT fk_categoria
FOREIGN KEY (id_categoria)
REFERENCES categoria(id_categoria)
ON DELETE RESTRICT;