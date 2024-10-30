
--1)system defined -zero_divide,no_data_found,value_error,too_many_rows 
--e.g
SET SERVEROUTPUT ON;
  declare
    i number(3):=5;
    j number(3):=0;
    z number(3);
  begin z:=i/j;
  exception
    when zero_divide then 
  dbms_output.put_line('no not divide by zero');
 end;
/
----------------------------------------------------------------------------------
--2)
SET SERVEROUTPUT ON;
  declare
    msg varchar2(20):='hello world';
    begin
    dbms_output.put_line(msg);
    exception
    when value_error then
    dbms_output.put_line('invalid length');
    end;
    /
----------------------------------------------------------------------------------
--3)
  declare
    dno number(4):=100;
    dnm varchar2(10);
    begin
    select DEPARTMENT_ID,DEPARTMENT_NAME into dno,dnm from DEPARTMENTS 
    where DEPARTMENT_ID=dno;
    dbms_output.put_line(dno||' '||dnm);
    exception
    when no_data_found then
    dbms_output.put_line('invalid deptno');
    end;
   /
----------------------------------------------------------
/*user defined exception 

syntax-
   declare 
       user_excep_name exception;
   begin 
       if <cond> then 
           raise excep_name;
       end if;
   exception 
          when excep_name then 
         stat;
   end;
  /

*/

----------------------------------------------------------------------------------
--eg.
--1)
SET SERVEROUTPUT ON;
  declare
   vsal number(10);
   neg_sal exception;
   begin
   select SALARY into vsal from EMPLOYEES where EMPLOYEE_ID=7900;
   if vsal < 0 then
   raise neg_sal;
   else
   update EMPLOYEES
   set salary=5000
   where EMPLOYEE_ID=7900;
   end if;
   exception
   when neg_sal then
   dbms_output.put_line('salary is neg');
   end;
   /
----------------------------------------------------------------------------------
--2)
declare
    dup_no exception;
    vcounter integer:=0;
    vdno number(10);
    begin
    select count(*) into vcounter from EMPLOYEES where DEPARTMENT_ID=20;
   if vcounter > 0 then
   raise dup_no;
   end if;
   exception
   when dup_no then
   dbms_output.put_line('dup rows');
   end;
----------------------------------------------------------------------------------
--3)
declare
  tsal number(20);
begin
  select SALARY into tsal from EMPLOYEES
  where EMPLOYEE_ID>=7698;
  if tsal > 1000 then
     update EMPLOYEES
     set SALARY=SALARY+1000
     where EMPLOYEE_ID >=7698;

  else
     update EMPLOYEES
     set SALARY=SALARY+2000
     where EMPLOYEE_ID >=7698;
end if;
 exception 
   --when no_data_found then
     --dbms_output.put_line('invalid');

   when too_many_rows then
     dbms_output.put_line('no of rows selected');

   when no_data_found then
     dbms_output.put_line('some error occur');
end;
/ 
  
----------------------------------------------------------
/*when others exception handler -
When an exception has occurred, one wants to evaluate the
associated error. This is more relevant when 
 WHEN OTHERS  exception is handled as it helps to 
know what error has exactly occurred
PL/SQL provides two functions for this purpose:
  - SQLCODE  
  - SQLERRM

SQLCODE -
SQLCODE returns the error number associated with the 
exception that has occurred. 
SQLCODE if used outside an EXCEPTION handler, the function 
will return zero .
The error number returned may be assigned to a NUMBER 
variable with default precision.

SQLERRM -
SQLERRM returns character data.
It returns the complete error message associated with the 
exception including the error number.
*/
----------------------------------------------------------------
/*
Non Predefined Exception-
Non-Predefined exceptions are those Oracle errors for 
which no name is defined. 
e.g
   error number -2292, an integrity constraint 
   violation error, does not have exception name.

To handle such unnamed exceptions, 
EXCEPTION_INIT pragma handler is used
This pragma must be in a declarative section

synatx -
    PRAGMA EXCEPTION_INIT(exception_name,Oracle_error_number);

description -
 exception_name is the name of an exception declared prior 
to the pragma.

Oracle_error_number is the desired error code to be associated 
with named exception.
*/
--------------------------------------------------------------------  
/*
Using RAISE_APPLICATION_ERROR -

  RAISE_APPLICATION_ERROR is a procedure used to create your 
own error messages, which can be more descriptive than 
named exceptions.

Syntax -
  RAISE_APPLICATION_ERROR(error_number, error_message);

error_number is a parameter
between -20000 to -20999.

error_message is the text 
associated with the error.
*/



--------------------------------------------------------------------  





