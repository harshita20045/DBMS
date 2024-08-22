CREATE DATABASE HI;
USE HI;
SHOW TABLES;
CREATE TABLE Employee(
	 id INT primary key,
     name VARCHAR(20),
     salary INT);
     
DESC employee;
INSERT INTO employee (id,name,salary) VALUES (1,"adam",25000),(2,"bob",300000),(3,"carry",40000);
SELECT * FROM employee;




    