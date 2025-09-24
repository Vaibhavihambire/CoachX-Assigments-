--Create table Employees
Create Table Employees(EMPLOYEE_ID int, FIRST_NAME varchar(max), LAST_NAME varchar(max), EMAIL varchar(max), PHONE_NUMBER varchar(max), HIRE_DATE Date, JOB_ID varchar(max),
SALARY int, COMMISSION_PCT float, MANAGER_ID int, DEPARTMENT_ID int)

--Create table Departments
Create Table Departments(DEPARTMENT_ID int, DEPARTMENT_NAME varchar(max), MANAGER_ID int, LOCATION_ID int)

--Crete table Locations
Create Table Locations(LOCATION_ID int, STREET_ADDRESS varchar(max), POSTAL_CODE varchar(max) , CITY varchar(max), STATE_PROVINCE varchar(max), COUNTRY_ID varchar(max))

--Create table Job Grades
Create Table Job_Grades(GRADE_LEVEL varchar(max), LOWEST_SAL int, HIGHEST_SAL int)

--Qs:1-	write a SQL query to find the first name, last name, department number, and department name for each employee
Select e.FIRST_NAME, e.LAST_NAME, e.DEPARTMENT_ID, d.DEPARTMENT_NAME from Employees as e 
Join Departments as d on e.DEPARTMENT_ID = d.DEPARTMENT_ID

--Qs:2-	write a SQL query to find the first name, last name, department, city, and state province for each employee.
Select e.FIRST_NAME, e.LAST_NAME, d.DEPARTMENT_NAME, l.CITY, l.STATE_PROVINCE from Employees as e 
Join Departments as d on e.DEPARTMENT_ID = d.DEPARTMENT_ID 
Join Locations as l on d.LOCATION_ID = l.LOCATION_ID

--Qs:3- write a SQL query to find the first name, last name, salary, and job grade for all employees.
Select e.FIRST_NAME, e.LAST_NAME, e.SALARY, j.GRADE_LEVEL from Employees as e 
Join Job_Grades as j on e.SALARY 
between j.LOWEST_SAL and j.HIGHEST_SAL

--Qs:4-	write a SQL query to find all those employees who work in department ID 80 or 40. Return first name, last name, department number and department name.
Select e.FIRST_NAME, e.LAST_NAME, e.DEPARTMENT_ID, d.DEPARTMENT_NAME from Employees as e 
Join Departments as d on e.DEPARTMENT_ID=d.DEPARTMENT_ID 
AND d.DEPARTMENT_ID in (80, 40) 
