--Data Modeling
--Inspect the CSVs and sketch out an ERD of the tables
--Create a table schema for each of the six CSV files (specify data types, primary keys, foreign keys, and other constraints).
--For the primary keys check to see if the column is unique, otherwise create a composite key. Which takes to primary keys in order to uniquely identify a row.
--Create tables in the correct order to handle foreign keys.
--Import each CSV file into the corresponding SQL table. Import data in the same order that the tables were created and account for the headers when importing to avoid errors.

--DROP TABLE IF EXISTS actor;

CREATE TABLE employees (
  emp_no character varying(45) NOT NULL,
  emp_title_id character varying(45) NOT NULL,
  birth_date character varying(45) NOT NULL,
  first_name character varying(45) NOT NULL,
  last_name character varying(45) NOT NULL,
  sex character varying(45) NOT NULL,
  hire_date date
  );
 
select * 
from employees

alter table employees add constraint fk_emp_title_id foreign key (emp_title_id) REFERENCES title (title_id)
alter table employees ADD constraint employees_pkey Primary KEY (emp_no) 


CREATE TABLE departments_csv (
 dept_no character varying(45) NOT NULL,
 dept_name character varying(45),
 
);

select * 
from departments_csv

alter table departments_csv ADD constraint departments_csv_pkey Primary KEY (dept_no) 


CREATE TABLE department_manager (
  emp_no character varying(45) NOT NULL,
  dept_no character varying(45) not null,
  add primary key (dept_no, emp_no) 
  --references employees(emp_no)
  add constraint fk_emp_no foreign key (emp_no)
 );
  
select * 
from department_manager
---------------------
CREATE TABLE dept_emp (
  dept_no character varying(45) NOT NULL,
  emp_no character varying(45) not null,
 );
  
select * 
from dept_emp

alter table dept_no add constraint fk_dept_no foreign key
alter table emp_no add constraint fk_emp_no foreign key


CREATE TABLE title (
  title_id character varying(45) NOT NULL,
  title character varying(45) not null,
  add primary key (title_id)
 );
  
select * 
from title

CREATE TABLE salaries (
  emp_no character varying(45) NOT NULL,
  salary character varying(45) not null,
  add primary key (title_id)
 );
  
select * 
from salaries

alter table salaries add constraint fk_emp_no foreign key
alter table salaries ADD Primary KEY (salaries)

select * 
from salaries





