drop table titles, employees, departments, dept_emp, dept_manager, salaries;

-- create titles table 
CREATE TABLE titles (
    title_id varchar NOT NULL PRIMARY KEY,
    title varchar(50) NOT NULL
 );

-- show complete titles table
select * from titles;

-- create employees table
CREATE TABLE employees (
    emp_no integer NOT NULL PRIMARY KEY,
    emp_title_id varchar(30) NOT NULL,
    FOREIGN KEY (emp_title_id) REFERENCES titles (title_id),
	birth_date varchar(10) NOT NULL,
    first_name varchar(50) NOT NULL,
    last_name varchar(50) NOT NULL,
    sex varchar(10) NOT NULL,
    hire_date varchar(10) NOT NULL
);

-- show complete employees table
select * from employees;

-- create departments table 
CREATE TABLE departments (
    dept_no varchar(30) NOT NULL PRIMARY KEY, 
    dept_name varchar(30) NOT NULL
);
-- show complete departments table
select * from departments;

-- create dept_emp table 
CREATE TABLE dept_emp (
    emp_no int  NOT NULL,
    dept_no varchar(30) NOT NULL,
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);
-- show complete dept_emp table
select * from dept_emp;

-- create dept_manager table 
CREATE TABLE dept_manager (
    dept_no varchar(30) NOT NULL,
    emp_no int   NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);
-- show complete dept_manager table
select * from dept_manager;

-- create salaries table 
CREATE TABLE salaries (
    emp_no int   NOT NULL,
    salary int   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);
-- show complete salaries table
select * from salaries;


