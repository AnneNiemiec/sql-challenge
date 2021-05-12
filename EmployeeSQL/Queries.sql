
--Data Analysis


--List the following details of each employee: employee number, last name, first name, sex, and salary.
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from salaries as s 
inner join employees as e
	on s.emp_no = e.emp_no;


--List first name, last name, and hire date for employees who were hired in 1986.
select  e.first_name, e.last_name, e.hire_date
from employees as e 
WHERE hire_date between '1986-01-01'and '1986-12-31';

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
ALTER TABLE department_manager DROP CONSTRAINT department_manager_pkey;

select d.dept_no, d.dept_name, dm.emp_no
from departments_csv as d
inner join department_manager as dm
	on d.dept_no = dm.dept_no;

select *
from department_manager

--List the department of each employee with the following information: employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from departments_csv as d
inner join dept_emp as de
	on d.dept_no = de.dept_no
inner join employees as e
	on de.emp_no=e.emp_no;
	
--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
	
select  first_name, last_name, sex
from employees
WHERE first_name = 'Hercules' and last_name like 'B%'

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
select de.emp_no, e.last_name, e.first_name, d.dept_name
from departments_csv as d
inner join dept_emp as de
	on d.dept_no = de.dept_no
inner join employees as e
	on de.emp_no=e.emp_no
	where d.dept_name='Sales'
	
--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select de.emp_no, e.last_name, e.first_name, d.dept_name
from departments_csv as d
inner join dept_emp as de
	on d.dept_no = de.dept_no
inner join employees as e
	on de.emp_no=e.emp_no
	where d.dept_name='Sales' or d.dept_name='Development'
	
--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select e.last_name, Count (e.first_name) as fn
from employees as e
group by e.last_name
order by fn
desc
	