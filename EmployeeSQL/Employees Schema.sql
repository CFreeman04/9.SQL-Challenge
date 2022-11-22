--DROP TABLE departments CASCADE;
--DROP TABLE dept_employees CASCADE;
--DROP TABLE dept_manager CASCADE;
--DROP TABLE employees CASCADE;
--DROP TABLE salaries CASCADE;
--DROP TABLE titles CASCADE;

CREATE TABLE departments (
	dept_no VARCHAR,
	dept_name VARCHAR
);

CREATE TABLE dept_employees (
	emp_no INT,
	dept_no VARCHAR
);

CREATE TABLE dept_manager (
	dept_no VARCHAR,
	emp_no INT
);

CREATE TABLE employees (
	emp_no INT,
	emp_title VARCHAR,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date DATE
);

CREATE TABLE salaries (
	emp_no INT,
	salary DECIMAL
);

CREATE TABLE titles (
    title_id VARCHAR,
    title VARCHAR
);

ALTER TABLE ONLY salaries
    ADD CONSTRAINT salaries_pk PRIMARY KEY (emp_no);

ALTER TABLE ONLY titles
    ADD CONSTRAINT titles_pk PRIMARY KEY (title_id);
	
ALTER TABLE ONLY departments
    ADD CONSTRAINT departments_pk PRIMARY KEY (dept_no);

ALTER TABLE ONLY employees
    ADD CONSTRAINT employees_pk PRIMARY KEY (emp_no),
    ADD CONSTRAINT employees_fk FOREIGN KEY (emp_title) REFERENCES titles(title_id);
	
ALTER TABLE ONLY dept_employees
    ADD CONSTRAINT dept_employees_ck PRIMARY Key (emp_no,dept_no),
    ADD CONSTRAINT dept_employees_fk1 FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    ADD CONSTRAINT dept_employees_fk2 FOREIGN KEY (dept_no) REFERENCES departments(dept_no);

ALTER TABLE ONLY dept_manager   
    ADD CONSTRAINT dept_manager_pk PRIMARY KEY (dept_no, emp_no),
    ADD CONSTRAINT dept_manager_fk1 FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    ADD CONSTRAINT dept_manager_fk2 FOREIGN KEY (emp_no) REFERENCES employees(emp_no);
    


