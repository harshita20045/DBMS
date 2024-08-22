CREATE DATABASE college;
SHOW DATABASES;
USE college;
  
CREATE TABLE student(
     rollno INT PRIMARY KEY,
     name VARCHAR(20),
      marks INT NOT NULL,
     grades INT,
     city VARCHAR(12)
     );
     CREATE TABLE dept(
     id INT PRIMARY KEY,
     name VARCHAR(20)
     );
        CREATE TABLE teacher(
     id INT PRIMARY KEY,
     name VARCHAR(20),
     dept_id INT,
     FOREIGN KEY (dept_id) REFERENCES dept(id)
     );
desc student;
INSERT INTO student (rollno,name,marks,grade,city)VALUES(1,"Harshita Baghel",2,2,"indore"),(2,"Aashita Baghel",3,3,"indore"),(3,"Arjit Baghel",4,4,"indore");
SELECT * FROM student;
SELECT DISTINCT city FROM student;
SELECT * FROM student;
SELECT * FROM student
WHERE rollno>3;
INSERT INTO student (rollno,name,marks,grade,city)VALUES(4,"Tarun Baghel",2,2,"jabalpur"),(5,"Mahendra Baghel",2,2,"jabalpur"),(6,"Riya Baghel",3,3,"Pune"),(7,"Vedika Baghel",4,4,"Pune");
SELECT city ,max(marks)
FROM student
GROUP BY city;
INSERT INTO student (rollno,name,marks,grade,city)VALUES(8,"Balram Baghel Baghel",2,2,"jabalpur"),(9,"Shailendra Baghel",2,2,"jabalpur"),(10,"Sandeep Baghel",3,3,"Pune"),(11,"Shubhi Baghel",4,4,"Pune");
INSERT INTO student (rollno,name,marks,grade,city)VALUES(12,"Gunjan Baghel Baghel",12,21,"Harda"),(13,"Kanahiya Baghel",32,23,"Sivni"),(14,"Pawan Baghel",13,31,"Patna"),(15,"Priyanshi Baghel",41,14,"Bhopal");
SELECT city,name ,sum(marks)
FROM student
GROUP BY city,name
ORDER BY city,name ASC;
SELECT marks FROM student 
ORDER BY marks ASC;
SELECT marks ,count(marks)
FROM student
GROUP BY marks;
SELECT marks 
FROM student
GROUP BY marks;
SELECT name ,count(marks)
FROM student
GROUP BY name
HAVING max(marks)>16;
update student 
SET name="Rohit Baghel"
WHERE rollno=7;
update student 
SET grade=6
WHERE rollno=7;
SET SQL_SAFE_UPDATES=0;
update student 
SET grade=56
WHERE grade=2;

