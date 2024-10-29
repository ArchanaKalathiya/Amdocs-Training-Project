CREATE DATABASE Emp_mngt;

USE Emp_mngt;

-- Table for storing user login information  
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL
);

-- Table for storing employee details
CREATE TABLE employees (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    name VARCHAR(100) NOT NULL,
    contact_no VARCHAR(20),
    address TEXT,
    dob DATE,
    hire_date DATE,
    position VARCHAR(100) DEFAULT NULL,  -- Position can be NULL if not assigned
    salary DECIMAL(10, 2) DEFAULT NULL,   -- Salary can be NULL if not assigned
    experience INT DEFAULT NULL,           -- Experience can be NULL initially
    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- Table for storing performance reviews
CREATE TABLE performance_reviews (
    review_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT,
    review_date DATE,
    rating FLOAT CHECK (rating >= 1 AND rating <= 5), -- Rating between 1 and 5
    feedback TEXT,
    FOREIGN KEY (employee_id) REFERENCES employees(emp_id)
);

describe Employees;
select * from users;
select * from employees;
select * from performance_reviews;

DELETE FROM performance_reviews
WHERE employee_id = 2; 

DELETE FROM employees
WHERE emp_id = 6;

DELETE FROM users
where id = 3;
