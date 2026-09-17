CREATE TABLE league(
	position INT PRIMARY KEY,
	team VARCHAR(255)
);

INSERT INTO league(position, team)
VALUES	(1, 'The Quack Bats'),
		(2, 'The Responsible Hornets'),
		(3, 'The Bawdy Dolphins'),
		(4, 'The Abstracted Sharks'),
		(5, 'The Nervous Zebras'),
		(6, 'The Oafish Owls'),
		(7, 'The Unequaled Bison'),
		(8, 'The Keen Kangaroos'),
		(9, 'The Left Nightingales'),
		(10, 'The Terrific Elks'),
		(11, 'The Lumpy Frogs'),
		(12, 'The Swift Buffalo'),
		(13, 'The Big Chargers'),
		(14, 'The Rough Robins'),
		(15, 'The Silver Crocs');

SELECT 'Podium: ' || team as name
FROM league
WHERE position <=3
UNION ALL
SELECT 'Demoted: ' || team
FROM league
WHERE position >=14;