--1. Display details of jobs where the minimum salary is greater than 10000.
SELECT job_id, job_title, min_salary, max_salary
FROM jobs 
WHERE min_salary > 10000;


--2. Display the first name and join date of the employees who joined between 2002 and 2005. 
SELECT first_name, hire_date
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) BETWEEN 2002 AND 2005;



--3.Display first name and join date of the employees who is either IT Programmer or Sales  Man.  
SELECT first_name, hire_date
FROM employees
WHERE job_id IN ('IT_PROG', 'SA_MAN');


--4. Display employees who joined after 1st January 2008. 
SELECT *
FROM employees
WHERE hire_date > '2008-01-01';



--5. Display details of employee with ID 150 or 160. 
select * from employees 
where employee_id in (150,160)


--6.Display first name, salary, commission pct, and hire date for employees with salary less  than 10000. 
select first_name , salary , commission_pct , hire_date
from employees
where salary <10000



--7.Display job Title, the difference between minimum and maximum salaries for jobs with max salary in the range 10000 to 20000. 

select  job_title, max_salary - min_salary AS salary_difference
from  jobs
where  max_salary between 10000 and 20000;


--8.Display first name, salary, and round the salary to thousands. 
select first_name ,round (salary,-3)as round_salary from employees



--9.Display details of jobs in the descending order of the title. 
select * from jobs 
order by job_title  desc


--10. Display employees where the first name or last name starts with S. 
select * from employees 
where first_name like 'S%' or last_name like 'S%'



--11.Display employees who joined in the month of May. 
select * from employees
where  EXTRACT(MONTH FROM hire_date) = 5;



--12. Display details of the employees where commission percentage is null and salary in the  range 5000 to 10000 and department is 30. 

select * from employees 
where commission_pct IS NULL and salary between 5000 and 10000 and department_id =30


--13. Display first name and date of first salary of the employees.

select first_name,min(hire_date) AS first_salary_date  from employees 
GROUP BY first_name
order by first_salary_date

--14. Display first name and experience of the employees. 
select first_name , sysdate as current_date ,hire_date, months_between (sysdate, hire_date )/12 as experience
from employees

  
--15. Display first name of employees who joined in 2001.
SELECT FIRST_NAME FROM EMPLOYEES WHERE HIRE_DATE LIKE '%-%-97'; SELECT FIRST_NAME FROM EMPLOYEES WHERE
TO_CHAR(HIRE_DATE,'YYYY')=1997;



--16. Display first name and last name after converting the first letter of each name to upper case and the rest to lower case. 


select CONCAT(UPPER(SUBSTR(first_name, 1, 1)), LOWER(SUBSTR(first_name, 2))) AS first_name,
concat (UPPER(SUBSTR(last_name, 1, 1)), LOWER(SUBSTR(last_name, 2))) AS last_name
from  employees;

--17. Display the first word in job title.
select  substr(job_title, 1, instr(job_title, ' ') - 1) AS first_word
from  jobs;

--18. Display the length of first name for employees where last name contain character ‘b’ after  3rd position.
select first_name, length(first_name) AS name_length
from employees
where  substr(last_name, 4, 1) = 'b';

--19. Display first name in upper case and email address in lower case for employees where the  first name and email address are same irrespective of the case. 
SELECT UPPER(first_name) AS first_name_upper, LOWER(email) AS email_lower
FROM employees
WHERE  UPPER(first_name) = UPPER(email);


--20. Display employees who joined in the current year.  
SELECT *
FROM employees
WHERE EXTRACT(YEAR FROM hire_date ) = EXTRACT(YEAR FROM SYSDATE);


select * from employees
---21. Display the number of days between system date and 1st January 2011.

SELECT TRUNC(SYSDATE) - TO_DATE('01-JAN-2011', 'DD-MON-YYYY') AS days_difference
FROM dual;

--22. Display how many employees joined in each month of the current year. 
SELECT TO_CHAR(HIRE_DATE,'mon'),count(employee_id) from employees group by to_char(hire_date,'mon')having
count(employee_id)>1;




--23. Display manager ID and number of employees managed by the manager. 
select manager_id AS display_manager_id,  COUNT(employee_id) AS number_of_employees_managed
from  employees
where  manager_id IS NOT NULL
group by  manager_id;


-- 24. Display employee ID and the date on which he ended his previous job.
select  employee_id, end_date
from  job_history;

-- 25. Display number of employees joined after 15th of the month.
select count(*) AS number_employees
from  employees
where  Extract(day FROM hire_date) > 15;

-- 26. Display the country ID and number of cities we have in the country.
select country_id, count(*) AS num_cities
from  locations
group by  country_id;


-- 27. Display average salary of employees in each department who have commission percentage.
select department_id, AVG(salary) AS avg_salary
from employees
where commission_pct IS NOT NULL
group by  department_id;


-- 28. Display job ID, number of employees, sum of salary, and difference between highest salary and lowest salary of the employees of the job.
select job_id, count(*) as num_employees, sum(salary) as total_salary, max(salary) - min(salary) as salary_difference
from employees
group by  job_id;


-- 29. Display job ID for jobs with average salary more than 10000.
select job_id
from  employees
group by job_id
having avg(salary) > 10000;


-- 30. Display years in which more than 10 employees joined.
select extract(year from HIRE_DATE) as hire_year
from employees
group by  extract(year  from  HIRE_DATE)
having  count(EMPLOYEE_ID) > 10;

-- 31. Display departments in which more than five employees have commission percentage.
select department_id 
from employees
where commission_pct is not null
group by department_id
having count(*) > 5;


-- 32. Display employee ID for employees who did more than one job in the past.
select employee_id 
from job_history
group by employee_id
having count(*)>1;

-- 33. Display job ID of jobs that were done by more than 3 employees for more than 100 days.
SELECT JOB_ID FROM JOB_HISTORY WHERE END_DATE-START_DATE>100 GROUP BY JOB_ID HAVING COUNT(*)>3;
       
       
-- 34. Display department ID, year, and Number of employees joined.
select department_id ,extract(year from hire_date ) as join_year ,count(*) as numbers_of_employees
from employees
group by department_id ,hire_date 

-- 35. Display departments where any manager is managing more than 5 employees.
SELECT DEPARTMENT_ID FROM EMPLOYEES GROUP BY DEPARTMENT_ID HAVING COUNT(EMPLOYEE_ID)>5;



-- 36. Change salary of employee 115 to 8000 if the existing salary is less than 6000.
UPDATE employees
SET salary = 8000
WHERE employee_id = 115 AND salary < 6000;

select * from employees



-- 37. Insert a new employee into employees with all the required details.
INSERT INTO employees VALUES (400, 'Rahul', 'Sutar', 123, '650.121.2994', TO_DATE('04-01-23', 'DD-MM-YY'), 'IT_PROG', 24900, 0.4, 100, 90);



**-- 38. Delete department 20.
DELETE FROM EMPLOYEES WHERE DEPARTMENT_ID=20;


-- 39. Change job ID of employee 110 to IT_PROG if the employee belongs to department 10 and the existing job ID does not start with IT.
UPDATE employees
SET job_id = 'IT_PROG'
WHERE employee_id = 110 AND department_id = 10 AND NOT job_id LIKE 'IT%';


-- 40. Insert a row into departments table with manager ID 120 and location ID in any location ID for city Tokyo.
INSERT INTO DEPARTMENTS VALUES(1,'CS',120,1200);



-- 41. Display department name and number of employees in the department.
select  department_name, count(*) AS num_employees
from  employees
join departments ON employees.department_id = departments.department_id
group by department_name;

-- 42. Display job title, employee ID, number of days between ending date and starting date for all jobs in department 30 from job history.
SELECT J.JOB_TITLE,J1.EMPLOYEE_ID,ROUND(J1.END_DATE-J1.START_DATE) as days FROM JOBS J JOIN JOB_HISTORY J1
USING(JOB_ID)WHERE DEPARTMENT_ID=30;



-- 43. Display department name and manager first name.
select department_name, first_name AS manager_first_name
from departments
join employees on departments.manager_id = employees.employee_id;

-- 44. Display department name, manager name, and city.
select  department_name, first_name || ' ' || last_name AS manager_name, city
from  departments
join  employees ON departments.manager_id = employees.employee_id
join locations ON departments.location_id = locations.location_id;

-- 45. Display country name, city, and department name.
select country_name, city, department_name
from countries
join locations on countries.country_id = locations.country_id
join departments on locations.location_id = departments.location_id;

-- 46. Display job title, department name, employee last name, starting date for all jobs from 2000 to 2005.
SELECT J.JOB_TITLE,D.DEPARTMENT_NAME,E.LAST_NAME,J1.START_DATE FROM EMPLOYEES E JOIN DEPARTMENTS D USING
(DEPARTMENT_ID)JOIN JOBS J USING(JOB_ID) JOIN JOB_HISTORY J1 USING(EMPLOYEE_ID)WHERE J1.START_DATE
BETWEEN '21-09-89' AND '10-04-97';


-- 47. Display job title and average salary of employees.
select  job_title, avg(salary) AS avg_salary
from  employees
JOIN jobs on employees.job_id = jobs.job_id
group by  job_title;

-- 48. Display job title, employee name, and the difference between maximum salary for the job and salary of the employee.
SELECT JOB_TITLE,FIRST_NAME,MAX_SALARY-SALARY FROM EMPLOYEES NATURAL JOIN
JOBS ;


-- 49. Display last name, job title of employees who have commission percentage and belongs to department 30.
SELECT E.LAST_NAME,J.JOB_TITLE FROM EMPLOYEES E JOIN JOBS J USING (JOB_ID) WHERE E.COMMISSION_PCT IS NOT NULL
AND E.DEPARTMENT_ID=80;


-- 50. Display details of jobs that were done by any employee who is currently drawing more than 15000 of salary.
SELECT J.JOB_TITLE FROM JOBS J JOIN EMPLOYEES E USING(JOB_ID) WHERE E.SALARY>15000;




