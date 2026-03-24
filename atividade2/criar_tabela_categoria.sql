/*1. Criando a Categoria*/
CREATE TABLE categoria (
	id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(128),
    descricao TEXT,
    data_cadastro TIMESTAMP,
    data_atualizacao TIMESTAMP
);

/*2. AJUSTANDO COLUNAS*/
ALTER TABLE categoria MODIFY COLUMN nome VARCHAR(128) UNIQUE;

DESC categoria;