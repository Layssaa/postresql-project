-- ------------ CRIAR --------------------
CREATE TABLE Aluno( 
	id SERIAL,
	nome VARCHAR(255),
	cpf CHAR(11),
	observacao TEXT,
	idade INTEGER,
	dinheiro NUMERIC(10,2),
	altura REAL,
	ativo BOOLEAN,
	data_nascimento DATE,
	hora_aula TIME,
	matriculado_em TIMESTAMP
);

CREATE TABLE curso (
	id SERIAL PRIMARY KEY,
	nome VARCAR(255) NOT NULL
)
-- ------------ BUSCAR -------------------
SELECT * FROM aluno
SELECT * FROM aluno WHERE nome <> 'Layssa'
SELECT * FROM aluno WHERE nome LIKE 'Layssa'
SELECT * FROM aluno WHERE idade <= 'Layssa'
SELECT * FROM aluno WHERE idade >= 'Layssa'

SELECT * FROM aluno WHERE idade BETWEEN 10 AND 50


-- Busca por caracteres
SELECT * FROM aluno WHERE nome LIKE '_aura'
SELECT * FROM aluno WHERE nome NOT LIKE '_aura'

-- Filtra todos que começam com L
SELECT * FROM aluno WHERE nome LIKE 'L%'
SELECT * FROM aluno WHERE nome LIKE '%a'

-- ------------ INSERIR --------------------
INSERT INTO aluno(nome, cpf, observacao, idade, dinheiro, altura, ativo, data_nascimento, hora_aula, matriculado_em) 
VALUES (
	'Laura', 
	'11111111111', 
	'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book',
	35,
	150.50,
	1.80,
	TRUE,
	'1994-08-27',
	'17:30:00',
	'2021-12-29 17:52:30'
	);
	
------------------ ATUALIZAR -------------------
UPDATE 
	ALUNO 
SET
	cpf = '22222222222',
	ativo = FALSE
WHERE
	id = 1
------------------ DELETE -------------------
DELETE FROM
	aluno
WHERE
	nome='Lay'
	
------------------ OPERADORES LÓGICOS -------------------
SELECT *
FROM aluno 
WHERE nome NOT LIKE 'D%' 
AND cpf IS NOT NULL
	
SELECT *
FROM aluno 
WHERE nome LIKE 'Layssa' 
OR nome LIKE 'Lay'
OR nome LIKE 'Laura'
	