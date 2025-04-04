USE testdb;
 create table sample34 (
 no INT,
 price INT,
 quantity int
 );
 
 INSERT INTO sample34 (no, price, quantity) values
 (1, 100, 10),
 (2, 230, 24),
 (3, 1980, 1);
 
 SELECT * FROM sample34;
 SELECT *, price*quantity FROM sample34;
 SELECT *, price*quantity AS amount FROM sample34;
 SELECT *, price*quantity AS amount FROM sample34
 WHERE price * quantity >= 2000;
 
 SELECT *, price*quantity AS amount FROM sample34 
 ORDER BY price*quantity DESC;
 SELECT *, price*quantity AS amount FROM sample34 
 ORDER BY amount DESC;
 