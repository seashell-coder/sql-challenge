# sql-challenge Using PostgreSQL

This repository consists of a challenge in which I created:

An ERD (Entity Relationship Diagram using QuickDB online APP)
A SCHEMA sql file based on that ERD
A Query sql file to answer questions for Analysis
--------------------------------------------------------------------------------------------------------------------
All the data for the tables are included in data folder:
-------------------------------------------------------------------------------------------------------------------
    - departments.csv
    - dept_emp.csv
    - dept_manager.csv
    - employees.csv
    - salaries.csv
    - titles.csv


This Challenge is divided in three parts: data modeling, data engineering, and data analysis.

**Data Modeling**
  - Inspect the CSV files, and then sketch an Entity Relationship Diagram of the tables. To create the sketch, feel free to use a tool like https://app.quickdatabasediagrams.com/

**Data Engineering**
1. Use the provided information to create a table schema for each of the six CSV files. Be sure to do the following:
   - Remember to specify the data types, primary keys, foreign keys, and other constraints.
   - For the primary keys, verify that the column is unique. Otherwise, create a composite key, which takes two primary keys to uniquely identify a row.
   - Be sure to create the tables in the correct order to handle the foreign keys.
2. Import each CSV file into its corresponding SQL table

- HINT: To avoid errors, import the data in the same order as the corresponding tables got created. And, remember to account for the headers when doing the imports.

**Data Analysis**
1. List the employee number, last name, first name, sex, and salary of each employee.
2. List the first name, last name, and hire date for the employees who were hired in 1986.
3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
6. List each employee in the Sales department, including their employee number, last name, and first name.
7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

**Note** 
The tasks on this challenge was all similar to what we had practiced during our class work activities, no outside resources I used here.