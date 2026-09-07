CREATE TABLE IF NOT EXISTS ingrediente (
	iding INT,
	nome VARCHAR(20),
	kg REAL (6,3)
);

INSERT INTO ingrediente(iding, nome, kg)
VALUES	(1, 'sal', 9.900),
		(2, 'açúcar refinado', 120.000),
		(3, 'manteiga', 0.000),
		(4, 'farinha de trigo', 8.500),
		(5, 'farinha em aveia', 30.000),
		(6, 'canela', 7.500),
		(7, 'fermento em pó', 9.999),
		(8, 'açúcar mascavo', 80.000),
		(9, 'cream cheese', 7.500),
		(10, 'melado', 35.000);

SELECT nome, kg
FROM ingrediente
WHERE kg > 0 AND kg < 10
ORDER BY kg ASC;