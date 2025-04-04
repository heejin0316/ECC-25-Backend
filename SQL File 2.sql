-- USE testdb;

-- CREATE TABLE sample32 (
-- a INT,
-- b INT
-- );

-- INSERT INTO sample32 (a, b) VALUES
-- (1, 1),
-- (2, 1),
-- (2, 2),
-- (1, 3),
-- (1, 2);

SELECT * FROM sample32 ORDER BY a, b;
SELECT * FROM sample32 ORDER BY b, a;
SELECT * FROM sample32 ORDER BY a ASC, b DESC;