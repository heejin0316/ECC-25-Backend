-- USE testdb;

-- CREATE TABLE sample551 (
-- no INT,
-- a char(10)
-- );

-- INSERT INTO sample551 (NO, a) VALUES
-- (1, NULL),
-- (2, NULL),
-- (3, NULL),
-- (4, NULL),
-- (5, NULL);

-- UPDATE sample551 SET a ='있음' WHERE
-- EXISTS (SELECT * FROM sample552 WHERE no_2 = no);

-- UPDATE sample551 SET a ='없음' WHERE
-- NOT EXISTS (SELECT * FROM sample552 WHERE no_2 = no);

-- SELECT * FROM sample551 WHERE no IN (3, 5);


CREATE TABLE sample552 (
no_2 INT
);

INSERT INTO sample552 (no_2) VALUES
(3),
(5);

-- SELECT * FROM sample552;
SELECT * FROM sample551 WHERE no IN 
(SELECT no_2 FROM sample552);
