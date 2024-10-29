# Amdocs-Training-Project
## Employee Performance Management System

A comprehensive Employee Management System built with Python, MySQL, and bcrypt for secure authentication. This application allows managers to register, login, and perform CRUD operations on employee records, including promotions and performance reviews.

## Table of Contents
- [Features](#features)
- [Project Structure](#project-structure)
- [Setup Instructions](#setup-instructions)
- [Usage](#usage)
- [Requirements](#requirements)
- [License](#license)

---

## Features

- **User Registration and Authentication**: Secure user registration and login with hashed passwords using bcrypt.
- **Employee CRUD Operations**: Create, read, update, and delete employee records.
- **Performance Reviews**: Add, view, update, and delete performance reviews for employees.
- **Promotions**: Promote employees to higher positions with updated salaries.
- **Database Management**: MySQL database setup and management with structured schemas.

## Project Structure

The project includes the following main files:

- **app.py**: Main application script containing the CRUD functions for user and employee management.
- **README.md**: Documentation for project setup and usage.
- **Database Script**: SQL commands for creating necessary tables.

## Setup Instructions

### 1. Clone the Repository
```bash
git clone https://github.com/YourUsername/employee-management-system.git
cd employee-management-system
```

### 2. Set Up the MySQL Database
Open MySQL and create a database:
```sql
CREATE DATABASE Emp_mngt;
USE Emp_mngt;
```
Run the necessary SQL commands to create tables as outlined in the Database Script.

## 3. Install Dependencies

Install the necessary Python packages:

```bash
pip install mysql-connector-python bcrypt
```

## 4. Configure MySQL Database Connection

Update the MySQL connection credentials in `app.py`:

```python
db = mysql.connector.connect(
    host="localhost",
    user="root",
    password="yourpassword",
    database="Emp_mngt"
)
```

## 5. Run the Application

Start the application by running:

```bash
python app.py
```
## Usage

- **Register**: Sign up as a user with a unique email and password.
- **Login**: Authenticate using your email and password.
- **Employee Management**: Use the interface to add, view, update, or delete employee records.
- **Reviews Management**: Add, view, update, or delete performance reviews for employees.
- **Promote Employee**: Promote employees by updating their position and salary.

## Requirements

- Python 3.6+
- MySQL
- Python Packages: `mysql-connector-python`, `bcrypt`

## License

This project is licensed under the MIT License - see the LICENSE file for details.
