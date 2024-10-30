--1.Write a program to print the following format
WELCOME TO PL/SQL PROGRAMMING
BEGIN
DBMS_OUTPUT.PUT_LINE('WELCOME TO PL/SQL PROGRAMMING');
END;
/
-------------------------------------------------------------------
--2.Write a program to print the numbers from 1 to 100
DECLARE
N NUMBER(3):=1;
V VARCHAR2(1000);
BEGIN
WHILE N <=1000
LOOP
V:=V||''||N;
N:=N+1;
END LOOP;
DBMS_OUTPUT.PUT_LINE(V);
END;
/
-------------------------------------------------------------------------------
--3.write a program to print the even numbers from 1 to 100
DECLARE
N NUMBER(3):=0;
BEGIN
WHILE N <=100
LOOP
N:=N+2;
DBMS_OUTPUT.PUT_LINE(N);
END LOOP;
END;
/

-------------------------------------------------------------
--4.Write a program to print the odd numbers from 1 to 100
DECLARE
N NUMBER(3):=1;
BEGIN
WHILE N <=100
LOOP
N:=N+2;
DBMS_OUTPUT.PUT_LINE(N);
END LOOP;
END;
/
---------------------------------------------------------------------
--5.write a program for multiplication table
DECLARE
A NUMBER(2):=&A;
B NUMBER(2):=1;
C NUMBER(3);
BEGIN
WHILE B <=10
LOOP
C:=A*B;
DBMS_OUTPUT.PUT_LINE(A||'*'||B||'='||C);
B:=B+1;
END LOOP;
END;
/
--------------------------------------------------------
--6.write a program to find the sum of numbers from 1 to 100
DECLARE
N NUMBER(3):=1;
S NUMBER(4):=0;
BEGIN
WHILE N <=100
LOOP
S:=S+N;
N:=N+1;
END LOOP;
DBMS_OUTPUT.PUT_LINE('THE SUM OF 1 TO 100 IS '||S);
END;
/
-----------------------------------------------------------------
--7.Write a program to find the sum of all odd numbers from 1 to 100
DECLARE
N NUMBER(3):=1;
S NUMBER(4):=0;
BEGIN
WHILE N <=100
LOOP
S:=S+N;
N:=N+2;
END LOOP;
DBMS_OUTPUT.PUT_LINE('THE SUM OF 1 TO 100 ODD NUMBERS IS '||S);
END;
/
------------------------------------------------------------------------
--8.Write a program to find the sum of all even numbers from 1 to 100
DECLARE
N NUMBER(3):=0;
S NUMBER(4):=0;
BEGIN
WHILE N <=100
LOOP
S:=S+N;
N:=N+2;
END LOOP;
DBMS_OUTPUT.PUT_LINE('THE SUM OF 1 TO 100 EVEN NUMBERS IS '||S);
END;
/

-----------------------------------------------------------------------------

--9.Write a program to accept a number and find how many digits it contain
DECLARE
N NUMBER(5):=&N;
CNT NUMBER:=0;
R NUMBER(2):=0;
BEGIN
WHILE N !=0
LOOP
R:=MOD(N,10);
CNT:=CNT+1;
N:=TRUNC(N/10);
END LOOP;
DBMS_OUTPUT.PUT_LINE('NUMBER OF DIGITS OF GIVEN NUMBER IS '||CNT);
END;
/
-----------------------------------------------------------------------------------
--10.Write a program to accept a number and find the sum of the digits
DECLARE
N NUMBER(5):=&N;
S NUMBER:=0;
R NUMBER(2):=0;
BEGIN
WHILE N !=0
LOOP
R:=MOD(N,10);
S:=S+R;
N:=TRUNC(N/10);
END LOOP;
DBMS_OUTPUT.PUT_LINE('SUM OF DIGITS OF GIVEN NUMBER IS '||S);
END;
/




