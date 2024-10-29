EMONAME JOB SALARY
-------------------- -------------------- ----------
anu pa 10000
ajo mpa 50000
ajo mpa 50000
  
10. Procedures and Functions
Aim: Write a function to count number of employee and display values in employee table


  
PROGRAM


create or replace function abc
return number as
c number(10);
begin
select count(*) into c from employee;
return c;
end abc;
/
declare 
c number(5);
begin
c:=abc();
dbms_output.put_line('total number of employee '||c);
end;
/

  
OUTPUT
total number of employee 3
