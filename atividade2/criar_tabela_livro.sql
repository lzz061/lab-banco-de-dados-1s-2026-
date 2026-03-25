/*1.Criando tabela 'livro'*/
CREATE TABLE livro(
	id_livro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    sinopse TEXT NOT NULL,
    autor VARCHAR(128) NOT NULL,
    editora VARCHAR(128) NOT NULL,
    categoria VARCHAR(128) NOT NULL,
    ano_publicacao YEAR NOT NULL
);
/*2. Criando coluna lido*/
ALTER TABLE livro
ADD COLUMN lido BOOLEAN NOT NULL;

/*3. Alterando a coluna data de cadastro*/
ALTER TABLE livro
ADD COLUMN data_cadastro TIMESTAMP NOT NULL;

/*4. Criando a a coluna data de atualização*/
ALTER TABLE livro
ADD COLUMN data_atualizacao TIMESTAMP NOT NULL;

/*5. Colunas deletadas*/
ALTER TABLE livro
DROP COLUMN autor;

ALTER TABLE livro
DROP COLUMN editora;

ALTER TABLE livro
DROP COLUMN categoria;

/*6. ADICIONANDO COLUNA*/
ALTER TABLE livro 
MODIFY COLUMN id_usuario INT NOT NULL;

ALTER TABLE livro
ADD COLUMN id_autor INT NOT NULL;

ALTER TABLE livro
ADD COLUMN id_editora INT NOT NULL;

ALTER TABLE livro
ADD COLUMN id_categoria INT NOT NULL;

/*6. ADICIONANDO RELACIONAMENTOS DAS COLUNAS*/
ALTER TABLE livro 
ADD CONSTRAINT fk_usuario 
FOREIGN KEY (id_usuario) 
REFERENCES usuario(id_usuario) 
ON DELETE CASCADE;

ALTER TABLE livro
ADD CONSTRAINT fk_autor
FOREIGN KEY (id_autor)
REFERENCES autor(id_autor)
ON DELETE RESTRICT;

ALTER TABLE livro
ADD CONSTRAINT fk_editora
FOREIGN KEY (id_editora)
REFERENCES  editora(id_editora)
ON DELETE RESTRICT;

ALTER TABLE livro
ADD CONSTRAINT fk_categoria
FOREIGN KEY (id_categoria)
REFERENCES categoria(id_categoria)
ON DELETE RESTRICT;

DESC livro;