---------------------------------
--       Employee SQL Schema
---------------------------------

CREATE TABLE "titles" (
	title_id VARCHAR(30) NOT NULL,
	title VARCHAR(40) NOT NULL,
	PRIMARY KEY ("title_id")
);

CREATE TABLE "departments"(
	dept_no VARCHAR(20) NOT NULL,
	dept_name VARCHAR(30) NOT NULL,
	PRIMARY KEY(dept_no)
);

CREATE TABLE employees(
	emp_no INT NOT NULL,
	emp_title_id VARCHAR(30) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30)NOT NULL,
	sex VARCHAR(10) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no)
);

CREATE TABLE salaries(
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	PRIMARY KEY (emp_no)
);

CREATE TABLE dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR(20) NOT NULL,
	PRIMARY KEY (emp_no,dept_no)
);

CREATE TABLE dept_manager(
	dept_no VARCHAR(20) NOT NULL,
	emp_no INT NOT NULL,
	PRIMARY KEY (dept_no,emp_no)
);

---------------------------------------------------------------------------------
-- Import the CSV files with the header option checked
---------------------------------------------------------------------------------
-- Verify that all the tables display accordingly (check with the csv file to match the rows)
----------------------------------------------------------------------------------------------
SELECT * FROM departments
SELECT * FROM dept_emp
SELECT * FROM dept_manager
SELECT * FROM employees
SELECT * FROM salaries
SELECT * FROM titles

----------------------------------------------------------------------------------------------
--Adding Foreign key constraint to all the tables to establish the relationship between tables
----------------------------------------------------------------------------------------------

ALTER TABLE dept_emp ADD FOREIGN KEY (emp_no) REFERENCES employees(emp_no);
ALTER TABLE dept_emp ADD FOREIGN KEY (dept_no) REFERENCES departments(dept_no);
ALTER TABLE dept_manager ADD FOREIGN KEY (dept_no) REFERENCES departments(dept_no);
ALTER TABLE dept_manager ADD FOREIGN KEY (emp_no) REFERENCES employees(emp_no);
ALTER TABLE employees ADD FOREIGN KEY (emp_title_id) REFERENCES titles (title_id);
ALTER TABLE salaries ADD FOREIGN KEY (emp_no) REFERENCES employees (emp_no);




