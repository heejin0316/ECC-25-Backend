USE testdb;

CREATE TABLE sample51 (
no INT,
name CHAR,
quantity int
);

INSERT INTO sample51 (no, name, quantity) VALUES
(1, 'A', 1),
(2, 'A', 2),
(3, 'B', 10),
(4, 'C', 3),
(5, NULL, NULL);

-- SELECT * FROM sample51;

-- SELECT COUNT(*) FROM sample51;

-- SELECT COUNT(*) FROM sample51 WHERE name = 'A';

-- SELECT COUNT(no), COUNT(name) FROM sample51;

-- SELECT ALL name FROM sample51;
-- SELECT DISTINCT name FROM sample51;
-- SELECT COUNT(ALL name), COUNT(DISTINCT name) FROM sample51;

-- SELECT AVG(quantity), SUM(quantity)/COUNT(quantity) FROM sample51;
-- SELECT AVG(CASE WHEN quantity IS NULL THEN 0 ELSE quantity END) AS avgnull0 FROM sample51;

-- SELECT MIN(quantity), MAX(quantity), MIN(name), MAX(name) FROM sample51;

-- SELECT name FROM sample51 GROUP BY name;

-- SELECT name, COUNT(name) FROM sample51 GROUP BY name HAVING COUNT(name) = 1;
SELECT name, COUNT(name), SUM(quantity) 
FROM sample51 GROUP BY name ORDER BY SUM(quantity) DESC;