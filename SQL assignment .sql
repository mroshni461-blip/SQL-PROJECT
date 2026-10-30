Q1. Create a New Database and Table 

CREATE DATABASE company_db;

USE company_db;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    hire_date DATE
);


Q2. Insert Sample Records

INSERT INTO employees ()
VALUES
(101, 'Amit', 'Sharma', 'HR', 50000, '2020-01-15'),
(102, 'Riya', 'Kapoor', 'Sales', 75000, '2019-03-22'),
(103, 'Raj', 'Mehta', 'IT', 90000, '2018-07-11'),
(104, 'Neha', 'Verma', 'IT', 85000, '2021-09-01'),
(105, 'Arjun', 'Singh', 'Finance', 60000, '2022-02-10');


3  Display All Employees Sorted by Salary (Low → High)
SELECT * FROM employees
ORDER BY salary ASC;

4  Employees Sorted by Department (A–Z) and Salary (High → Low)
SELECT * FROM employees
ORDER BY department ASC, salary DESC;

5  Employees in IT Department Ordered by Hire Date (Newest First)
SELECT * FROM employees
WHERE department = 'IT'
ORDER BY hire_date DESC;

6 Create and Populate Sales Table.
CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    amount INT,
    sale_date DATE
);

INSERT INTO sales (sale_id, customer_name, amount, sale_date)
VALUES
(1, 'Aditi', 1500, '2024-08-01'),
(2, 'Rohan', 2200, '2024-08-03'),
(3, 'Aditi', 3500, '2024-09-05'),
(4, 'Meena', 2700, '2024-09-15'),
(5, 'Rohan', 4500, '2024-09-25');


7  Display Sales Records Sorted by Amount (High → Low)
SELECT * FROM sales
ORDER BY amount DESC;


8  Show All Sales Made by Customer "Aditi"
SELECT * FROM sales
WHERE customer_name = 'Aditi';


Q9. Difference Between Primary Key and Foreign Key
Primary Key:

Uniquely identifies each record in a table.
Cannot have duplicate or NULL values.
Example: employee_id in the employees table.

Foreign Key:

Establishes a relationship between two tables.
Refers to the primary key in another table.
Ensures referential integrity.


Q10. What Are Constraints in SQL and Why Are They Used?
Constraints are rules applied to table columns to enforce data integrity.

Common types:

PRIMARY KEY → ensures uniqueness of records.
FOREIGN KEY → maintains relationships between tables.
NOT NULL → prevents empty values.
UNIQUE → ensures no duplicate values.
CHECK → enforces conditions (e.g., salary > 0).
DEFAULT → assigns a default value if none is provided.








