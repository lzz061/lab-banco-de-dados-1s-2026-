/*1. Criando datadabese*/
CREATE database biblioteca_pessoal_1s2026;
use biblioteca_pessoal_1s2026;

/*2.Criando tabela Usuario*/
CREATE TABLE usuario(
	id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(128) NOT NULL UNIQUE,
    senha VARCHAR(128) NOT NULL,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data_atualização TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

/*3.Criando tabela categoria*/
CREATE TABLE categoria (
	id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(128) UNIQUE NOT NULL,
    descricao TEXT,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data_atualização TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

/*4.Criando tabela autor*/
CREATE TABLE autor (
	id_autor INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(128) NOT NULL UNIQUE,
    ano_nascimento YEAR,
    ano_morte YEAR,
    apresentacao TEXT,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

/*5. Tabela editoria*/
CREATE TABLE editora (
	id_editora INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(255) UNIQUE,
    cidade VARCHAR(64) NOT NULL,
    estado VARCHAR(64) NOT NULL,
	pais VARCHAR(64) NOT NULL,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

/*6.Criando tabela licro*/
CREATE TABLE livro(
	id_livro INT AUTO_INCREMENT PRIMARY KEY,
	id_usuario INT ,
    id_autor INT,
    id_editora INT,
    id_categoria INT,
    titulo VARCHAR(255) NOT NULL,
    sinopse TEXT,
    ano_publicacao YEAR,
    lido BOOLEAN DEFAULT (0),
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

/*6.Criando relacionamentos(USUARIO_LIVRO)*/
CONSTRAINT fk_usuario_livro 
FOREIGN KEY (id_usuario) 
REFERENCES usuario(id_usuario) 
ON DELETE CASCADE,

/*6.1 Criando relacionamentos(AUTOR_LIVRO)*/
CONSTRAINT fk_autor_livro
FOREIGN KEY (id_autor)
REFERENCES autor(id_autor)
ON DELETE RESTRICT,

/*6.2 Criando relacionamentos(EDITORA_LIVRO)*/
CONSTRAINT fk_editora_livro
FOREIGN KEY (id_editora)
REFERENCES  editora(id_editora)
ON DELETE RESTRICT,

/*6.3 Criando relacionamentos(CATEGORIA_LIVRO)*/
CONSTRAINT fk_categoria_livro
FOREIGN KEY (id_categoria)
REFERENCES categoria(id_categoria)
ON DELETE RESTRICT
);