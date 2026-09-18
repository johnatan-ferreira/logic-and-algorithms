CREATE TABLE people(
	id INT PRIMARY KEY,
	name VARCHAR(255)
);

INSERT INTO people(id, name)
VALUES	(1, 'Karen'),
		(2, 'Manuel'),
		(3, 'Ygor'),
		(4, 'Valentine'),
		(5, 'Jo');

SELECT name, length(name) as l
FROM people
ORDER BY l DESC;