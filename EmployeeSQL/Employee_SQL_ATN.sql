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
  birth_date date
  first_name character varying(45) NOT NULL,
  last_name character varying(45) NOT NULL,
  hire_date date
  );
 
select * 
from employees

alter table employees add constraint fk_emp_title_id foreign key
alter table employees ADD Primary KEY (emp_no) REFERENCES department_manager (dept_no)


CREATE TABLE departments_csv (
 dept_no character varying(45) NOT NULL,
 dept_name character varying(45) NOT NULL,
 ADD Primary KEY (dept_no) REFERENCES departments_emp (dept_no)
);

select * 
from departments_csv

CREATE TABLE department_manager (
  emp_no character varying(45) NOT NULL,
  dept_no character varying(45) not null,
  add primary key (emp_no) references employees(emp_no)
 );
  
select * 
from department_manager


 CREATE TABLE title (
  title_id character varying(45) NOT NULL,
  title character varying(45) not null,
  add primary key (title_id)
 );
  
select * 
from department_manager
 







