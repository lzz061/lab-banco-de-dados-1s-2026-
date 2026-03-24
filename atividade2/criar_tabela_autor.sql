/*1. Criando a tabela autor*/
CREATE TABLE autor (
	id_autor INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(128) NOT NULL,
    ano_nascimento YEAR,
    apresentacao TEXT,
    data_cadastro TIMESTAMP,
    data_atualizacao TIMESTAMP
);
/*2. AJUSTANDO COLUNAS*/
ALTER TABLE autor ADD ano_morte YEAR NOT NULL;
ALTER TABLE autor MODIFY nome VARCHAR(128) UNIQUE NOT NULL;

DESC autor;