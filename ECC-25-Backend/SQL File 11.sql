USE testdb;

-- CREATE TABLE sample71_a (
-- a INT
-- );

-- INSERT INTO sample71_a (a) VALUES
-- (1),
-- (2),
-- (3);

-- SELECT *FROM sample71_a;


-- CREATE TABLE sample71_b (
-- a INT
-- );

-- INSERT INTO sample71_b (a) VALUES
-- (2),
-- (10),
-- (11);

-- SELECT *FROM sample71_b

SELECT *FROM sample71_a
UNION ALL
SELECT *FROM sample71_b;