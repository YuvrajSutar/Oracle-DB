/*1)Implicit cursors-don't need to open,close & declare
 cursors becoz it takes by defalut(sqlcursors).
PL/SQL implicitly opens the cursors,processes the SQL stat
 & close the cursors

this cursors is used to process insert ,delete,update 
single row,the cursors attributes can be applied  to 
the sql cursor
e.g

1)*/
   begin 
     update DEPARTMENTS set DEPARTMENT_NAME='system'
     where DEPARTMENT_ID=30;
   if sql %notfound then 
     insert into DEPARTMENTS(DEPARTMENT_ID,DEPARTMENT_NAME)
      values(30,'system');
   end if;
   end;
  /

2)
  begin
    update DEPARTMENTS
    set DEPARTMENT_NAME='marketing'
    where DEPARTMENT_ID=90;
    if sql %rowcount = 0 then
    insert into DEPARTMENTS(DEPARTMENT_ID,DEPARTMENT_NAME)
    values(90,'marketing');
   end if;
  end;
 /

3)
DECLARE
    tot_row NUMBER(10);
BEGIN
    UPDATE EMPLOYEES
    SET SALARY = SALARY + 500
    WHERE DEPARTMENT_ID = 100;
    
    IF SQL%NOTFOUND THEN
        DBMS_OUTPUT.PUT_LINE('No records found');
    ELSIF SQL%FOUND THEN
        tot_row := SQL%ROWCOUNT;
        DBMS_OUTPUT.PUT_LINE(tot_row || ' rows updated');
    END IF;
END;
/


Select * from employees;

----------------------------------------------------------

/*2)Explicit curosors-
   1)declare
   2)open
   3)fetch
   4)close

 syntax-*/
 
    declare
         cursor curname is select query;
    begin 
         open curname;  //to open cursor
    loop
    fetch curname into PL/SQL var;
            //to record fetching from pl/sql
    dbms...........
    exit when curname %notfound;
    end loop;
    close curname;   //to close cursors
    end;
  /
 ------------------------------------------------------------------------

 --e.g
 1)
SET serveroutput ON;
DECLARE
  vid  number(8);
  vnm varchar2(20);
  vsal number(10);
  d_id number(10);

  cursor c1 is select EMPLOYEE_ID , FIRST_NAME, salary ,DEPARTMENT_ID from EMPLOYEES
  where DEPARTMENT_ID =100;
  begin 
  open c1;
  loop 
  exit when c1%notfound;
  fetch c1 into vid, vnm , vsal, d_id;
    exit when c1%notfound;
  dbMS_OUTPUT.PUT_LINE(vid ||' '||vnm||' '||vsal||''||d_id);
  
  end loop;
  close c1;
  end;
  /
 ----------------------------------------------------------------------
  
 2)
  SET serveroutput ON;
DECLARE
  did  number(8);
  dnm varchar2(50);
  mid number(10);
  l_id  number(20);
  cursor c2 is select DEPARTMENT_ID , DEPARTMENT_NAME, MANAGER_ID ,LOCATION_ID from DEPARTMENTS;
  begin 
  open c2;
  loop 
  fetch c2 into did, dnm , mid,l_id;   --- fetch key fetch the values 
  exit when c2%notfound;
  dbMS_OUTPUT.PUT_LINE(did ||' '||dnm||' '||mid||''||l_id);
   
  end loop;
  close c2;
  end;
  /
-----------------------------------------------------------------------------------------
--3)using if
--e.g.
set serveroutput on;
declare
    vnm varchar2(25);
    vsal number;
    vdno number;
  cursor cs is select FIRST_NAME,SALARY,DEPARTMENT_ID from EMPLOYEES;
   begin
   open cs;
   loop
   fetch cs into vnm,vsal,vdno;
   exit when cs%notfound;
   if vdno = 20 and vsal>2000 then 
   dbms_output.put_line(vnm||' '||vsal||' '||vdno);
  end if;
  end loop;
   close cs;
   end;
  /
  
  
  Select * from EMPLOYEES
-----------------------------------------------------------------------------------
--3)using for loop (retrieve 5 records)
  
 declare
cursor c1 is select FIRST_NAME,EMPLOYEE_ID,SALARY from EMPLOYEES order by SALARY desc;
   vno number(8);
   vsal number(8);
   vnm varchar2(10);
  begin
   open c1;
   for i in 1..5 loop
   fetch c1 into vnm,vno,vsal;
  exit when c1%notfound;
   dbms_output.put_line(vno||vsal||vnm);
  end loop;
  close c1;
  end;
 /
-----------------------------------------------------------------------------------------
--4)accept deptno from user

 declare
   vnm varchar2(10);
   vsal number(8);
   vdno number(8):=&vdno;
  cursor c1 is select FIRST_NAME,SALARY,DEPARTMENT_ID from EMPLOYEES 
   where DEPARTMENT_ID=vdno;
   begin 
   open c1;
   loop
   fetch c1 into vnm,vsal,vdno;
   exit when c1%notfound;
   if vsal>3000 then 
  dbms_output.put_line(vnm||' '||vsal||' '||vdno);
  end if;
  end loop;
  close c1;
  end;
 /
------------------------------------------------------------------------------------

--5)para cursor-
--1.
  declare
   vnm varchar2(10);
   vsal number(8);
   vdno number(8):=&no;
  cursor c1(vdno number) is select FIRST_NAME,SALARY,DEPARTMENT_ID from EMPLOYEES 
   where DEPARTMENT_ID=vdno;
   begin 
   open c1(vdno);
   loop
   fetch c1 into vnm,vsal,vdno;
   exit when c1%notfound;
   if vsal>3000 then 
  dbms_output.put_line(vnm||' '||vsal||' '||vdno);
  end if;
  end loop;
  close c1;
  end;
/

select * from departments
select * from 
--------------------------------------------------------------------------------------------------
--2.

DECLARE
        CURSOR csr_org(p_hrc_code NUMBER) IS
                SELECT EMPLOYEE_ID, FIRST_NAME FROM   EMPLOYEES;
                v_org_rec csr_org%ROWTYPE;
       BEGIN
             FOR idx in csr_org(1) LOOP
                   dbms_output.put_line(v_org_rec.EMPLOYEE_ID||' '||v_org_rec.FIRST_NAME);
             END LOOP;
              FOR idx in csr_org(2) LOOP
                  dbms_output.put_line(v_org_rec.EMPLOYEE_ID||' '||v_org_rec.FIRST_NAME);
            END LOOP;
    END;
   /
----------------------------------------------------------------------------------------------------------   





