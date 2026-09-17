CREATE TABLE dimensions(
	id INT PRIMARY KEY,
	name VARCHAR(255)
);

CREATE TABLE life_registry(
	id INT PRIMARY KEY,
	name VARCHAR(255),
	omega REAL,
	dimensions_id INT,
	FOREIGN KEY (dimensions_id) REFERENCES dimensions(id)
);

INSERT INTO dimensions(id, name)
VALUES	(1, 'C774'),
		(2, 'C784'),
		(3, 'C794'),
		(4, 'C824'),
		(5, 'C875');

INSERT INTO life_registry(id, name, omega, dimensions_id)
VALUES	(1, 'Richard Postman', 5.6, 2),
		(2, 'Simple Jelly', 1.4, 1),
		(3, 'Richard Gran Master', 2.5, 1),
		(4, 'Richard Turing', 6.4, 4),
		(5, 'Richard Strall', 1.0, 3);

SELECT l.name, ROUND(l.omega*1.618, 3) as 'Fator N'
FROM life_registry l
INNER JOIN dimensions d ON l.dimensions_id = d.id
WHERE d.name LIKE 'C875' OR d.name LIKE 'C774'
ORDER BY 'Fator N' ASC;