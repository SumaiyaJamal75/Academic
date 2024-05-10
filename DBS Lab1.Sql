CREATE DATABASE BankManagement;
USE BankManagement;

CREATE TABLE branch (
    branch_name VARCHAR(50) PRIMARY KEY, 
    branch_city VARCHAR(50), 
    assets INTEGER
);

CREATE TABLE customer (
    customer_id VARCHAR(10) PRIMARY KEY,
    customer_name VARCHAR(50),
    customer_city VARCHAR(50),
    email VARCHAR(100)
);

CREATE TABLE account (
    account_number VARCHAR(10) PRIMARY KEY,
    branch_name VARCHAR(50),
    balance INTEGER, 
    FOREIGN KEY (branch_name) REFERENCES branch (branch_name)
);

CREATE TABLE loan (
    loan_number VARCHAR(10) PRIMARY KEY, 
    branch_name VARCHAR(50), 
    amount INTEGER, 
    FOREIGN KEY (branch_name) REFERENCES branch (branch_name)
);

CREATE TABLE depositor (
    customer_name VARCHAR(50),
    account_number VARCHAR(10),
    PRIMARY KEY (customer_name, account_number),
    FOREIGN KEY (customer_name) REFERENCES customer (customer_name),
    FOREIGN KEY (account_number) REFERENCES account (account_number)
);

CREATE TABLE borrower (
    customer_name VARCHAR(50), 
    loan_number VARCHAR(10),
    PRIMARY KEY (customer_name, loan_number),
    FOREIGN KEY (customer_name) REFERENCES customer (customer_name),
    FOREIGN KEY (loan_number) REFERENCES loan (loan_number)
);

INSERT INTO branch (branch_name, branch_city, assets) 
VALUES 
('Branch1', 'City1', 100000), 
('Branch2', 'City2', 150000), 
('Branch3', 'City3', 200000);

INSERT INTO customer (customer_id, customer_name, customer_city, email) 
VALUES 
('223002075', 'Sumaiya Jamal', 'City1', 'sumaiya@gmail.com'),
('223002110', 'Ananya Roy Bristi', 'City2', 'ananya@gmail.com'),
('222902092', 'Nuren Abreshum Anonta', 'City3', 'nuren@gmail.com'),
('223002062', 'Md. Samiul Hasan Tanvir', 'City1', 'samiul@gmail.com'),
('221002411', 'Mezbah Uddin Maruf', 'City2', 'mezbah@gmail.com'),
('221002617', 'Md. Nafis Fuad Abir', 'City3', 'nafis@gmail.com'),
('221902312', 'Durjoy Kumar Pranto', 'City1', 'durjoy@gmail.com'),
('222902021', 'Saif Al Sayam', 'City2', 'saif@gmail.com'),
('222902022', 'Sagor Ahmed', 'City3', 'sagor@gmail.com'),
('222902025', 'Majedul Islam Shakib', 'City1', 'majedul@gmail.com');

INSERT INTO account (account_number, branch_name, balance) 
VALUES 
('1001', 'Branch1', 50000), 
('1002', 'Branch2', 60000), 
('1003', 'Branch3', 70000), 
('1004', 'Branch1', 55000), 
('1005', 'Branch2', 65000);

INSERT INTO loan (loan_number, branch_name, amount) 
VALUES 
('2001', 'Branch1', 30000), 
('2002', 'Branch2', 40000), 
('2003', 'Branch3', 50000);

INSERT INTO depositor (customer_name, account_number) 
VALUES 
('Sumaiya Jamal', '1001'), 
('Ananya Roy Bristi', '1002'), 
('Nuren Abreshum Anonta', '1003'), 
('Md. Samiul Hasan Tanvir', '1004'), 
('Mezbah Uddin Maruf', '1005');

INSERT INTO borrower (customer_name, loan_number) 
VALUES 
('Sumaiya Jamal', '2001'), 
('Ananya Roy Bristi', '2002'), 
('Nuren Abreshum Anonta', '2003');

SELECT * FROM branch;
SELECT * FROM customer;
SELECT * FROM account;
SELECT * FROM loan;
SELECT * FROM depositor;
SELECT * FROM borrower;
