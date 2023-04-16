1)SELECT
  first_nama AS Nama,  last_name AS Familia FROM employee;
 nama  | familia
-------+---------
 Jon   | Djek
 Maik  | Malk
 Sona  | Lin
 Sasha | Volcov
 Jon   | Linc

2) SELECT * FROM  employee
 WHERE age > 50;
 id | first_nama | last_name | gender | age
----+------------+-----------+--------+-----
  1 | Jon        | Djek      | M      |  55

skypro2=#  SELECT * FROM  employee
skypro2-#  WHERE age < 30;
 id | first_nama | last_name | gender | age
----+------------+-----------+--------+-----
  3 | Maik       | Malk      | M      |  25

3) SELECT * FROM  employee
 WHERE age
 BETWEEN 30 AND 50;
 id | first_nama | last_name | gender | age
----+------------+-----------+--------+-----
  2 | Mishel     | Linc      | W      |  30
  4 | Sona       | Lin       | W      |  45
  5 | Sasha      | Volcov    | M      |  32

 4) SELECT * FROM  employee
 ORDER BY  last_name DESC;
 id | first_nama | last_name | gender | age
----+------------+-----------+--------+-----
  5 | Sasha      | Volcov    | M      |  32
  3 | Maik       | Malk      | M      |  25
  2 | Mishel     | Linc      | W      |  30
  4 | Sona       | Lin       | W      |  45
  1 | Jon        | Djek      | M      |  55
  
  
 5) SELECT * FROM  employee
  WHERE employee.first_nama
  LIKE '%_____%';
 id | first_nama | last_name | gender | age
----+------------+-----------+--------+-----
  2 | Mishel     | Linc      | W      |  30
  5 | Sasha      | Volcov    | M      |  32

ЗАДАНИЕ 2
 
1) UPDATE  employee SET  first_nama = 'Jon' WHERE id = 1;
 UPDATE 1
 SELECT * FROM  employee;
 id | first_nama | last_name | gender | age
----+------------+-----------+--------+-----
  3 | Maik       | Malk      | M      |  25
  4 | Sona       | Lin       | W      |  45
  5 | Sasha      | Volcov    | M      |  32
  2 | Jon        | Linc      | W      |  30
  1 | Jon        | Djek      | M      |  55


2) SELECT  first_nama,
 SUM ( age)
 FROM  employee
  GROUP BY  first_nama;
 first_nama | sum
------------+-----
 Sasha      |  32
 Sona       |  45
 Maik       |  25
 Jon        |  85


3)  SELECT *  FROM employee
 -# WHERE age = (
(# SELECT MIN (age)
(# FROM employee
(# );
 id | first_nama | last_name | gender | age
----+------------+-----------+--------+-----
  3 | Maik       | Malk      | M      |  25


 4 )SELECT  MAX(age)  FROM employee
skypro2-#  WHERE NOT employee.first_nama = 'Jon'
skypro2-#  GROUP BY  employee.first_nama;
 max
-----
  32
  45
  25
