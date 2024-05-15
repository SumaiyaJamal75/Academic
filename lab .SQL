DROP DATABASE IF EXISTS employee;
CREATE DATABASE employee;
USE employee;

CREATE TABLE emp(
EmpID INT PRIMARY KEY,
    EmpFname VARCHAR(50),
    EmpLname VARCHAR (50),
    AGE INT ,
    EMAIL VARCHAR (30),
    PhoneNo INT(20) ,
    Address varchar(25)
);
INSERT INTO emp(EmpID, EmpFname, EmpLname,AGE ,EMAIL, PhoneNo, Address )
VALUES ('1',' vardhan', 'kumar', '22', 'vardy@abc.com', '9854310', 'delhi'),
('2',' himani', 'sharma', '22', 'himani@abc.com', '99373120', 'mumbai'),
('3',' aayushi', 'shreshth', '24', 'aayushi@abc.com', '9543210', 'kolkata'),
('4',' sumaiya', 'jamal', '21', 'sumaiya@abc.com', '9843210', 'dhaka'),
('5',' jedan', 'hosen', '22', 'jedan@abc.com', '9876210', 'savar');

SELECT * FROM emp;


