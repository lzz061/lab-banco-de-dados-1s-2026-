/*1. Tabela editoria*/
CREATE TABLE editora (
	id_editora INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
    cidade VARCHAR(64),
    estado VARCHAR(64),
	pais VARCHAR(64),
    data_cadastro TIMESTAMP,
    data_atualizacao TIMESTAMP
);

/*2. AJUSTANDO COLUNAS*/
ALTER TABLE editora MODIFY nome VARCHAR(255) UNIQUE;
ALTER TABLE editora MODIFY cidade VARCHAR(64) NOT NULL;
ALTER TABLE editora MODIFY estado VARCHAR(64) NOT NULL;
ALTER TABLE editora MODIFY pais VARCHAR(64) NOT NULL;
ALTER TABLE editora MODIFY data_cadastro TIMESTAMP NOT NULL;
ALTER TABLE editora MODIFY data_atualizacao TIMESTAMP NOT NULL;

DESC editora;