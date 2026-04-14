SELECT * FROM livro
WHERE id_autor = 8;

SELECT * FROM livro
WHERE id_categoria= 6;

UPDATE categoria
SET nome = 'censurado'
WHERE id_categoria = 6;

DELETE FROM livro
WHERE id_categoria = 6;