select * from departments

select  department_id , location_id  from departments

select last_name, salary+300 from employees

select last_name , salary , 12* salary+100 from employees

select last_name, salary , 12*(salary+100) from employees

select last_name , job_id , salary  commition_pct from employees

select last_name , 12* salary * commission_pct  from employees

select last_name as name , commission_pct from employees

select last_name "Name", salary *12 "annual salary"
from employees

select last_name ||job_id as "employees"
from employees

select  last_name || 'is a '|| job_id 
as " employees details"
from employees


select department_name || q'[, it's assihned manger id:]'
|| manager_id
as "department and manger"
from departments;


select department_id  from employees

select distinct department_id from employees

describe employees

----------------------------------------------------------------------------------------------------
--- power point 1.2
-- control user access

create user user
indentified by password

create user user1 
indentified by user1

grant crates session , create table 
create sequence , create view 
TO scott

create Role manger 


grant create table , crate view 
to manager ; 


grant manager to bell, kochhar;

alter user HR 
Identified by employ

-------------------------------------------------------------
--power  point 1.3
--object privileges


Grant select 
NO employees 
TO sue, rich

grant Update (departmnet_name , location_id )
NO departments 
To scott, manager


Revoke select , insert 
ON department 
from scott

--------------------------------------------------------------------------
---powerpoint 02

--restricting and sorting data 


-- where clause 
select  employee_id , last_name , department_id 
from employees
where department_id =90;


select last_name , department_id , job_id 
from employees
where last_name ='Sutar'


select * from employees

--comparison opraters

select last_name , salary  
from  employees
where salary  <= 3000;

--between


select last_name , salary 
from employees
where  salary between 2000 and 3000;

--IN oprater

select employee_id , first_name , last_name , salary , manager_id 
from employees
where manager_id in (100, 200, 300)


---like oprater 

select first_name 
from employees
where first_name like 'y%'


select last_name 
from employees
where last_name like '_o%'


select last_name, manager_id 
from employees
where manager_id is null;

--and operator & or oprator

select employee_id , last_name, job_id , salary 
from employees
where salary >=10000 AND job _id like '%Man%'


select employee_id ,last_name , job_id , salary 
from employees
where salary >= 10000 or job_id like '%Man%'


--Rules of Precedence

select last_name , job_id , salary 
from employees
where job_id ='SA_REP'
OR JOB_ID ='AD_PRES'
AND salary > 15000;

select last_name , job_id , salary 
from employees
where joB_id ='SA_rep'
OR job_id =' AD_PRES'
and salary >15000


---Order by clause


select last_name, job_id , department_id , hire_date 
from employees
order by hire_date 


--sorting methods

select last_name , job_id , department_id , hire_date 
from employees
order by hire_date desc

select employee_id , last_name , salary *12  anual_salary 
from employees
order by anual_salary


--multiple sorting 

select employee_id , last_name , department_id , salary 
from employees
order by department_id  desc, salary desc;

--substitution variable (get the user input)

select employee_id , last_name , salary, department_id 
from employees
where employee_id = &employee_num;

select last_name , department_id , salary* 12
from employees
where job_id = '&job_tile'

SELECT employee_id , last_name , job_id &&column_name 
from employees
order by &column_name 



--define command 

define employee_num =200
select employee_id , last_name , salary, department_id 
from  employees
where employee_id = &employee_num 


undefine employee_num
--verify command
set verify on 
select employee_id , last_name , salary 
from employees
where employee_id  =& employee_num

---where 
---comparison conditions 
---between , in , like , & null comditions
---logical operators and, or, not
--use order by 
----------------------------------------------------------------------------------------------
--power point 2.2

--permenantly delete table 
drop table purge

-- flashback table(Restore a table) 
drop table emp1

select original_name , operation, droptime 
from recyclebin 

flashback table emp1 to before drop


select * from emp1


--table recoverd
-----------------------------------------------------------------------------------
--power point 3.1(IMP)

--single row functions 
--1.charater
--2.number
--3.date
--4conversion
--5.genral


-- case manipulation functon 


select employee_id, last_name , department_id 
from employees
where last_name ='higgins'


select employee_id , last_name, department_id 
from employees
where lower(last_name)='higgins'

--charester manipulation function 
--1.concat 
--2.substr
--3.lenhth
--4.instr
--5.lpad
--6.Rpad
--7.replace
--8.trim

---number function 
--1.round
--2.trunc
--3.mod


select round (45.893,1) from dual 

select trunc (45.894, 2),trunc (45.895) ,trunc (45.894, -1)  from dual

select last_name , salary , mod(salary ,5000)
from employees
where job_id = 'SA_REP'



-- working with the dates

select last_name , hire_date 
from employees 
where hire_date < '01-feb-88'


-- working with the dates and time 
--only two oprations perform in date and time 
--addition and subtract 


select last_name ,(sysdate-hire_date )/7 as weeks 
from employees
where department_id=90

--data functions 

--1.months_between
--2.add_months 
--3.Next_day
--4.last_day
--5.round
--6.trunc

----date functions 
--1.months_between 
--2.add_months 
--3. next_day 
--4.last_day 

---------------------------------------------------------
--power point 3.2
--manipulating large data serts 

---copy row from another table 
insert into seles_reps(id , name , salary , commission_pct)
select employee_id , last_name , salary, commission_pct
from employees
where job_id like '%REP%'

---inserting using a subquery as a target 
insert into 
(select employee_id , last_name , email, hire_date , salary, department_id
from emp13
where  department_id =30)
values(99999,'taylor','dtaylor',TO_DATE('07-JAN-99,DD-MON-RR'), 'ST_CLERCK',5000,50)


--DML STATMENT AND CONTROL TRANSGATIONS 
--multitable inserts 
-- 1. unconditional insert
--2.pivoting 
--3.conditional- all insert
--4.conditional - first insert 
--5. marge rows 
--6.manipulate subqueries
-------------------------------------------------------------------------------------
--power point 3.3
--implict data tye conversion 

--TO_char Function

select last_name,
TO_char(hire_date,'fmDD month YYYY')
from employees


--the TO_CHAR Function with Numbers
select TO_char(salary,'99,99.99') salary 
from employees
where last_name ='Ernst'


select last_name , To_char (hire_date ,'dd-Mon-YYYY')
from employees
where hire_date < TO_date('01-jan-90','dd-MOn-rr')

--Nested funcrion

select last_name, upper(concat(substr(last_name,1,8),'US'))
from employees
where department_id=60

---Genral functions 
--1.NVL (expr1,expr2)
--2.NVL2 (expr1,expr2,expe3)
--3.NULL IF (expr1,expr2)
--4.COALESCE(expr1,expr2......exprN)

select last_name, salary ,NVL(commission_pct,0),
(salary*12)+(salary*12*NVL(commission_pct,0))an_sal
from employees






----------------------------------------------------------------------------------------------------
--power point 4.1

--reparoting aggregated data usnig the functions 
-- group function 
--1. avg
--2. count 
--3. min 
--4.max 
--5. std dev
--6. sum 
--7 variance

select avg(salary), max(salary), min(salary ) from employees
where job_id  like '%REP%'



select min(hire_date), max(hire_date) from employees


--count function


select count(*)
from employees
where department_id =70


select count (commission_pct)
from employees
where department_id =80

select count(distinct department_id) from employees

select avg (commission_pct)
from employees

select avg(nvl (commission_pct,0))
from employees

select avg(salary), department_id 
from employees
group by department_id 

-----------------------------------------------------------------------------------

--power point 4.2 
 --grouping by more then one column 
 
 select department_id , job_id , sum(salary)
 from employees
 group by department_id ,job_id
 
 
 --- cannnot  use the where clause to restrict group (not user where in gruoping functions )
 select department_id , avg(salary)
 from employees
 where avg (salary)> 8000
 group by department_id 
 
 
 ---grouping functions are use the having clause (write a condition)
 
 select department_id , max(salary)
 from employees
 group by department_id 
 having max(salary)>10000
 
 --- group by in condition  not allowed but outer the write 'where '
 select job_id, sum(salary) payroll
 from employees
 where job_id NOt like '%REP%'
 group by job_id 
 having sum(salary )> 13000
 order by sum (salary)
 
 -- nested group funtion 
 select max(avg(salary))
 from employees
 group by department_id 
 
 --use the group functions  count, max, min and avg 
 -- write queries use the group by clause 
 -- write queries use the having clause 
 --------------------------------------------------------------------------------
 --power point 05
-------------------Write SELECT statements to access data from more than one table using equijoins and nonequijoins
-------------------join a table  to itself by using a self join 


-------------------Tpye of the joins 

--1. cross join 
--2. Natural join 
--3.using  clause
--4. full (or two sided) outer joins 
--5.join conditions  for outer joins


-------------------(cross product + condition )
select department_id , department_name , location_id , city 
from departments 
natural join locations


-------------------retriving record with the 'using'clause 


select employees. employee_id , employees.last_name ,
departments.location_id , department_id 
from employees join departments
using (department_id)

-------------------creating aliases 


select e. employee_id ,e.last_name , d.location_id , department_id
from employees e join departments d
using (department_id )

-------------------crateing join on clause 

select e.employee_id , e.last_name, e.department_id, 
d.department_id , d.location_id 
from employees e join departments d
on (e.department_id =d.department_id)

-------------------self join  the using "ON" clause 
select e.last_name emp, m.last_name mgr
from employees e join employees m
ON (e.manager_id =m.employee_id)

-------------------applying additional condition to a join 
select e.employee_id ,e.last_name ,e.department_id ,
d.department_id ,d.location_id
from employees e join departments d
ON (e.department_id = d.department_id)
and e.manager_id=149


-------------------creating three way join with the "ON" clause

select employee_id , city , department_name 
from employees e
join departments d
ON d.department_id = e. department_id 
join locations  l
ON d.location_id = l.location_id


------------------NON Equi-join

select e.last_name , e.salary, j.grade_lavel
from employees e join jab_grades j
ON e.salary 
between j.lowest_sal and j.highes_sal

-----------------LEFT OUTER JOIN 

select e.last_name , e.department_id , d.department_name 
from employees e left outer join departments d
ON (e.department_id= d.department_id)

-----------------RIGHT OUTER JOIN

select e.last_name , e.department_id , d.department_name 
from employees e RIGHT outer join departments d
ON (e.department_id= d.department_id)


-----------------FULL OUTER JOIN

select e.last_name , e.department_id , d.department_name 
from employees e FULL outer join departments d
ON (e.department_id= d.department_id)

-----------------CREATING CROSS JOIN 

select last_name , department_name 
from employees
cross join departments

---EQUI-JOIN
---NON EQUI-JOIN 
---OUTER JOIN 
---SELF JOIN 
---CROSS JOIN 
---NATURAL JOIN 
---FULL (OR TWO SIDED )OUTER JOIN 

--------------------------------------------------------------------------------------
---power point 05 

-------------------------------------------------------------------------------------
--power point 5.1

--managing data in different time zone 


-- time _zone session parameter 
alter session set time_zone = '-05:00'
alter session set time_zone ='dbtimezone '
alter session set time_zone = 'local'
alter session set time_zone ='america/ new_york'


----------------------------------------------------------------------
--- powerpoint  5.2

--local time stamp

alter SESSION set time_zone ='-5:0'
select current_timestamp ,localtimestamp
from dual 



select dbtimezone from dual 

select sessiontimezone from dual 

------------------------------------------------------------------------------------------------------

--LOCALTIMESTAMP







