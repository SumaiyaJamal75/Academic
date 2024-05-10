DROP DATABASE IF EXISTS office;
CREATE DATABASE office;
USE office;
CREATE TABLE IF NOT EXISTS positions (Position_id INT (11) NOT NULL AUTO_INCREMENT,
 Position_name VARCHAR(255) NOT NULL,
 PRIMARY KEY (Position_id));
 
 CREATE TABLE IF NOT EXISTS employees (Emp_id INT (11) NOT NULL,
                                      
First_Name VARCHAR(255) NOT NULL,
Last_name VARCHAR(55) NOT NULL,
DOB DATE NOT NULL, 
Gender ENUM ('M', 'F') DEFAULT NULL,
Salary INT NOT NULL,
Entry_date DATETIME DEFAULT CURRENT_TIMESTAMP() NOT NULL, 
Dept_id INT (11),
Position_id INT (11),
PRIMARY KEY (Emp_id),
FOREIGN KEY (Position_id) REFERENCES positions (Position_id));


INSERT INTO positions (Position_name)
VALUES ('Manager'), ('Assistant Manager'), ('Senior Executive'), ('Executive'), ('Intern');

INSERT INTO employees (Emp_id, First_Name, Last_name, DOB, Gender, Salary, Dept_id, Position_id)
VALUES 
(223002071, 'Sumaiya', 'Jamal', '1998-08-02', 'F', 30000, 1, 1),
(212002038, 'Md. Shafiqul', 'Islam', '1998-08-02', 'M', 20000, 2, 2),
(212002097, 'Farzana Afroz', 'Meem', '1998-08-02', 'F', 40000, 3, 3),
(212902084, 'Abdullah Al', 'Hadi', '1998-08-02', 'M', 35000, 4, 4),
(213002034, 'Md. Shamim', 'Reza', '1998-08-02', 'M', 40000, 5, 5),
(213002182, 'Md. Mehedi', 'Hasan', '1998-08-02', 'M', 45000, 1, 1),
(221002170, 'Himel', 'Paul', '1998-08-02', 'M', 50000, 2, 2),
(221002171, 'Md. Ferdaus', 'Hossen', '1998-08-02', 'M', 60000, 3, 3),
(221002189, 'Md. Abdur', 'Rahman', '1998-08-02', 'M', 65000, 4, 4),
(221002388, 'Hazrat', 'Ali', '1998-08-02', 'M', 55000, 5, 5);

UPDATE employees SET Salary = 70000 WHERE First_Name = 'Sumaiya';
SELECT * FROM employees WHERE Salary > 30000;
SELECT Emp_id, First_Name, Last_name, DOB, Gender, Salary, Entry_date FROM employees WHERE First_Name = 'Sumaiya';
