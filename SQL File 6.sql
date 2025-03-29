USE testdb;

CREATE TABLE sample35 (
no INT,
price INT,
quantity INT,
unit VARCHAR(10)
);

INSERT INTO sample35 VALUES 
(1, 100, 10, '개'),
(2, 230, 24, '캔'),
(3, 1980, 1, '장');

-- SELECT * FROM sample35;
SELECT CONCAT(quantity, unit) FROM sample35;
