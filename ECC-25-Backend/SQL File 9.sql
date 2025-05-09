USE testdb;

DROP TABLE sample54;

CREATE TABLE sample54 (
no INT,
a INT
);

INSERT INTO sample54 (no, a) VALUES
(1, 100),
(2, 900),
(3, 20),
(4, 80);


SELECT MIN(a) FROM sample54;

DELETE FROM sample54 WHERE a=(SELECT MIN(a) FROM sample54);
SELECT * FROM sample54;