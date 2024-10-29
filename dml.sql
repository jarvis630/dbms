(2)analyst and salesman
query : Select Ename from Employee2 WHERE designation = 'Analyst' or designation = 'Salesman';

(3)before the given date 
query : Select * from Employee2 WHERE dateofjoin < '30-sep-2016';

(4)eno as.....
query : Select * from Employee2 WHERE eno='E2' or eno ='E4' or eno = 'E6' or eno = 'E8';

(6)not working in project P2,P3,P4
query : Select Ename from Employee2 WHERE Pno!='P2' and Pno !='P3' and Pno != 'P4';

(7)joined between a date
query : Select ENAME from Employee2 WHERE dateofjoin > '30-jun-2016' and dateofjoin < '1-jul-2017';

(8)designations 
query :	select ENAME,DESIGNATION from Employee2;

(9)not assigned to any project
query : select ENAME from Employee2 where PNO IS NULL;

(10)name starts or ends with s
query :select ENAME from Employee2 where ENAME like 'S%' or ENAME like '%s';

(11)second character is i
query :insert into Employee2 VALUES('E8','Aamina','Tester','m','24','70000','12-sep-2017','P3','Kannur');

(12)starting and ending is a
query:select ENAME from Employee2 where ENAME like 'A%_%a';

(13)salary range
query:select ENAME from Employee2 where SALARY >60000 and SALARY <70000;

(14)delete row when salary greater than 21
query: delete from Employee2 where age > 21;

(15)increment salary
query: update Employee2 set SALARY = SALARY + (SALARY * 0.2) WHERE SALARY between 60000 and 80000;

(16)second letter is i
query: select * from Employee2 where ENAME like '_e%';

