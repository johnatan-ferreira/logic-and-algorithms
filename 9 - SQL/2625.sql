CREATE TABLE IF NOT EXISTS customers (
	id INT PRIMARY KEY,
	name VARCHAR(255),
	street VARCHAR(255),
	city VARCHAR(255),
	state CHAR(2),
	credit_limit REAL
);

CREATE TABLE IF NOT EXISTS natural_person (
	id_customers INT,
	cpf CHAR(14),
	FOREIGN KEY (id_customers) REFERENCES customers(id)
);

INSERT INTO customers (id, name, street, city, state, credit_limit)
VALUES	(1, 'Nicolas Diogo Cardoso', 'Acesso Um', 'Porto Alegre', 'RS', 475),
		(2, 'Cecília Olivia Rodrigues', 'Rua Sizuka Usuy', 'Cianorte', 'PR', 3170),
		(3, 'Augusto Fernando Carlos Eduardo Cardoso', 'Rua Baldomiro Koerich', 'Palhoça', 'SC', 1067),
		(4, 'Nicolas Diogo Cardoso', 'Acesso Um', 'Porto Alegre', 'RS', 475),
		(5, 'Sabrina Heloisa Gabriela Barros', 'Rua Engenheiro Tito Marques Fernandes', 'Porto Alegre', 'RS', 4312),
		(6, 'Joaquim Diego Lorenzo Araújo', 'Rua Vitorino', 'Novo Hamburgo', 'RS', 2314);

INSERT INTO natural_person (id_customers, cpf)
VALUES	(1, '26774287840'),
		(2, '97918477200');

SELECT 	SUBSTR(cpf, 1, 3) || '.' ||
		SUBSTR(cpf, 4, 3) || '.' ||
		SUBSTR(cpf, 7, 3) || '-' ||
		SUBSTR(cpf, 10, 2) AS CPF
FROM natural_person;