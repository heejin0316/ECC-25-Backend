-- CREATE DATABASE testdb;
-- USE testdb;

-- CREATE TABLE sample31 (
-- name VARCHAR(50),
-- age INT,
-- address VARCHAR(100)
-- );

-- -- INSERT INTO sample31 (name, age, address) VALUES
-- ('A씨', 36, '대구광역시 중구'),
-- ('B씨', 18, '부산광역시 연제구'),
-- ('C씨', 25, '서울특별시 중구');

 SELECT * FROM sample31;
 SELECT * FROM sample31 order by age;
 SELECT * FROM sample31 order by address;
 
  SELECT * FROM sample31 order by age DESC;
   SELECT * FROM sample31 order by age ASC;