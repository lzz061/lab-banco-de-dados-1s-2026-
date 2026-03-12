CREATE TABLE autor (
	id_autor INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(128) NOT NULL,
    ano_nascimento YEAR,
    apresentacao TEXT,
    data_cadastro TIMESTAMP,
    data_atualizacao TIMESTAMP
);
SHOW TABLES;