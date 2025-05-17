-- USE testdb;

-- CREATE TABLE sample33 (
-- no INT
-- );

-- INSERT INTO sample33 ( no ) VALUES
-- (1),
-- (2),
-- (3),
-- (4),
-- (5),
-- (6),
-- (7);

SELECT * FROM sample33;
SELECT * FROM sample33 LIMIT 3;
SELECT * FROM sample33 ORDER BY no  DESC LIMIT 3;

SELECT * FROM sample33 LIMIT 3 OFFSET 0;
SELECT * FROM sample33 LIMIT 3 OFFSET 3;