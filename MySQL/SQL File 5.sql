-- USE testdb;

-- create table sample341 (
-- amount DECIMAL(6, 2)
-- );
--  INSERT INTO sample341 (amount) values
--  (5961.60),
--  (2138.40),
--  (1080.00);
 
 select * from sample341;
 SELECT amount, ROUND(amount) FROM sample341;
 SELECT amount, ROUND(amount, 1) FROM sample341;
 SELECT amount, ROUND(amount, -2) FROM sample341;