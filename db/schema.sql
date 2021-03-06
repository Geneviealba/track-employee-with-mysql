
DROP DATABASE IF EXISTS employee_dataDB;

CREATE DATABASE employee_dataDB;

USE employee_dataDB;

-- department table----
CREATE TABLE department (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(30)
 
);
-- role table
CREATE TABLE role (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(30),
  salary DECIMAL,
  department_id INT,
  FOREIGN KEY (department_id) REFERENCES department(id)
);
-- Table to create ----
CREATE TABLE employee (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  manager_id INT,
  role_id INT,
  FOREIGN KEY (role_id) REFERENCES role(id),
  FOREIGN KEY (manager_id) REFERENCES employee(id)

);

-- create seeds -----
INSERT INTO department (name)
VALUE ("Engineering");
INSERT INTO department (name)
VALUE ("Sales");
INSERT INTO department (name)
VALUE ("Legal Team");
INSERT INTO department (name)
VALUE ("Finance");

--Employee role seeds -------
INSERT INTO role (title, salary, department_id)
VALUE ("Lead Engineer Developer", 900000, 2);
INSERT INTO role (title, salary, department_id)
VALUE ("Legal Team Lead", 780000, 4);
INSERT INTO role (title, salary, department_id)
VALUE ("Accountant", 200000, 3);
INSERT INTO role (title, salary, department_id)
VALUE ("Sales Lead", 110000, 1);
INSERT INTO role (title, salary, department_id)
VALUE ("Salesperson", 130000, 1);
INSERT INTO role (title, salary, department_id)
VALUE ("Software Engineer", 180000, 2);
INSERT INTO role (title, salary, department_id)
VALUE ("Lawyer", 230000, 4);

-- EMPLOYEE SEEDS -------
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Albert", "Green", null, 1);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Faith", "Luv", null, 2);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Maya","Hill",null,3);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Olivia", "Dream", 1, 4);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Tori", "Williams", 4, 5);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("John", "Brown", 1, 6);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Tommy", "Gray", 2, 7);

-- SELECTING FOR CREATING 
--TABLES IN OUR SQL WORKBENCH 
SELECT * FROM department;
SELECT * FROM role;
SELECT * FROM employee;