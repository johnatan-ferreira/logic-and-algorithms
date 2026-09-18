CREATE TABLE people(
    id INT PRIMARY KEY,
    name VARCHAR(255),
    salary REAL
);

INSERT INTO people(id, name, salary)
VALUES (1, 'James M. Tabarez', 883),
(2, 'Rafael T. Hendon', 4281),
(3, 'Linda J. Gardner', 4437),
(4, 'Nicholas J. Conn', 8011),
(5, 'Karol A. Morales', 2508),
(6, 'Lolita S. Graves', 8709);

SELECT name, ROUND(salary*0.1, 2) as tax
FROM people
WHERE salary > 3000;