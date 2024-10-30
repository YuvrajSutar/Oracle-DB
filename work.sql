/*write a query  to display all the data form employees */
SELECT * FROM employees;
SELECT * FROM departments;

/*write a query  display full name of an employees with the email,hiring date */
SELECT first_name || ' ' || last_name AS full_name FROM employees;


/*write a query to  display commision and job id of the employees*/
SELECT commission_pct, job_id
FROM employees;

/*write a query to display employee id with the department name of the all the employees in the entity*/
SELECT e.employee_id, d.department_name
FROM employees e
JOIN departments d ON e.department_id = d.department_id;

/*write a query display all  the records from location table*/
SELECT *FROM locations;

/*write a query to display department  name manager id and location id from department table */
SELECT department_name, manager_id, location_id
FROM departments;


/*write a query  display minimum and maximum salary from job table where job id = it programmer*/
SELECT MIN(min_salary) AS minimum_salary, MAX(max_salary) AS maximum_salary
FROM jobs
WHERE job_id = 'IT Programmer';
 
 
 /*select street address postal code from location id size 2500.*/
SELECT street_address, postal_code
FROM locations
WHERE location_id <= 2500;


/*write  a query  to display country id location id street address where city name =tokyo*/
SELECT country_id, location_id, street_address
FROM locations 
WHERE city = 'Tokyo';


SELECT * FROM employees
WHERE employee_id =& emp_num;


SELECT employee_id ,last_name,salary  & col_name from  employees where & comdition order by & order_col;

SELECT employee_id,first_name ,job_id , &col_name from employees  order by &&col_name ;


select employee_id,last_name,job_id,& col_name1 from employees order by &&col_name1;


define emp_num =110
SELECT * FROM employees
where employee_id =  & emp_num; 


set verify on 
SELECT * FROM employees
where employee_id =  & emp_num; 

SELECT first_name,last_name, LOWER(job_id) FROM employees;  


SELECT upper (first_name ),InitCap(last_name ),lower(job_id )from employees;


select round (50.89756,3)
from dual;




select trunc (50.89756,3)
from dual;


select trunc (50.89756,3)
from dual;

select first_name ,last_name,salary,mod(salary,5000) from employees where job_id ='SA_REP';









/*write a dispaly name of emp along with salary */
SELECT first_name , last_name ,salary
FROM employees;


SELECT  first_name, last_name  , job_id, salary / 2 AS half_term_salary
FROM employees;


SELECT first_name ,last_name ,job_id,   (salary + 4000)  AS salary_with_bonus
FROM employees;

SELECT first_name , last_name   , salary, (salary * 1.20) AS salary_with_hike
FROM employees;


select first_name , last_name , salary ,(Salary  * 0.75) as salary_with_reduce 
FROM employees;
 

select first_name , last_name ,hire_date ,( salary * 12) as salaty_with_monthy
from employees;



SELECT  employee_id, (base_salary + additional_earnings) AS total_salary
FROM employees;


UPDATE employees
SET salary = salary - 100;
SELECT * FROM employees;

select first_name , last_name ,hire_date ,( salary - 100) as penalty
from employees;


------------------------------------------------------------------------------------------------------------------------------
create table student 
student_id  nubmer primery key ,
student_name varchar2(20),
student_age number (age>18));


select employee_id,CONCAT (first_name, last_name) as fullname,salary, job_id ,
LENGTH (last_name ),
INSTR(first_name,'a') "contains  ,'a'" 
from employees 
where substr(job_id,4)='rep';


select employees_id concat first_name , last_name as name lenth of department_id instr (last_name,'m')as contains 'm' form employees where substr(last_name,1)='k';


select employee_id,CONCAT (first_name, last_name) as NAME,
LENGTH(department_id),
INSTR(last_name,'m') AS  "contains  ,'m'" 
from employees 
where substr(last_name,1)='King';

/*waq to display annual salary of employees whose name is smith 
waq to display name of employees names  working clerk
waq to display salary of those employees as working as selesman
waq to display details of employees   more than 20000 per year
waq to display the details of employes those name john*/



/*waq to display annual salary of employees whose name is smith */
select employee_id, CONCAT(first_name, last_name) AS full_name, salary * 12 AS annual_salary
from employees
where  last_name = 'Smith';



/*waq to display name of employees names  working clerk*/
SELECT CONCAT(first_name, last_name) AS full_name
FROM employees
WHERE job_id = 'SH_CLERK';


/*waq to display salary of those employees as working as selesman*/
select CONCAT(first_name, last_name) AS full_name, salary
from employees
where job_id = 'SA_MAN';


/*waq to display details of employees   more than 20000 per year*/
select employee_id, CONCAT(first_name, last_name) AS full_name, salary * 12 AS annual_salary
from employees
where salary * 12 > 20000;


/*waq to display the details of employes those name john*/
select * from employees
where first_name = 'John';

/*waq to display employees_id whose are working in department 30
waq to dispay employee_ name and hiring date of those wmployess hier 1982
waq to display empoyees working as manger 
waq to diaplay name and salary of employess those ern commision of rupes 400
waq to display details of employess having commition more than salary
waq to display details of employes working as analyst
waq to display of employees ,ore than  12000 month*/
 
/*waq to display employees_id whose are working in department id 30 */
select employee_id from employees
where department_id=30;

/*waq to dispay employee_ name and hiring date of those wmployess hier 1982*/
select employee_id,hire_date from employees
where hire_date >'19-12-99';


/*waq to display empoyees working as manger*/
select * from employees
where job_id = 'ST_MAN';


/*waq to diaplay name and salary of employess those ern commision of rupes 400*/
select first_name ,last_name ,salary from employees 
where commission_ptc ;









select sysdate from dual 

select employee_id ,salary ,hire_date, months_between (sysdate,hire_date)from employees;

select employee_id ,salary ,hire_date, add_months (hire_date,10)from employees;


select  last_day ('15-jan-2023')from dual;

select  next_day ('15-jan-2023', 'monday')from dual;

select round (sysdate,'year')from dual; 

select TRUNC  (sysdate,'month')from dual; 


select employee_id ,hire_date, round (hire_date,'month')from employees;
select employee_id ,hire_date, round (hire_date,'year')from employees;



select employee_id ,hire_date, TRUNC (hire_date,'month')from employees;
select employee_id ,hire_date, TRUNC (hire_date,'year')from employees;


SELECT * FROM employees
where salary >=15000 AND JOB_ID='FU_CLERK';

select first_name,hire_date from employees
where DEPARTMENT_ID=30 AND  JOB_ID='PU_MAN';

SELECT employee_ID,first_name,Last_name,Email,phone_number,hire_date,job_id,commission_pct,manager_id,department_id,salary*12 annual_salary 
from employees
where DEPARTMENT_ID=30 AND JOB_ID ='PU_CLERK' AND salary*12>12000;


select * from employees
where DEPARTMENT_ID=30 OR JOB_ID='AC_ACCOUNT';

select first_name from employees
where salary<3800 or JOB_ID='FU_CLERK';


/*waq to display name and salary, anual salary and department number if department 20 erning more than 11000 and anual salary exist 12000*/
/*waq to display emp_number with there name workig as manger and department 20 */
/*waq to display details if employess working and departmet 20 and 30 */
/*waq to display details of emp working as prgident in departmet 10*/
/*waq to display details of employes working as prgedant with salary rs 8000*/
/*waq to display name , depat_number jobs of emp working as class and department 30,40*/
/*waq display details of employesss working as class as maneger in department 10 or 40 */

SELECT first_name, salary, salary * 12 as annual_salary
FROM employees
WHERE DEPARTMENT_ID = 30 AND salary < 11000 AND salary * 12 = 12000;


SELECT employee_id, first_name, last_name
FROM employees
WHERE job_id = 'Mk_MAN' and department_id = 20;

SELECT *
FROM employees
WHERE department_id IN (20, 30);


SELECT * FROM employees
WHERE job_id = 'PRESIDENT' or department_id = 10;


SELECT *
FROM employees
WHERE job_id = 'PRESIDENT' or salary = 8000;



SELECT first_name, last_name, department_id, job_id
FROM employees
WHERE job_id = 'CLERK' or department_id IN (30, 40);


SELECT *
FROM employees
WHERE job_id = 'SA_MAN' or department_id IN (10, 40);



waq to display name  of empp woking in department 10,20,30 
waq to display details emp with emp number 57, 173
waq to display details of emp waorkig as manger or seles man or clack 
waq to display maill id of emp hirerd after 1981 before 1987
wqa to display details with emp erning more than 1250 but lass than 8000
waq to display name and address hierd after 1981 and department 10 or 30 
waq to display name emp alog with there anual salary for the empoyees working as manager clarck into department 20,40 
waq to display details of emploees along with anual salary if salary is between 10000 and 50000 where anual salary is more then 50000


SELECT first_name
FROM employees
WHERE department_id IN (10,20, 30);


SELECT *
FROM employees
WHERE employee_id IN (157,173);


SELECT *
FROM employees
WHERE job_id = 'MK_MAN' or  job_id = 'ac_mgr' or job_id =' ST_CLERK' ;


SELECT email
FROM employees
WHERE hire_date = '17-06-87' BETWEEN '01-05-95';


SELECT *
FROM employees
WHERE salary <1250 and salary >8000; 

SELECT first_name, phone_number 
FROM employees
WHERE hire_date = '17-06-87' or department_id In(10,30);

alter table 
update data 


SELECT first_name, salary, salary * 12 
FROM employees
WHERE job_id = 'ac_mgr' and   deprtment_id (20,40)and salary * 12;



/*-------------------------------------------------------------------------------------------------------------------------------------------------------*/

SELECT first_name
FROM employees
where commission_pct is null;


SELECT first_name  
FROM employees
where manager_id is null;


select first_name
FROM employees
where job_id = '90' and job_id in ('Finance Manager','Accounting Manager','Sales Manager','Purchasing Manager','Stock Manager','Marketing Manager');


select first_name
FROM employees
where job_id = '30' and job_id='ST_MAN' and salary = '2000';


SELECT first_name
FROM employees
where first_name LIKE 'S%' OR first_name LIKE 'M%';


select first_name
FROM employees
where department_id in(30,40)


select first_name
FROM employees
where first_name LIKE '_s%';


select first_name
FROM employees
where job_id <> 'Manager' and department_id = '90' ;

select * from jobs;

select first_name
FROM employees
where commission_pct is null and job_id in('Stock Clerk','Shipping Clerk');

select *
FROM employees;


select first_name
FROM employees
where manager_id is null and department_id in('90','30')



/*-------------------------------------------------------------------------------------------------------------------------------------------------------*/


list all the employees as selesman with department 30 where salary is more than 2450
list all details of the manager with department number 20 and having salary gretter than 2500
list all employees whos name start 'M' or end by 'J'
list all the details of employees with anual salary ecept those working depatmnt 40
list all the employees huse name do not end with es or r
list all the employees hu are having manger and department 10 along with 10 % hike  in salary 
display all the employees hue are working salaes man having e at  last but having salary exactily 12000
list all the empoloyees whos have join after 1981 
display all detais of emp who are join june 87.
list the details of employees hue at not working at manger or clarck in depatment 20 and 40 with salary in the range 2000 to 5000

 
/*-----------------------------------------------------------------------------------------------------------------------------------------------------------*/


select * from jobs;


select *
FROM employees;


select first_name
FROM employees
where job_id in('SA_MAN','PU_MAN','ST_MAN','MK_MAN') and department_id ='30'and salary > '2450';


select first_name
FROM employees
where job_id in ('FI_MGR','AC_MGR','SA_MAN','PU_MAN','ST_MAN','MK_MAN') and  department_id ='20' and salary <'2500';


select first_name
FROM employees
where first_name LIKE 'M%' and first_name LIKE '%J' ;


select first_name, salary *12 
FROM employees
where  department_id = '40';



select first_name
FROM employees
where first_name LIKE '%ES' or first_name LIKE '%r' ;

select first_name , (salary * 0.010) AS salary_with_hike
FROM employees
where job_id in('SA_MAN','PU_MAN','ST_MAN','MK_MAN') and department_id = '20' ;



select first_name
FROM employees
where job_id in('SA_MAN','PU_MAN','ST_MAN','MK_MAN')and first_name LIKE '%r' and salary='12000'; 

select first_name
FROM employees 
where hire_date ='17-09-87';

select first_name
FROM employees 
where hire_date >'01-01-81';


SELECT *
FROM employees
WHERE job_id NOT IN ('FI_MGR', 'AC_MGR','SA_MAN','PU_MAN','PU_CLERK','ST_MAN','ST_CLERK','SH_CLERK','MK_MAN')and department_id IN (10, 40) AND salary BETWEEN 2000 AND 5000;

------------------------------------------------------------------------------------------------------------------------------------------------

select first_name
FROM employees 


select first_name,last_name  ,salary *12 AS annual_salary 
from employees;


select first_name,last_name , annual_salary 
from employees
where salary *12 as annual_salary ;


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
select * from dual ;
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE hospital (
    hospital_id INT PRIMARY KEY,
    hospital_name VARCHAR(255) NOT NULL,
    location VARCHAR(255),
    capacity INT,
    established_date DATE
);

--sequnce  in 1,2,3 any primary key 


CREATE TABLE student (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE,
    gender CHAR(1),
    enrollment_date DATE
);


CREATE TABLE college (
    college_id INT PRIMARY KEY,
    college_name VARCHAR(100) NOT NULL,
    location VARCHAR(255),
    established_date DATE
   
);

CREATE TABLE flipkart (
    product_id NUMBER PRIMARY KEY,
    product_name VARCHAR2(255) NOT NULL,
    category VARCHAR2(100),
    price NUMBER(10, 2),
    manufacturer VARCHAR2(100),
    in_stock CHAR(1) CHECK (in_stock IN ('Y', 'N'))
);


CREATE TABLE industry (
    industry_id NUMBER PRIMARY KEY,
    industry_name VARCHAR2(255) NOT NULL,
    headquarters_location VARCHAR2(255),
    founding_date DATE
    
);

CREATE TABLE whatsapp_user (
    user_id NUMBER PRIMARY KEY,
    username VARCHAR2(50) NOT NULL,
    phone_number VARCHAR2(20) UNIQUE,
    registration_date DATE,
    last_login_date DATE
);


CREATE TABLE instagram_user (
    user_id NUMBER PRIMARY KEY,
    username VARCHAR2(50) NOT NULL,
    full_name VARCHAR2(100),
    email VARCHAR2(100) UNIQUE,
    registration_date DATE,
    last_login_date DATE
);





DESCRIBE hospital;
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

waq to 

select *
FROM employees;


/*date to charater */
select first_name , last_name , to_char(hire_date,'fmDD mon yyyy')as hire_date from employees;

select first_name , last_name , to_char(hire_date ,'fmday Month year')as hire_date from employees;


/*number to char*/ 
select first_name , last_name , to_char(salary , '$99,999,00')as salary from employees where last_name ='Ernst';



select first_name , last_name from employees where hire_date = TO_DATE('June 17,1987','fxMonth DD,RRRR');


--------------------------------------------------------------------------------------------------------------------------------------------------------
/*nested function */

select *
FROM employees;

select Last_name,upper(concat(substr(first_name ,1,5),'_US')) from employees ;



/*genral function */

/*NVL function number / null value replace */
select last_name , salary , NVL(commission_pct,0)from employees;

/*NVL function char */
select first_name , hire_date  , NVL(hire_date,'17-06-87')from employees;



select first_name ,last_name ,salary ,commission_pct, NVL2(commission_pct,'salary+commission_pct','salary') as income from employees where department_id in(80,50);



select first_name,LENGTH(first_name)"EXP1", last_name,LENGTH('last_name')"EXP2", NULLIF('EXP1','EXP2') result from employees;

--  lenth 
select first_name,LENGTH(first_name)"EXP1", last_name,LENGTH(last_name)"EXP2", NULLIF(length(first_name),LENGTH(last_name)) result from employees;


--coalesce function replacing value 
select first_name,last_name, manager_id,commission_pct,COALESCE(manager_id ,commission_pct,-1 )result from employees order by commission_pct;


select employee_id, job_id ,salary ,CASE job_id when 'IT_PROG' THEN salary * 1.10 Then salary 1.10 when 'PU_CLERK' then salary * 1.15 when 'SA_MAN ' salary*1.25
ELSE salary  END "revised salary"
from employees;




SELECT employee_id,salary,DECODE(job_id, 'IT_PROG', salary * 1.10, 'SALES', salary * 1.15, 'PU_CLERK', salary * 1.25, salary) AS "revised salary"
FROM employees;


select * from departments ;

select AVG(salary ) from employees where department_id= 10 ;

select MIN(salary ) from employees where department_id= 20 ;


select MAX(salary) from employees where department_id= 20 ;

select SUM(salary ) from employees where department_id= 10;


select COUNT(* ) from employees where department_id= 30;

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT department_id,AVG(salary) FROM employees GROUP BY department_id;

SELECT department_id,AVG(salary) FROM employees GROUP BY department_id order by department_id asc ;

SELECT department_id,MIN(salary) FROM employees GROUP BY department_id order by department_id asc ;

SELECT department_id,MAX(salary) FROM employees GROUP BY department_id order by department_id asc ;

SELECT department_id,SUM(salary) FROM employees GROUP BY department_id order by department_id asc ;

SELECT department_id,COUNT(salary) FROM employees GROUP BY department_id order by department_id asc ;

____________________________________________________________________________________________________________________________
SELECT department_id,job_id,AVG(salary) FROM employees GROUP BY department_id,job_id order by department_id asc ;

SELECT department_id,job_id,MIN(salary) FROM employees GROUP BY department_id,job_id order by department_id asc ;

SELECT department_id,job_id,MAX(salary) FROM employees GROUP BY department_id,job_id order by department_id asc ;

SELECT department_id,job_id,SUM(salary) FROM employees GROUP BY department_id,job_id order by department_id asc ;

SELECT department_id,job_id,COUNT(salary) FROM employees GROUP BY department_id,job_id order by department_id asc ;
-----------------------------------------------------------------------------------------------------------------------------------------



SELECT  department_id , MAX(salary )from employees group by department_id having max(salary)>10000; 


SELECT  department_id , MAX(salary )from employees group by department_id having max(salary)<10000; 

select   job_id ,sum(salary) from employees group by job_id having sum(salary)>15000 order by sum(salary);


--nested function using group by 
select max(AVG(salary)) from employees group by department_id ;


select min(AVG(salary)) from employees group by department_id ;

--------------------------------------------------------------------------------------------------------------------------------------------
select *
FROM employees;


select job_id,MIN(salary) from employees where salary>10000 GROUP BY job_id ;


select first_name, hire_date from employees WHERE hire_date BETWEEN '17-06-87' and '21-04-00'; 


select last_name, email from employees where  job_id = 'IT_PROG' OR job_id = 'SA_MAN';




SELECT first_name ,hire_date FROM employees WHERE hire_date = '05-02-98';


SELECT *  FROM employees WHERE employee_id='150' or employee_id='160';

select *
FROM jobs





select job_title, max_salary, (max_salary - min_salary) AS result from  jobs where max_salary BETWEEN 10000 AND 20000;

---------------------------------------------------------------------------------------------------------------------------------------
display details of job in there  desanding order of job tile 
display employees where the first name and last name start with s 
display the details of emp where joining date is in the month of may 
display the details of emp where commition  is null and sarary in the range 5000 to 10000 and department is 50 
display first name salary and round the salary to 1000
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------


select job_title FROM jobs ORDER BY job_title DESC;


select first_name ,last_name  from employees where first_name LIKE 'S%' or last_name LIKE 'S%';


select * FROM employees where hire_date  like ('%-05-%')

 
 select * FROM employees where commission_pct is null and salary in(5000,10000)and department_id = 50;
 
 

select first_name,salary  FROM employees where  salary round (salary,'1000')


select first_name, ROUND(salary, -3) AS rounded_salary from  employees;


select first_name, ROUND(18.800,) AS rounded_salary from  employees;

---------------------------------------------------------------------------------------------------------------------------------------------------

display frtst name last name of each employee after converting the first letter of each name to uppder case and raste  to lower case 
display first word of job title 
display details of employees to join in 1995 
display the lenth of first name where last name contains words b at 3rd position 
dipslay first name is upperr case ans mail id in lower case were first name and email address in respative to the case 


-----------------------------------------------------------------------------------------------------------------------------------------------------------


SELECT first_name,last_name,InitCap(first_name) FROM employees;  

SELECT job_title,substr(job_title,1, instr(job_title,' ')) from jobs;

SELECT * from employees where  hire_date LIKE '%97%';

SELECT first_name,last_name, length(first_name)FROM employees where last_name like'__b%';

select first_name, upper(first_name),lower(email) from employees where first_name!=email;
-------------------------------------------------------------------------------------------------------

select *
FROM employees;


select * from manager_id;
-------------------------------------------------------------------------------------

--self join
--cross join/cartesion join 
--inner join
--outer join 
--full  inner 
--full outer 
--left inner join
--left outer

-------------------------------------------------------------------------------------------

display manger id and count of employees mangered by manager 
display first date of the salary of each employees
display how mamny employees join in 1986
display contry id  and number of citys in ench contry 
diplay avg salary of each  emp if in each departmet who have commition 
display job id number of employees sum of salary and the differace beetween higest of salary of the job





select   first_name ,hire_date, last_day(hire_date)+1  from employees ;

select manager_id ,conut()




------------------------------------------------------------------------------------------------------------------------


display the number of days between system date and 1st of jan 2020

display how many employees join in 1987 


--SELECT COUNT(employee_id) as employees_joined_1987
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) = 1987;

--display  manager id and number of employees mange by manger 
SELECT manager_id, COUNT(employee_id) as employees_managed
FROM employees
GROUP BY manager_id;

display number of employees join after  15 of maonth 


display contry id number of city we have in contry 
SELECT country_id, COUNT(COUNTRY_ID) as city_count
FROM COUNTRIES
GROUP BY country_id;

-------------------------------------------------------------------------------------------------------------------------------------------
select *
FROM employees; 

select COUNT(*) from employees where hire_date LIKE '%87%';

select COUNT(manager_id) manager_id from  employees  

select manager_id ,count('SA_MAN') from employees group by manager_id;

select  manager_id,count(*) from employees group by manager_id 

select  manager_id, count(*) AS num_employees from  employees GROUP BY manager_id;

select count(*)from employees WHERE to_char(hire_date,'DD ')>15;

----------------------------------------------------------------------------------------------------------------
drop table student1;
drop table student2;
drop table student2;
drop table student;



create table student (
    student_id NUMBER PRIMARY KEY,
    student_name VARCHAR2(20)NOT NULL,
    student_address VARCHAR2(100)NOT NULL ,
    student_contact NUMBER(10),
    age VARCHAR2(10) check (age>18)
    
);

insert into student VALUES(1,'Yuvraj','BMT',9834546835,20);
insert into student VALUES(2,'raj','pune',9011249754,22);
insert into student VALUES(3,'Rohit','kholapur',9511128765,25);
insert into student VALUES(4,'mosim','BMT',9011555657,23);
insert into student VALUES(5,'nilesh','satara',8329106900,27);
insert into student VALUES(6,'rahul','BMT',7772356789,25);

select * from student;


insert into student VALUES (5,'nilesh','satara',8329106900,27)(6,'rahul','BMT',7772356789,25);

select *
FROM employees; 

select * from departments;

insert into employees VALUES(108,'Yuvraj','Sutar','yuvraj123',650.121.2994,'29-01-97','IT_PROG',16600,0.4,100,80);

insert into employees VALUES(209,'raj','Sutar','raj123','650.121.2994',sysdate,'IT_PROG',16600,0.4,100,80);


insert into employees VALUES(209,'raj','Sutar','raj123','650.121.2994',sysdate,'IT_PROG',16600,0.4,100,80);


INSERT INTO employees VALUES (213, 'yuvraj', 'Sutar', '123', '650.121.2994', TO_CHAR(DATE '2023-01-04', 'DD Month YYYY'), 'IT_PROG', 16600, 0.4, 100, 90);


insert into employees VALUES(280,'vishal ','Sutar','vishal123',650.121.2994,'29-01-97','IT_PROG',16600,0.4,100,80);



 
---------------------------------------------------------------------------------------
waq to get all employees to are working in department or 40 or 80 return department name and employee  to it also get employee_id and depatmet_id
waq to find those employees first start with or a get there first name last name city and state
waq  to find all  department those who do not have employee return depart_id dep_name , first_name and last_name 
waq find thode emplyoees who earn less than 2200 and emplyee_id = 1* retun first_name and las_tname and salary 


---------------------------------------------------------------------------------------------------------------------------------------------------------
select * employeees
FROM employees
deprtment_id(40,80)


SELECT e.first_name ,e.employee_id,  d.department_id ,d.department_name
from employees e join department d
using (d_id)
where department_id = 40 or department_id 80;



select e.first_name, e.last_name ,l.city, l.STATE_PROVINCE
from employees e join departments d
using (department_id)
join locations l using(LOCATION_ID )
where first_name like 'A%' OR first_name like 'Z%'; 


SELECT d.DEPARTMENT_ID, d.DEPARTMENT_NAME, e.FIRST_NAME, e.LAST_NAME
FROM employees e
JOIN departments d ON e.DEPARTMENT_ID = d.DEPARTMENT_ID;

SELECT e.FIRST_NAME,e.LAST_NAME ,e.SALARY
FROM employees e  join  employees n
on n.SALARY < e.SALARY and e.EMPLOYEE_ID=182;

select * from employees;

select * from DEPARTMENTS

select FIRST_NAME, SALARY  from employees
where SALARY > (select SALARY from employees where FIRST_NAME= 'Lex');

waq

select employee_id,first_name,last_name , department_id  from employees
where salary  in (select max(salary)from employees group by department_id);


select employee_id ,last_name,last_name ,salary from employees
where manager_id=(select employee_id  from employees where  first_name ='Payam');


waq 


select COUNT (*) from employees where department_id= 80;


select * from employees;

select * from DEPARTMENTS


select COUNTRY_NAME,city,DEPARTMENT_ID,count(department_id) 
from employees join DEPARTMENTS using (department_id) join LOCATIONS using (LOCATION_ID) join COUNTRIES using (COUNTRY_ID)
where DEPARTMENT_ID in (select DEPARTMENT_ID from employees group by DEPARTMENT_ID  HAVING count(DEPARTMENT_ID)>=1)group by (COUNTRY_NAME,city,department_id);

waq to display department number  full name job_id ,department_name of all emplyeees working in accountent deparrtment 
waq to disaplay all information of the emplyees who have salary 5000 and reporting id 121 
waq  to dispaly  all the information of the employees whos emplyeees id is any of the number 169 173, 185 
waq to display  all the information of emplyees whoses salary is with in the range 3000 to 8000 


select * from jobs;

select departmet_id ,first_name,last_name as full name 
job_id ,department_name  from employees join department d using departmet_id where job_id 


SELECT * FROM employees WHERE salary > 3000 AND manager_id = 121;

------------------------------------------------------------------------------------------------------------------------------------------------

waq to display all info of emp whos salary is with in the rang of smallest salary and 5000
waq to diaplay all the info the emp who do not work in those department where emp works whos manager_id with in the range of 115 to 130
waq to display info those employees whose id is any id who earn the higest secand salary 
waq to disaplay the emp name hier date for all those emp in same department as lex 
waq to display emp numbers emp name for all those emp whos work with departmet with any emp who contains "t"

----------------------------------------------------------------------------------------------------------------------------------------------------

select *from  employees
where  salary between (select MIN(salary) from employees) and 5000;


select *from  employees
where DEPARTMENT_ID not in(select department_id from employees where manager_id between 115 and 130)


select max(salary)from  employees
where salary < (select max(salary) from employees) 


select max(salary)from  employees where salary < (select max(salary)from  employees
where salary < (select max(salary) from employees));


select * FROM employees
where  employee_id IN (SELECT employee_id from employees where  salary IN (SELECT MAX(salary) from employees 
where  salary < (SELECT MAX(salary) FROM employees)));


select * FROM employees
where  employee_id IN (SELECT employee_id from employees where  salary IN (SELECT min(salary) from employees 
where  salary > (SELECT min(salary) FROM employees)));


select first_name , last_name , hire_date from employees
where department_id=(select department_id from  employees where first_name='Lex')



select employee_id, first_name, last_name, department_id from employees
(select DEPARTMENT_ID  from employees where first_name like '%T%' or first_name like '%T' or first_name like 'T%');


SELECT employee_id, first_name, last_name, department_id FROM employees
WHERE first_name LIKE '%T%' OR first_name LIKE '%T' OR first_name LIKE 'T%';


--------------------------------------------------------------------------------------------------------------------------------------------------

--set opraters 
--union(not duplicate values )
--union all (allows duplicate values)
--intersect(common values display)
--minus (o)


select employee_id ,job_id from employees 
union select employee_id , job_id  from job_history;


select employee_id ,job_id from employees 
union all select employee_id , job_id  from job_history;



select employee_id ,job_id from employees 
union all select employee_id , job_id  from job_history order by employee_id;


select job_id ,department_id from employees
union all select job_id ,department_id from job_history  order by department_id;


select job_id ,department_id from employees
intersect select job_id ,department_id from job_history  order by department_id;

select employee_id  from employees 
minus select employee_id from job_history


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

select department_id, TO_NUMBER(NULL) AS location_id, hire_date FROM employees
union SELECT department_id, location_id,to_date(null) FROM DEPARTMENTS;
 
 select *  from job_history
 
select employee_id, job_id ,salary  from employees
union select employee_id ,job_id ,0 from job_history


select sum(salary) from employees
group by department_id

select department_id from employees where salary = 22000

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 No print 
 select 'king' as "my dream",100 dummy from dual;

select * from dual

select 'queen', 2 dummy from dual 

------------------------------------------------------------------------------------------------------------------------------------------------------------------------

column  dummy NOPRINT
 select 'king' as "my dream",4 dummy from dual 
 union select 'queen',3 dummy from dual 
 union select 'princess',2 dummy from dual;


-------------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE COPY_EMPLOYEE
(CID NUMBER PRIMARY KEY,JOB_ID VARCHAR2(30),CONSTRAINT JOB_FK_JOB_ID FOREIGN KEY (JOB_ID) REFERENCES JOBS (JOB_ID),
DEPARTMENT_ID NUMBER, CONSTRAINT DEPARTMENT_FK FOREIGN KEY (DEPARTMENT_ID) REFERENCES DEPARTMENTS(DEPARTMENT_ID));

INSERT INTO COPY_EMPLOYEE(CID,JOB_ID,DEPARTMENT_ID)
VALUES(1,'AD_VP',50);

INSERT INTO COPY_EMPLOYEE(CID,JOB_ID,DEPARTMENT_ID)
VALUES(2,'IT_PROG',80);


update COPY_EMPLOYEE set department_id =(select department_id from employees where employee_id=101) where job_id=(select job_id from employees where employee_id=102)


select * from COPY_EMPLOYEE ;

--constrant creation forenign key
--CONSTRAINT JOB_FK_JOB_ID FOREIGN KEY (JOB_ID) REFERENCES JOBS (JOB_ID)
select * from jobs ;



WAQ TO DISPLAY EMP NAME DEPARTMENT FOR ALL EMPOYEES FOR ANY EXISTING OF THOSE EMP WHOSE SALARY MORE THAN 7000
waq to display department_id total salary of those department which contain atleast one employee
waq to display emp id name job id modify job_id where job_titl
e is sales man of those emp whose job title is sa_man and programmer 
    for those emp whose job title is it_prog
waq to display emp id emp name salary and salary status column with the tilte high and low respectivly of those salary is more than and less than
    avg salary of all employees
waq to display emp id,first name last name avg salary salary status for thse emp whose salary is more than or less than avg salry of all employees
waq to return set of records to find all dep that do actually have one or more employees assign to them

select  first_name , last_name, department_id from employees

select DEPARTMENT_NAME  from DEPARTMENTS
where DEPARTMENT_id in (select department_id from employees)

select employee_id, job_id ,salary ,CASE job_id when 'sa_man' THEN IT_PROG
ELSE salary  END 
from employees;




SELECT employee_id, first_name,job_id ,
CASE  WHEN job_id = 'sa_man' THEN 'Salesman'
WHEN job_id = 'IT_PROG' THEN 'Programmer'
else job_id 
end AS modified_job_id
FROM employees;



SELECT employee_id,
       first_name || ' ' || last_name AS name,
       CASE job_id
           WHEN 'SA_MAN' THEN 'Salesman'
           WHEN 'IT_PROG' THEN 'Programmer'
           ELSE job_id
       END AS modified_job_id
FROM employees;



SELECT  employee_id,first_name,last_name,salary,
CASE 
WHEN salary > (SELECT AVG(salary) FROM employees) THEN 'high'
WHEN salary < (SELECT AVG(salary) FROM employees) THEN 'low'
 ELSE 'avg'
END AS salary_status
FROM   employees;



SELECT employee_id,first_name, salary, 
CASE WHEN salary > (SELECT AVG(salary) FROM employees) THEN 'HIGH'
     ELSE 'LOW'
END AS salary_status
From Employees;


SELECT employee_id, first_name, salary,
       CASE WHEN salary > (SELECT AVG(salary) FROM employees) THEN 'HIGH'
            ELSE 'low'
       END AS salary_status
FROM Employees;



SELECT E.FIRST_NAME ,SALARY, 


CREATE TABLE New_emp
(emp_id  nubmer,
first_name  varchar 2(10),
last_name varchar 2(10),
Start_date TIMESTAMP(7));



INSERT INTO New_emp VALUES(101,'yuvraj','sutar','03-JAN-2024 11:22:30AM');
INSERT INTO New_emp VALUES(102,'komal','sutar','04-JULY-2024 11:24:30AM');
INSERT INTO New_emp VALUES(101,'BRUCE','JACK','03-DEC-2024 11:02:30AM');
INSERT INTO New_emp VALUES(101,'VALLI','NAYER','03-JAN-2024 10:22:40AM');
INSERT INTO New_emp VALUES(101,'DAVID','AUSTIN','03-JAN-2024 09:16:45AM');

select * from New_emp;

CREATE TABLE time 
(loan_duration INTERVAL YEAR(3) TO MONTH);

INSERT INTO time VALUES(INTERVAL '201' Month(3));

select To_char(sysdate +loan_duration ,'dd-mm-yyyy') from time

select * from time 



CREATE TABLE emp AS
SELECT employee_id, first_name, last_name, salary * 12 AS annual_salary, hire_date
FROM employees
WHERE department_id = 50;


select * from emp

--view one or more table get the data in the crate table 



create view emp3 as 
SELECT employee_id, first_name, last_name, salary * 12 AS annual_salary, hire_date
FROM employees
WHERE department_id = 80;


select * from emp3




CREATE OR REPLACE VIEW emp3 AS
SELECT employee_id, first_name || ' ' || last_name AS fullname, salary, hire_date
FROM employees
WHERE department_id = 80;


select * from emp3

CREATE OR REPLACE View emp4(DEPARTMENT_NAME ,minsalary,maxsalary,avgsalary) as 
SELECT d.DEPARTMENT_NAME ,min(e.salary),max(e.salary),avg(e.salary) from employees e join DEPARTMENTS d  on (e.DEPARTMENT_ID=d.DEPARTMENT_ID)group by d.DEPARTMENT_NAME; 


select * from emp4 ;

commit;




--not null 15
--chack student age 15 
--defult sysdate function 



---faculty ,student ,course, subject , exam ,fees  , department , attandance , event , admission 

---waq sub queires that retun a set of row to find all department that do acctualy have one or more assign to them 
---waq that will identfy all emplyeees who work in department locatied in united kindom 
---waq to identify all the emplyees who earn more than avg and who work in any of the iT department 
--waq to determine who earn more than lex 
--waq to find out wich emplyee have a manager whho works for a department in us 


---waq sub queires that retun a set of row to find all department that do acctualy have one or more assign to them 
SELECT department_id, department_name 
FROM departments 
WHERE department_id IN 
  (SELECT department_id
   FROM employees);


---waq that will identfy all emplyeees who work in department locatied in united kindom 
SELECT e.first_name 
FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id
JOIN countries c ON l.country_id = c.country_id
WHERE c.country_name = 'United Kingdom';



SELECT *FROM employees
WHERE department_id IN (SELECT department_id FROM departments WHERE location_id IN ( SELECT location_id   FROM locations   WHERE country_id IN (SELECT country_id   FROM countries WHERE country_name = 'United Kingdom' ) ));

select * from COUNTRIES;
select * from LOCATIONS;
select * from DEPARTMENTS;
select * from employees;

---waq to identify all the emplyees who earn more than avg and who work in any of the iT department 
SELECT employee_id
FROM employees
waq WHERE salary > (SELECT AVG(salary) FROM employees)
AND department_id in  (SELECT department_id FROM departments WHERE  department_name LIKE '%IT%');



select employee_id ,first_name ,last_name from employees
where manager_id in (select employee_id from employees
where DEPARTMENT_id in (select DEPARTMENT_id from DEPARTMENTS
where LOCATION_id IN (Select location_id from locations where COUNTRY_ID ='US' )))


drop table FLIPKART;
drop table hospital;
drop table INSTAGRAM_USER
drop table WHATSAPP_USER


WHERE salary > 0.5 *(SELECT SUM(salary)FROM employees WHERE department_id = employees.department_id);

commit

--waq to wich is looking for the name of all employees whos salary is gretterr than 50% of theire deparrtment total salary 
--waq to get all details of emplyees who are managers 
--waq  to get details of emplyees who manage of department 
--waq to display emp_id full name salary department name citys for all emplyees to get the salary all by empyees wich is   with in the hjoining  person 1st of jan 1987 and  of 31 des 1987 
--waq to display department _code and name of all departments wich allocated city London 
--waq to display first name lastname department _id salary of alll emplyees who earn more than avg salary and arrrange the list in desanding order on the salary 

select *  from LOCATIONS
select *  from DEPARTMENTS
select *  from employees
select *  from COUNTRIES

--waq to wich is looking for the name of all employees whos salary is gretterr than 50% of theire deparrtment total salary 

SELECT first_name,last_name 
FROM employees e1 
WHERE salary > 0.5 *(SELECT SUM(salary)FROM employees e2 where e1.DEPARTMENT_ID = e2.DEPARTMENT_ID );


--waq to get all details of emplyees who are managers 
SELECT * FROM employees 
where employee_id in (select manager_id from employees)

--waq  to get details of emplyees who manage of department 
SELECT * FROM employees 
where employee_id in (select manager_id from employees) 

--waq to display emp_id full name salary department name city for all emplyees to get the salary all by empyees wich is   with in the joining  person 1st of jan 1987 and  of 31 des 1987 
SELECT emplyee_id first_name , last_name , DEPARTMENT_name
from emplyees join DEPARTMENTS d using 
(department_id) join locations l using (location_id )where salary =(select max(salary)from emplyeees where hire_date ='01-01-1987' BETWEEN '31-12-1987' )



--waq to display department _code and name of all departments wich allocated city London 

SELECT d.DEPARTMENT_ID, d.department_name
FROM DEPARTMENTS d
JOIN LOCATIONS l ON d.LOCATION_ID = l.LOCATION_ID
WHERE l.city = 'London';

SELECT DEPARTMENT_ID, d.department_name
where LOCATIONS in(select LOCATION_ID from )
--waq to display first name lastname department _id salary of alll emplyees who earn more than avg salary and arrrange the list in desanding order on the salary 
select first_name , last_name , DEPARTMENT_ID 
from employees
where salary >( select avg(salary) from employees )
order by salary desc;




--waq to display first_name lastnem salary , department_id of those emplyees who earn more than max salary of the department whos id is 80
--waq to display deparment_naem and id for all department where they allocated that id is equal to the id for location where depatment number is 80 
-- waq to display first_name, last name, salary, and department_id for those emplyees who work in department where emplyee work who holds id 201 
--waq to display fn ,ln, salary, dep id for those emp whose salary is equal salary of emp who works in that department with id is 40
--waq to display fn, ln, dep code for all emp who work in department marketing



--waq to display first_name lastnem salary , department_id of those emplyees who earn more than max salary of the department whos id is 80
SELECT first_name, last_name, salary, department_id
FROM employees
WHERE salary > (SELECT MAX(salary) FROM employees WHERE department_id = 80);


--waq to display deparment_naem and id for all department where they allocated that id is equal to the id for location where depatment number is 80 
select  d.department_id, d.department_name
from  departments d
where d.location_id = (SELECT location_id from  departments where  department_id = 80);

-- waq to display first_name, last name, salary, and department_id for those emplyees who work in department where emplyee work who holds id 201 
SELECT first_name, last_name, salary, department_id
FROM employees
where department_id = (select  department_id from  employees where  employee_id = 201);


--waq to display fn ,ln, salary, dep id for those emp whose salary is equal salary of emp who works in that department with id is 40

SELECT first_name, last_name, salary, department_id 
FROM employees
WHERE salary = (SELECT salary FROM employees WHERE department_id = 40);


--waq to display fn, ln, dep code for all emp who work in department marketing
select first_name , last_name , department_id 
from employees
where department_id= (select department_id from departments where department_name='Marketing')

select * from employees

--table 
--view 
--sequence  use primary key sequence numarical values incriment 
--index
--synonym

commit; 

currentval 
sequncename .nextval




CREATE SEQUENCE DEP_SEQ
start with 280
increment by 10
minvalue 0
maxvalue 1000
NOcycle;


select * from departments

insert into departments VALUES(DEP_SEQ.nextval,'Marketing',null,1400);

select DEP_SEQ.currval from dual;

delete from departments where department_id =280;




alter SEQUENCE DEP_SEQ
increment by 20
minvalue 0
maxvalue 1000
NOcycle;


insert into departments VALUES(DEP_SEQ.nextval,'Sales',145,3000);

select * from employees

CREATE INDEX EMP_INDEX
ON employees (first_name);

CREATE INDEX EMP_INDEX2
ON employees (last_name );

drop index EMP_INDEX2;


CREATE SYNONYM emp5
for employees 


CREATE SYNONYM view1
for emp2


SELECT DISTINCT manager_name
FROM employees
WHERE manager_id IN (
    SELECT manager_id
    FROM employees
    GROUP BY manager_id
    HAVING COUNT(employee_id) > 2
);




--waq to display detail information of those department starting salary is atlist 7000
--waq to display name of manager  who is superwising more then 2 emplyees  
--waq to display details of currunt job of those emplyees who work as salaes repagentative in past 




--waq to display detail information of those department starting salary is atlist 7000
select * from departments
where  department_id in (select department_id from employees group by department_id having  min(salary)>=7000)


--waq to display name of  manager  who is super more then 2 emplyees  


select * from DEPARTMENTS

select * from JOBS

--waq to display name of manager  who is superwising more then 2 emplyees  

select first_name , last_name  from employees
where employee_id in 
(select manager_id from employees 
GROUP BY manager_id HAVING COUNT(*) > 2)

--waq to display details of currunt job of those emplyees who work as salaes repagentative in past 

select * from JOB_HISTORY
select * from employees


--waq to display details of currunt job of those emplyees who work as salaes repagentative in past 
select * from JOBS
where job_id in 
(select job_id from employees where employee_id in (select employee_id from JOB_HISTORY where job_id ='SA_REP'))

commit


---------------------------------------------------------------------------------------------------------------------------------------------------
--DBA Action 

CREATE USER USERNAME
identified by password


CREATE USER username
    IDENTIFIED BY password
    
grant create table ,create table ,create view, create index,create sequence




-------------------------------------------------------------------------------------------------------------------------------------------------

waq to display details of department manage by 'yuvraj' 
waq to display department_id full name salary of those emplyeees whos higest salary in the department
waq to display information of those emplyees who do not have any job in past 


select * from employees


---waq to display details of department manage by 'Lex' 
select * from departments
where manager_id  in (SELECT employee_id FROM employees WHERE first_name = 'Lex' )



--waq to display department_id full name salary of those emplyeees whos higest salary in the department
select department_id,first_name salary
from employees 
where salary in (select max(salary) from employees group by department_id)



--waq to display information of those emplyees who do not have any job in past 
select * from employees
where employee_id not in (select employee_id from JOB_HISTORY)

**********************************************************************************************************************************************************8

SELECT DISTINCT manager_name
FROM employees
WHERE manager_id IN (
    SELECT manager_id
    FROM employees
    GROUP BY manager_id
    HAVING COUNT(employee_id) > 2
);



commit;

---------------------------------------------------------------------------------------------------------------------------------------------------


waq to create a new table 
waq to insert a new record in to a table
waq to delete recod form a table 
waq to update a recod in a table 
waq to delete a tabe a data base 
waq to get all records forom table 
waq to get spefic colum
waq to get distct values of a column 
waq to filter records using where closes 
waq to sort records in desc 

--waq to create a new table 
create table table_name 
(column1 datatype1 ,
column2  datatype2 
)

--waq to insert a new record in to a table
insert into table_name  VALUES(values1, values2, values3 );


--waq to delete recod form a table 
delete  from table_name where condition 

-- waq to updtae the  a record in a table 
update table name set col_name1 = col_name2 


--waq to delete a tabe a data base 
drop table table_name 


--waq to get all records forom table 
select * from table_name 


--waq to get spefic colum
select col_name  from table_name 

--waq to get distct values of a column  
select distict col_name 
from table_name 
where condition 


--waq to filter records using where closes 
select  col_name  from table_name 

--waq to secific col_name  sort records in desc 
select col_name  form table_name group by table_name desc ;


--waq to display records in a sorted manger in desc 
select * from table_name group by col_name desc

--waq to to join to tables base on a comman col 
select  col_name 
FROM table1
JOIN table2 ON table1.common_column = table2.common_column;

--waq to count total numer of rows of the table 
select COUNT(*) from table_name 

--waq to group records and calculate agregat funtion 
SELECT column1, SUM(column2) AS total_column2
FROM your_table
GROUP BY column1;

---------------------------------------------------------------------------------------------------------------------------------
--waq to find sum of values in col in a table
select sum (column) as sum_of _column
from table_name ;

--waq to find retrive rows  with values with in a specified rangge 
select * from  table_name  where  your_column BETWEEN lower_bound and upper_bound;

--waq to retrive rows with maching values of a list with a specified values 
select * from table_name where  column_name IN (value1, value2, value3,);

--waq to suerch for patterns in a col using by whild card chaacters 
select * from table_name where column_name LIKE 'pattern%';

--waq to fach to filter data based on aggregate functionin group by query
select column1, aggregate_function(column2)
from  your_table
Group by column1
having aggregate_function(column2) > some_value;

--waq to retrive rows with dates with in the specified range 
select * from your_table where date_column BETWEEN 'start_date' AND 'end_date';

--waq to combine result set of to to or more selected statment 

--waq to parform conditnatl logic in a query 
select column1, column2, 
       CASE
           when condition1 then result1
           when condition2 then result2
           else default_result
       end as new_column_name
from your_table
where your_condition;


--waq to delete all the records a table 
TRUNCATE TABLE your_table;

--waq to create and index on columns table 
create index index_name
on table_name (column1, column2);

--waq to modify strucher of an existing table 
alter table your_table
add column new_column_name data_type;

--waq to return first not null values from list of expratios
select COALESCE(expr1, expr2, expr3, default_value) as result
from table_name;

--waq to return null if to expration are equal other wise retun the first the expration 
select 
  CASE 
 when expr1 = expr2 THEN NULL
else expr1
  end AS result
from table_name;



commit;
----------------------------------------------------------------------------------------------------------------------------------

--create a table with table name as emplyee with fild emp_id emp_name emp_age ,emp_adrr,emp_salary
drop table emp1
CREATE TABLE emp1 (
emp_id NUMBER PRIMARY KEY,
emp_name VARCHAR2(10),
emp_age NUMBER,
 emp_addr VARCHAR2(50),
 salary NUMBER
);



--inseret 5 records 
insert into emp1 VALUES(1,'Yuvraj',25,'bmt',20000);
insert into emp1 VALUES(2,'rahul',22,'pune ',24000);
insert into emp1 VALUES(3,'Raj',27,'Nira ',30000);
insert into emp1 VALUES(4,'neha',30,'satara ',28000);
insert into emp1 VALUES(5,'nilesh',23,'kholapur ',35000);

select * from emp1
-- consider table delete recoder emplyee_id 3 
delete from emp1 where emp_id =3;

--waq to update age of emplyee with emplyee_id 4 
update emp1
set  emp_age = 28
where emp_id = 4;


--waq to get all records of the empyee table 
select * from emp1

-- waq to display empyee name along with there salary 
select emp_name, salary
from emp1;

--waq to filter the record where emplyee adrr = pune 
select * from emp1
where emp_addr ='pune'



--waq to to select desting values from emplyee adrr in emplyee table 
select DISTINCT emp_addr
from emp1;

--waq to sort record emplyee tables in assending and desc
select * from emp1 order by emp_id  asc
select * from emp1 order by emp_id  desc

--waq to count numberr of rows from emplyee table 
select COUNT(*) from emp1 

--waq to retrive all records of emplyees whos salary 20000 to 40000

select *
from emp1
where  salary between 20000 and 40000;

--waq to add another column departprtmt to emplyee table 
alter table emp1 add  depart VARCHAR(25);

describe table system.emp1;

--------------------------------------------------------------------------------------------------------------------------------

--waq to calculate the sum of values in prodict price of product table 
select sum(price) AS total_price
from product;

--waq to calculate avg values of product price from product table
select avg(price) AS average_price
from product;

--waq to retrive minmum maximum values from product price of product table 
select min(price) AS min_price, MAX(price) AS max_price
from product;

--waq to group records and calculate agreegat funtion from product price from produnt table
select category, count(*) as num_products, avg(product_price) as avg_price, min(product_price) as min_price, max(product_price) as max_price
from product
group by category;

--waq to detact customer from color col starting with 'B' in mobile 
SELECT *
FROM customer
WHERE color LIKE 'B%'
  AND mobile = 'your_mobile_value';


--waq to select all moblie name whos avg is grattern than 45000 from price in moblie table 
select mobile_name
from mobile
group by mobile_name
having  avg(price) > 45000;

--waq to select all mobile whos sum is smallerr then 35000 from price in moblie phone
select *
from mobile
group by mobile_name
having sum(price) < 35000;

--waq to return first not null values from first_name last_name and middle name 
select COALESCE(first_name, last_name, middle_name) AS not_name
from table_name;

--waq to delete all records from a table 
TRUNCATE table table_name;

--waq to combile teacher table with student table on name column
select *
from teacher
join student on teacher.name = student.name;

--waq to find to teacher name whos age is between35 to 45
select name
from teacher
where  age between 35 and 45;

----------------------------------------------------------------------------------------------------------------------------------------
commit
alter table table_name drop unused colums


drop table emp7
CREATE TABLE emp7 (
  emp_name VARCHAR2(10),
  emp_addr VARCHAR2(50),
  hire_date DATE,
  salary NUMBER
);

insert into emp7 VALUES('Yuvraj','bmt','10-01-2024',10000);
insert into emp7 VALUES('raj','pune','12-03-2023',20000);
insert into emp7 VALUES('mosim','kholapur','15-12-2024',30000);
insert into emp7 VALUES('anuj','pune','20-12-2024',50000);
insert into emp7 VALUES('rahul','satara','30-08-2023',40000);


select * from emp7
alter table emp7 set unused  column salary

select * from user_unused_col_tabs 



ALTER TABLE emp7 add  emp_id number PRIMARY KEY,


ALTER TABLE emp7 
ADD emp_id NUMBER PRIMARY KEY;


ALTER TABLE emp7 
modify emp_id NUMBER PRIMARY KEY;

ALTER TABLE emp7 
modify emp_id NUMBER foreign key;



select * from employees


ALTER TABLE emp7 add employee_id number

ALTER TABLE emp7 
add constraint f1  FOREIGN KEY (employee_id) REFERENCES employees(employee_id)


ALTER table emp7 
add constraint f2  FOREIGN KEY (DEPARTMENT_ID) REFERENCES DEPARTMENTS(DEPARTMENT_ID) on delete cascade ;

ALTER TABLE emp7 add DEPARTMENT_ID number;

select * from emp7
select * from DEPARTMENTS

insert into emp7 VALUES('Yuvraj','bmt',10000,1,209,290);
insert into emp7 VALUES('raj','pune',20000,2,210,300);
insert into emp7 VALUES('mosim','kholapur',30000,3,300,320);

drop TABLE T1


CREATE TABLE T1 (
  T_id NUMBER PRIMARY KEY,
  emp_id NUMBER,
  FOREIGN KEY (emp_id) REFERENCES EMP7(emp_id)
);



ALTER TABLE T1 
add constraint F1  FOREIGN KEY (employee_id) REFERENCES employees(employee_id)



Select * from emp7
insert into t VALUES(1,2);
insert into T_id VALUES();


DESCRIBE emp7
DESCRIBE T1


--a derefared constraints is one of that is enforsed whan a transition is commited 
--derefared constraints are not chack untile tasnstion commited 
--a dereferd constraints is specify by using de referrable cluse one you had added a constantests you can not change to derefferable 
--you must drup and recreate the constraints when you add a de reffeable you mark it as insihally immedite or intionaly derefared
--intionally dereferd the constirant we chack you and update or delete row of a table 
--intionally derefrerd menas the constarant is only check when a transtion in commited 

-------------------------------------------------------------------
select * from emp1


drop table A4

CREATE TABLE A4 (
  T_id number(5)
);

insert into A4 VALUES(1);
insert into A4 values(2);

describe a4
alter table A4 add constraint A6 primary key (T_id) deferrable initially deferred

set constraint A6 = immediate


ALTER TABLE A4 drop constraint A6 

commit

select* from A4 

--create table with the index 
drop table A2
create table A2(
 A2_id number primary key using index 
 (create index ab on A2 (A2_id)),
 f_name varchar2(20),
 l_name varchar2(20));


select table_name ,index_name from user indexes where table_name ='A2'


--create index 
CREATE INDEX EMP_INDEX
ON employees (first_name);

--funtion base index 
CREATE INDEX A4 ON emp1 (
    LOWER(emp_name)
);


drop table emp1


--permentally delete table from database 
drop table A2 purge 


-- Retrieve information from the recycle bin
SELECT original_name, operation, drop_time
FROM recycle_bin;

-- Flashback "emp7" to before it was dropped
FLASHBACK TABLE emp7 TO BEFORE DROP;




SELECT original_name, operation, drop_time
FROM recycle_bin;


flashback emp7 to before drop



create directory emp_dir as '/../emp_dir'

grant read on directory emp_dir to hr


Create Directory Emp_Dir As '/../emp_dir'
grant read on directory 'emp_dir' to hr
select * from t2


CREATE TABLE new_emp1
(f_name VARCHAR2(10),l_name VARCHAR2(10))
ORGANIZATION EXTERNAL(
  TYPE ORACLE_LOADER
  DEFAULT DIRECTORY emp_dir
  ACCESS PARAMETERS 
  (RECORDS DELIMITED BY NEWLINE
    NOBADFILE
    NOLOGFILE
    FIELDS TERMINATED BY ','
    ( f_name POSITION(1:20) varchar2(20),
      l_name POSITION(22:40) varchar2(20)))

  LOCATION ('emp.dat'))
PARALLEL 5
REJECT LIMIT 200;



commit;
---------------------------------------------------------------------------------------------------------------------------------------------

--waq to create a new table 

create  table sales_reps (
    id NUMBER PRIMARY KEY,
    name VARCHAR2(20),
    salary NUMBER,
    comm_pct NUMBER
);
select * from employees

insert into sales_reps VALUES(1,'Yuvraj',20000,0.4);


INSERT INTO sales_reps (id, name, salary, comm_pct)
SELECT employee_id, first_name, salary, commission_pct
FROM employees
WHERE job_id = 'SA_REP';

select * from sales_reps

INSERT INTO sales_reps (id, name, salary, comm_pct)
SELECT employee_id, first_name, salary, commission_pct
FROM employees
WHERE job_id = 'AC_ACCOUNT';

select * from employees


INSERT INTO sales_reps (id, name, salary, comm_pct)
SELECT employee_id, first_name, salary, commission_pct
FROM employees
WHERE job_id = 'AC_ACCOUNT';


INSERT INTO (select employee_id ,last_name ,email, hire_date,job_id ,salary, department_id
from employees 
where department_id =50)
values(998,'raj','yuvraj@123','04-12-23','ST_MAN',18000,null)

INSERT INTO (select employee_id ,last_name ,email, hire_date,job_id ,salary, department_id
from employees 
where department_id =50)
values(997,'raj','yuvraj@123','04-12-23','IT_PROG',18000,null)

INSERT INTO (select employee_id ,last_name ,email, hire_date,job_id ,salary, department_id
from employees 
where department_id =50)
values(996,'rajVEER','yuvrajVEER@123','04-12-23','IT_PROG',18000,)

SELECT * FROM employees



----------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO (select employee_id ,last_name ,email, hire_date,job_id ,salary, department_id
from employees 
where department_id =500)
values(996,'rajVEER','yuvrajVEER@123','04-12-23','IT_PROG',18000,)


Select E.Last_Name ,E.Salary ,E.Department_Id From Employees E Join 
(SELECT DEPARTMENT_ID,MIN(SALARY) FROM EMPLOYEES  
GROUP BY DEPARTMENT_ID) A On E.Department_Id=A.DEPARTMENT_ID


Select E.Last_Name ,E.Salary ,E.Department_Id,A.min_salary From Employees E Join 
(SELECT DEPARTMENT_ID,MIN(SALARY)as min_salary FROM EMPLOYEES  
GROUP BY DEPARTMENT_ID) A On E.Department_Id=A.DEPARTMENT_ID

Select E.Last_Name ,E.Salary ,E.Department_Id,A.max_salary From Employees E Join 
(SELECT DEPARTMENT_ID,max(SALARY)as max_salary FROM EMPLOYEES  
GROUP BY DEPARTMENT_ID) A On E.Department_Id=A.DEPARTMENT_ID

Select E.Last_Name ,E.Salary ,E.Department_Id,A.Avg_salary From Employees E Join 
(SELECT DEPARTMENT_ID,avg(SALARY)as Avg_salary FROM EMPLOYEES  
GROUP BY DEPARTMENT_ID) A On E.Department_Id=A.DEPARTMENT_ID

--waq to delete recod form a table 
delete  from table_name where condition 

-- waq to updtae the  a record in a table 
update table name set col_name1 = col_name2 

UPDATE employees
SET salary = salary - 100;
SELECT * FROM employees;
------------------------------------------------------------------------------------------------------------------------------------------

em_id 130 
change hier date 

--- update record using sub-query 
UPDATE employees
SET job_id = (select job_id FROM employees where employee_id = 190),
    salary = (select salary FROM employees where employee_id = 160)
where  employee_id = 140;

select * from  employees


--- update record using sub-query 
UPDATE employees
SET email = (insert into (select employee_id,last_name,email, job_id hire_date  FROM employees)values(110,'rahul','chen','rahul11','IT_PROG',30-10-97)
    hire_date = (select hire_date FROM employees where employee_id = 160)
where  employee_id = 120;

DELETE FROM table_name
WHERE column_name OPERATOR (SELECT column_name FROM another_table WHERE condition);

--- update record using sub-query (update using insert query is not allowed its use marge cammmand)
UPDATE employees
set email = insert into employees (select employee_id,last_name,email hire_date  from employees) where employees_id=20 
values(select employee_id from employees where employee_id = 120)
select last_name from emplyoees where employee_id=120,
'abc@.gamail.com',select hire_date from employees where employee_id =120,(job_id)
hire_date =(SELECT hire_date FROM employees WHERE employee_id = 150)


select * from employees 

create table abc (
    emp_id NUMBER PRIMARY KEY,
    emp_name VARCHAR2(20),
    DEPARTMENT_ID NUMBER,
    CONSTRAINT DEPARTMENT_fk1 FOREIGN KEY (DEPARTMENT_ID) REFERENCES DEPARTMENTS(DEPARTMENT_ID)
);

----------------------------------------------------------------------------------------------------------------------

insert all into 

insert into abc VALUES(100,'Yuvraj',290);
insert into abc VALUES(101,'Raj',300);
insert into abc VALUES(102,'mosim',320);
insert into abc VALUES(103,'rahul',10);

select * from DEPARTMENTS


---delete using sub_query
delete abc where DEPARTMENT_ID in (select  DEPARTMENT_ID from DEPARTMENTS where DEPARTMENT_NAME = 'IT')

select * from abc

------------------------------------------------------------------------------------------------------------------------------------------
 drop table EMP_SAL

create table EMP_SAL (
    emp_id NUMBER ,
    salary number
    
)

 drop table manager_Table
create table manager_Table (
    emp_id NUMBER ,
    m_id number
    
)

select * from employees

insert all 
into EMP_SAL values(emp_id,salary)
into manager_Table values(emp_id,m_id)
select employee_id emp_id , salary salary, manager_Table m_id  
from employees;


select * from EMP_SAL
select * from manager_Table


---multiple table insertion 
insert all 
into EMP_SAL values(emp_id,salary)
into manager_Table values(emp_id,m_id)
select employee_id emp_id , salary salary, manager_Table m_id  
from employees
WHERE employee_id < 150;

8000 150

insert all 
when salary> 8000 then 
into EMP_SAL values(emp_id,salary)

when m_id> 150 then 
into manager_Table values (emp_id,m_id)

select employee_id emp_id , salary salary, manager_Table m_id  
from employees





select * from employees
select * from EMP_SAL

------------------------------------------------------------

create table Hire_date  (
    DEPARTMENT_ID NUMBER,
     hire_date date
     )


create table Department_salary (
    DEPARTMENT_ID NUMBER ,
    salary number 
)


select * from employees


insert first 

when salary >10000 then into Department_salary values(DEPARTMENT_ID,salary)

when Hire_date > '21-09-89' then into Hire_date values(DEPARTMENT_ID,hire_date)

select DEPARTMENT_ID DEPARTMENT_ID , min(salary)salary , hire_date hire_date from employees group by department_id ,hire_date

select *  from Hire_date 

select *  from Department_salary 

--------------------------------------------------------------------------------------------------

Insert  First 
 When Salary > 10000 
 Then Into Sal1 Values(D_Id,Salary)
 When Hire_Date> '17-06-87' Then Into Hire_D Values(D_Id,Hire_Date )
 Select Department_Id D_Id , min(Salary) Salary,Max(Hire_Date)  Hire_Date  From 
 Employees  group by Department_Id;
Truncate Table Hire_D
Truncate Table  Sal1;
Select * From Sal1;
select * from  hire_d

Create  Table hire_d_h99 (
    D_Id Number ,
    hire_date date
    );
    
    Create  Table hire_d_h00 (
    D_Id Number ,
    hire_date date
    );
  Select * From Hire_D_H00
    Select * From Hire_D_H99
    Select * From Sal1
     Insert  all
     When Salary > 5000 Then  Into Sal1 Values(D_Id,Salary)
When Hire_Date Like '%00' Then  Into Hire_D_H00 Values (D_Id,Hire_Date)
When Hire_Date  Like '%99' Then Into Hire_D_H99 Values (D_Id,Hire_Date)
Else Into Hire_D_H99 Values (D_Id,Hire_Date)
 Select Department_Id D_Id , sum(Salary) Salary,Min(Hire_Date)  Hire_Date  From 
 Employees  Group By Department_Id;
    Select * From employees
    
    
  Create Table Sales_S_Data (
  Emp_Id Number,
  Week_Id Number,
Sale_Mon Number,
Sale_Tue Number,
Sale_Wed Number,
Sale_Thur Number,
Sale_Fri number);

Create Table Sales_Info(
Emp_Id Number ,
Week_Id Number,
Sale Number)

Select  * From Sales_S_Data

 Insert Into Sales_S_Data Values(0,01,1000,2000,3000,4000,5000);
  Insert Into Sales_S_Data Values(1,02,200,300,500,400,100);
   Insert Into Sales_S_Data Value s(2,03,11000,12000,13000,14000,15000);
    Insert Into Sales_S_Data Values(3,04,24000,22000,23000,34000,45000);
     Insert Into Sales_S_Data Values(4,05,35000,82000,83000,84000,85000);
      insert into Sales_S_Data values(5,06,46000,72000,73000,74000,75000);

select * from Sales_S_Data 
select * from SALES_INFO

drop table sales_s_data
drop table sales_s_date
drop table sales_info



--paiwotting  (row data convert into the calums)
insert all INTO SALES_INFO VALUES(EMP_ID,WEEK_ID,SALE_MON)
INTO SALES_INFO VALUES(EMP_ID,WEEK_ID,SALE_TUE)
INTO SALES_INFO VALUES(EMP_ID,WEEK_ID,SALE_WEd)
INTO SALES_INFO VALUES(EMP_ID,WEEK_ID,SALE_THUR)
INTO SALES_INFO VALUES(EMP_ID,WEEK_ID,SALE_FRI)
SELECT EMp_ID,WEEK_ID,SALE_MON,SALE_TUE,SALE_WEd,SALE_THUR,SALE_FRI FROM Sales_S_Data;

select * from employees 
DESCRIBE employees
select * from employees_new

  Create Table employees_new (
  EMPLOYEE_ID Number,
  FIRST_NAME VARCHAR2(20),
LAST_NAME VARCHAR2(25),
EMAIL  VARCHAR2(25),
PHONE_NUMBER VARCHAR2(25),
HIRE_DATE  DATE,
JOB_ID   VARCHAR2(20),
SALARY  NUMBER,
COMMISSION_PCT NUMBER,
MANAGER_ID  NUMBER,
DEPARTMENT_ID  NUMBER
);
insert into employees_new values( 105,'David','abcde','DAUSTIN','9876543210','25-06-97','IT_PROG',4400,NULL,103,60);
insert into employees_new VALUES(105,'David','abcd','DAUSTIN','590.423.4569','25-06-97','IT_PROG',4400,null,103,60);

delete * from college management system.employees_new where employee_id= 105 and employee_id=211;

delete * from employees_new where EMPLOYEE_ID = 211

select * from employees_new
drop table employees_new;

merge into employees_new n  using employees e on(n.EMPLOYEE_ID = e.EMPLOYEE_ID)
when matched then
update set
n.FIRST_NAME=e.FIRST_NAME,n.LAST_NAME=e.LAST_NAME,n.EMAIL=e.EMAIL,n.PHONE_NUMBER=e.PHONE_NUMBER,n.HIRE_DATE=e.HIRE_DATE,
n.JOB_ID= e.JOB_ID,n.SALARY=e.SALARY,n.COMMISSION_PCT=e.COMMISSION_PCT,n.MANAGER_ID=e.MANAGER_ID,n.DEPARTMENT_ID=e.DEPARTMENT_ID
when not matched then
insert values(e.EMPLOYEE_ID,e.FIRST_NAME,e.LAST_NAME,e.EMAIL,e.PHONE_NUMBER,
e.HIRE_DATE,e.JOB_ID,e.SALARY,e.COMMISSION_PCT,e.MANAGER_ID,e.DEPARTMENT_ID)

describe employees
select * from employees_new



----------------------------------------------------------


Create Table worker(
W_id Number ,
w_name varchar2(25))


Create Table worker1(
W_id Number ,
w_name varchar2(25)not null)


Create Table worker2(
W_id Number ,
w_name varchar2(25)DEFAULT 'abc')

insert into worker VALUES(101,'yuvraj');
insert into worker VALUES(102,'mosim');
insert into worker VALUES(103,'raj');
insert into worker VALUES(104,'komal');
insert into worker VALUES('rahul');

insert into worker1 VALUES(201,'rahul');
insert into worker1 VALUES(202,'ram');
insert into worker1 VALUES(203,'sham');
insert into worker1 VALUES(204,'manoj');
insert into worker1 VALUES('anuj');


insert into worker2 VALUES(301,'vikram');
insert into worker2 VALUES(302,'sayali');
insert into worker2 VALUES(303,'soniya');
insert into worker2 VALUES(304,'anuj');
insert into worker2 VALUES(305,default);

alter table worker2
modify W_id number DEFAULT 300 

describe worker2
select * from worker2

update  worker2
set w_id = default where w_id=301

select salary  from employees 
where employee_id =103
select * from employees

update employees
set  salary = salary+(salary) *0.50
where employee_id = 103;

commit;

--system change number (scn )
select salary  from employees 
versions between scn minvalue and maxvalue where employee_id= 103 

select versions_starttime "startdate",versions_endtime "enddate",salary 
from employees versions between scn minvalue and maxvalue where employee_id= 103 


commit;

select * from employees

------------------------------------------------------------------------------------------------------------------------------

---wqa to the display current date and time
select sysdate ,systimestamp,current_timestamp from dual 


--write an sql query to create an empty table with the same structure as same other table (where condition is fales)
create table emp11 as (select * from employees where 1=0)

drop table emp11

---write an sql query to fetch the first 50% records from employee table
select * from employees
select * from employees where rownum <=
(select count (*)from employees)/2



--- find 'n'th highest salary ('n'th 40)
select e1.salary ,count(distinct e2.salary)
from employees e1 join employees e2 on e1.salary  <= e2.salary group by 
e1.salary having count(distinct e2.salary)=40


--------------------------------------------------------------------------------------------
--Grouping functions 

CREATE TABLE student1 (
S_id NUMBER ,
paid_fees NUMBER,
c_id varchar(20),
d_id varchar(20)
);

drop table student1
select * from student
insert into student1 VALUES(1,1000,'c_01','d_101');
insert into student1 VALUES(2,2000,'c_02','d_102');
insert into student1 VALUES(3,3000,'c_03','d_103');
insert into student1 VALUES(4,4000,'c_04','d_104');
insert into student1 VALUES(5,5000,'c_05','d_105');
insert into student1 VALUES(6,6000,'c_01','d_101');
insert into student1 VALUES(7,7000,'c_02','d_102');
insert into student1 VALUES(8,8000,'c_03','d_103');
insert into student1 VALUES(9,9000,'c_04','d_104');
insert into student1 VALUES(10,10000,'c_05','d_105');
insert into student1 VALUES(11,11000,'c_01','d_101');
insert into student1 VALUES(12,12000,'c_02','d_102');
insert into student1 VALUES(13,15000,'c_03','d_103');
insert into student1 VALUES(14,16000,'c_04','d_104');
insert into student1 VALUES(15,17000,'c_05','d_105');
insert into student1 VALUES(11,11000,'c_01','d_105');
insert into student1 VALUES(12,12000,'c_02','d_104');
insert into student1 VALUES(13,15000,'c_03','d_103');
insert into student1 VALUES(14,16000,'c_04','d_102');
insert into student1 VALUES(15,17000,'c_05','d_105');

select * from student1



--uses subtotal values (use group by 2 calumns)
select c_id, d_id ,sum(paid_fees)from student1 group by (c_id,d_id)
select c_id, d_id ,sum(paid_fees)from student1 group by rollup (c_id,d_id)


--we use cross tabular values findout  (use group by 2 calmuns )
select c_id, d_id ,max(paid_fees)from student1 group by cube (c_id,d_id)



select department_id,job_id, sum(salary)
from employees where department_id<=50
group by rollup(department_id,job_id);


select department_id,job_id, sum(salary)
from employees where department_id<=50
group by cube(department_id,job_id);

select  department_id as d_id, job_id as j_id , sum(salary)as salary,
grouping(department_id) as  g_d_id,
grouping(job_id)as  g_j_id 
from employees where department_id < 50 group by rollup(department_id,job_id)


select  department_id as d_id, job_id as j_id , sum(salary)as salary,
grouping(department_id) as  g_d_id,
grouping(job_id)as  g_j_id 
from employees where department_id < 50 group by cube(department_id,job_id)

---------------------------------------------------------------------------------------------------------------------------------------
--grouping sets 
select department_id,job_id,manager_id,avg(salary) from employees
group by grouping sets ((department_id,job_id),(manager_id,salary))

select * from employees

select avg(salary )from employees

m j =s
209
210
300
211
--using rollup  function 
select department_id,job_id,manager_id, sum(salary) from employees
group by  rollup(department_id,(job_id,manager_id))


select department_id,job_id,manager_id, sum(salary) from employees
group by department_id,rollup(job_id),cube(manager_id)


delete from employees where employee_id in(209,210,300,211);

select hire_date from employees



alter table employees
modify  hire_date TIMESTAMP;

alter table employees
modify  hire_date date;

select hire_date from employees

drop table TS
CREATE TABLE TS (
TS_id NUMBER PRIMARY KEY,
hire_date TIMESTAMP with time zone
);


drop SEQUENCE TS_id

CREATE SEQUENCE TS_id
start with 100
increment by 10
minvalue 0
maxvalue 1000
NOcycle;

select * from ts

delete from TS where TS_id =130;

insert into TS VALUES(120, current_date)
insert into TS VALUES(TS_id.nextval, sysdate)


select * from TS1


CREATE TABLE TS1 (
hire_date TIMESTAMP with local time zone);

insert into TS1 VALUES( current_timestamp)
insert into TS1 VALUES( current_timestamp+5)

select * from TS1




ALTER SESSION SET TIME_ZONE = 'america/new_york';


--interval year to month
--interval day to seconds
drop table insurance


CREATE TABLE insurance (
I_id number ,
insurance interval year to month);



insert into insurance VALUES(1,interval '23' year )
insert into insurance VALUES(1,interval '5' month )


insert into insurance VALUES(3,'10-2'  )

select * from insurance


CREATE TABLE insurance1 (
I_id number ,
insurance interval day to second);

insert into insurance1 VALUES(1, '  90 11:11:12.00'  )

select EXTRACT(year)
from sysdate from dual 

SELECT EXTRACT(YEAR FROM SYSDATE) AS year FROM DUAL;

SELECT EXTRACT(month FROM SYSDATE) AS year FROM DUAL;

SELECT EXTRACT(day FROM SYSDATE) AS year FROM DUAL;

----------------------------------------------

select TZ_offset ('America/New_York')from dual

select EXTRACT (day from hire_date) from EMPLOYEES
where EMPLOYEE_ID= 107;




select from_TZ (timestamp 2001-05-30 12:59:47','UTC+5:00')

--------------------------------------------------------------------------------------------

select TO_CHAR(DATE '2024-02-01', 'Day') FROM DUAL;

SELECT TO_CHAR(current_date, 'Day') FROM DUAL;

SELECT months_between('05-01-2024', '02-03-2024') FROM DUAL;


select FROM_TZ (timestamp '2001-10-09 12:59:00','America/New_York') from dual;


SELECT FROM_TZ(TIMESTAMP '2001-10-09 12:59:00', 'America/New_York') FROM DUAL;

-----------------------------------------------------------------------------------------


select to_timestamp(TIMESTAMP '2001-10-09 12:59:00 ')from dual

select To_timestamp_TZ(TIMESTAMP '2001-10-09 12:59:00 ')from dual


select * from employees

SELECT hire_date, hire_date + to_yminterval('1-0') AS incremented_date
FROM employees
WHERE employee_id = 110 OR department_id = 50;


SELECT to_yminterval('2-6') AS mobile_inst
FROM dual


SELECT to_dyminterval('1-20') FROM dual

ALTER TABLE employees
MODIFY hire_date TIMESTAMP;

select employee_id, hire_date, to_char(hire_date+to_dsinterval('90 10:59:49'))as new_date 
from employees
where department_id=50;


SELECT DepartmentID, DepartmentName
FROM Departments
WHERE NOT EXISTS (
    SELECT 1
    FROM Employees
    WHERE Employees.DepartmentID = Departments.DepartmentID
);





--------------------------------------------------------------------------------------------------------------

---not allowed to the inset commend co related subquery 

--select (allowed)
---upadte (allowd)



--find all employees who earn more than avg salary in there department using subquiery 
--display details of those emp who have change job title atlist twoic using subquiery 

select * from employees


--co-related sub query
select employee_id, salary , department_id  from employees e1
where salary >(select avg(salary) from employees   e2 where e2.department_id = e1.department_id)


select * from job_history


select * from  employees e
where  (select COUNT(job_id)  from job_history where employee_id = e.employee_id)>=2;


select * from  employees e
where 2<=(select count(job_id) from job_history where employee_id = e.employee_id)

-- find employees who have atlist one person reparting to them (manager) using subquery 
-- find all departments that do not have any employees using subquery


select  from employees


select employee_id, first_name , last_name 
from employees e1
where exists(select MANAGER_ID from employees e2 where e2.MANAGER_ID = e1.MANAGER_ID)

--find all departments that do not have any employees using subquery

select department_id  from  departments d1
where not exists(select employee_id from employees e2 where e2.department_id = d1.department_id)

-------------------------------------------------------------------------------------------------------------------------------


drop table emp133

CREATE TABLE abc1 (
manager_id number );
    
    
update abc1 a1 set  manager_id = (select manager_id from employees where manager_id= a1.manager_id )

select * from employees

insert into abc1 VALUES(100);
insert into abc1 VALUES(102);
insert into abc1 VALUES(400);
insert into abc1 VALUES(500);     

CREATE TABLE DEPARTMENTS123 (
DEPARTMENT_ID number,
DEPARTMENT_NAME VARCHAR2(30),
MANAGER_ID number, 
LOCATION_ID number);

select * from EMPLOYEES

insert into DEPARTMENTS123 VALUES(10,'Administration',	200,	1700);
insert into DEPARTMENTS123 VALUES(20	,'Marketing'	,201	,1800);
insert into DEPARTMENTS123 VALUES(10 ,'IT', 103,1400);
insert into DEPARTMENTS123 VALUES(20,'SALES', 145,2500);    

    
update DEPARTMENTS123 a1 set  DEPARTMENT_NAME = (select DEPARTMENT_NAME from DEPARTMENTS where DEPARTMENT_ID= a1.DEPARTMENT_ID )

SELECT * FROM employees

alter table employees
add department_name VARCHAR2(30);


update employees  e set department_name = (select department_name  from departments where  DEPARTMENT_ID= e.DEPARTMENT_ID )

select * from employees



delete  from employees e  where department_name =(select department_name from  departments d where d.DEPARTMENT_ID = e.DEPARTMENT_ID )

abc 
d_id--
d_name 

---------------------------------------------------------------------------------------------------------------------------------------------------------

select * from departments

describe employees

CREATE TABLE abc123 (
DEPARTMENT_ID number,
DEPARTMENT_NAME VARCHAR2(30)
);

insert into abc123 VALUES(10,'Administration');
insert into abc123 VALUES(20	,'Marketing');
insert into abc123 VALUES(30 ,'IT');


delete  from employees e  where department_name =(select department_name from  departments d where d.DEPARTMENT_ID = e.DEPARTMENT_ID )



select * from employees

ALTER TABLE employees
DROP COLUMN DEPARTMENT_NAME;



WITH 
  F_n AS (
    SELECT first_name, last_name || first_name as f_n, salary FROM  employeesWHERE   employee_id IN (108, 109)),
    S_n AS ( SELECT e.manager_id,d.department_name, e.salary
 FROM  employees e JOIN departments d ON e.department_id = d.department_id WHERE   e.salary > 6000)SELECT  * FROM F_n WHERE salary > (SELECT MAX(salary) FROM S_n);



select * from employees

---------------------------------------------------------------------------------------------------------------------------------------
--with us 

with abc as (select d.department_name , sum(salary)as Total_salary from employees e  join departments d On e.department_id= d.department_id group by d.department_name ),
avg_sal as (select avg(salary) as avg_salary from employees) select * from abc 
where Total_salary >(select avg_salary  from  avg_sal)


with F_n (select frist_name , last_name  from employees
where employee_id = 108 and 109)


 
with F_n as (select first_name,last_name, salary from employees),
s_n as (select min(salary)as m_sal from employees )
select * from f_n where salary >(select m_sal from s_n);



--using with clause write a query to display department name wise maximum salary for those department hus total salary is gretten than  avgrage salary across deprarment 


with abc (select department_id ,first_name , max(salary) from employees join departments group by department_name ),
s_n (select avg(salary) as avg_salary from employees)
select * from abc where salary >(select avg_salary from _n);



-----------------------------------------------------------------------------------------------------------------------------------------
---regular exprations 

with  abc (max)
total salary > avg

with abc (select department_id ,first_name , max(salary) from employees join departments group by department_name ),
s_n (select avg(salary) as avg_salary from employees)
select * from abc where salary >(select avg_salary from _n);




select first_name ,last_name  from employees where first_name LIKE '%Z%' and  last_name LIKE '%be%';


 




SELECT first_name
FROM employees
WHERE REGEXP_LIKE(first_name, 'z');


--string , pattern , case  -
c- small 
i= all
--^ not 


SELECT last_name
FROM employees
WHERE REGEXP_LIKE(last_name, 'be|ae ','c');



SELECT last_name
FROM employees
WHERE REGEXP_LIKE(last_name, 'be|ae ','i');


SELECT last_name
FROM employees
WHERE REGEXP_LIKE(last_name, 'Be|Ae ','c');


SELECT last_name
FROM employees
WHERE REGEXP_LIKE(last_name, '^be|^ae ','i');




SELECT last_name
FROM employees
WHERE REGEXP_LIKE(last_name, 'er$|ez$|es$ ');




SELECT last_name
FROM employees
WHERE REGEXP_LIKE(last_name, '^Be|^Ba','i');


SELECT last_name
FROM employees
WHERE REGEXP_LIKE(last_name, 'j|z');


SELECT last_name
FROM employees
WHERE REGEXP_LIKE(last_name, '[jz]');

SELECT last_name
FROM employees
WHERE REGEXP_LIKE(last_name, '[j-z]');

SELECT last_name
FROM employees
WHERE REGEXP_LIKE(last_name, '[a-c]');




SELECT last_name
FROM employees
WHERE REGEXP_LIKE(last_name, '[bzE]','i');



SELECT last_name
FROM employees
WHERE REGEXP_LIKE(last_name, '[d-g ]a','i');


SELECT last_name
FROM employees
WHERE REGEXP_LIKE(last_name, '[b-g ]..a','i');


SELECT last_name
FROM employees
WHERE REGEXP_LIKE(last_name, '[o]{2}');

SELECT first_name
FROM employees
WHERE REGEXP_LIKE(first_name, '^Ste(v|ph)en$');



SELECT last_name 
FROM employees
WHERE REGEXP_LIKE(last_name,'([Aeiou])\1');



select * from employees

SELECT phone_number 
FROM employees
WHERE REGEXP_LIKE(phone_number,'[0-9]{3}.[0-9]{3}.[0-9]{4,}');


SELECT phone_number 
FROM employees
WHERE REGEXP_LIKE(phone_number,'[0-9]{3}.[0-9]{2}.[0-9]{4}');

011.44.1344.429268

-------------------------------------------------------------------------------------------------------------


SELECT phone_number
FROM employees
WHERE REGEXP_LIKE(phone_number, '\d');

SELECT phone_number
FROM employees
WHERE REGEXP_LIKE(phone_number, '[[:digit:]\d]');

SELECT phone_number
FROM employees
WHERE REGEXP_LIKE(phone_number, '[[:digit:]]{2}.[[:digit:]]{2}.[[:digit:]]{3}');

SELECT phone_number
FROM employees
WHERE REGEXP_LIKE(phone_number, '\d{3}.\d{3,}.\d{3,5}');

----------------------------------------------------------------------------------------------------------
select REGEXP_replace ('welcome to kdn','^(\S*)','bye-bye') from dual 


select REGEXP_replace ('2+5=10 is addition of two  numbers','\d','$') from dual 


select REGEXP_replace ('2*5=10 is addition of two  numbers','(\d)(\d)','$') from dual 


select REGEXP_replace ('2*5=10 is addition of two  numbers','(\d)(\d)','Ten') from dual 

--string pattern replaceword start  end  case 

select REGEXP_replace ('Yuvraj Sutar','a|e|i|o|u','&','2','0','i') from dual 

--first paramiter change 
select REGEXP_replace ('Yuvraj Sutar','a|e|i|o|u','&','1','1','i') from dual 


select REGEXP_INSTR (' yuvraj sutar','s') from dual 

select REGEXP_INSTR (' yuvraj sutar','s','2','1') from dual 

select REGEXP_INSTR ('my name is RAM','Am',1,1,0,'i') from dual 


select REGEXP_INSTR ('my name is RAM','Am',7,1,0,'i') from dual 


select REGEXP_INSTR ('my name is RAM','Am',7,1,0,'i') from dual 


select REGEXP_INSTR ('my name is RAM','Am',7,1,0,'i') from dual 

select REGEXP_substr ('my name is RAM','(\S*)') from dual 

select REGEXP_substr ('my name is RAM','(\S*)(\s)',2) from dual 

select REGEXP_substr ('my  55 name is 81 RAM','(\d)(\d)',2) from dual 


select REGEXP_substr ('my  55 name is 81 RAM','(a|e|i|o|u)',1,1) from dual 


---------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT street_address, 
   REGEXP_INSTR(street_address,'[^[:alpha:]]')
FROM   locations 
WHERE    
   REGEXP_INSTR(street_address,'[^[:alpha:]]')> 10
   
------------------------------------------------------------------------
--bottem up aproch
SELECT employee_id, last_name, job_id, manager_id
FROM   employees
START  WITH  employee_id = 101
CONNECT BY PRIOR manager_id = employee_id ;


101	Kochhar	AD_VP	100
100	King	AD_PRES	
select * from employees


SELECT employee_id, last_name, job_id, manager_id
FROM   employees
START  WITH  employee_id = 104
CONNECT BY PRIOR manager_id = employee_id ;




104	Ernst	IT_PROG	103
103	Hunold	IT_PROG	102
102	De Haan	AD_VP	100
100	King	AD_PRES	

--top to buttom aproch
SELECT employee_id,manager_id , last_name||' reports to '|| 
PRIOR   last_name "Walk Top Down"
FROM    employees
START   WITH last_name = 'King'
CONNECT BY PRIOR employee_id = manager_id ;


select * from employees

SELECT  employee_id||' reports to '|| 
PRIOR   manager_id "Walk Top Down"
FROM    employees
START   WITH last_name = 'King'
CONNECT BY PRIOR employee_id = manager_id ;



COLUMN org_chart FORMAT A12
SELECT LPAD(last_name, LENGTH(last_name)+(LEVEL*2)-2,'_') 
       AS org_chart
FROM   employees 
START WITH first_name='Steven' AND last_name='King' 
CONNECT BY PRIOR employee_id=manager_id 



COLUMN org_chart FORMAT A12
SELECT RPAD(last_name, LENGTH(last_name)+(LEVEL*2)-2,'_') 
       AS org_chart
FROM   employees 
START WITH first_name='Steven' AND last_name='King' 
CONNECT BY PRIOR manager_id =employee_id



--------------------------------------------------------------------------


set serveroutput on 
declare
   msg varchar2(60) := 'Welcome to PL/SQL program';
begin
   dbms_output.put_line(msg);
end;

set serveroutput on 
declare
   msg varchar2(60) := 'Welcome to PL/SQL program';
begin
   dbms_output.put_line(msg);
   end;


select sys_context('userenv','inatance_name')as SID from dual;




------------------------------------

--------

