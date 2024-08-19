1)Number of employee working in project where Praveen and aruna is not working
query : select PNO,count(*) from Employee2 where Pno in(select Pno from Employee2 where Ename not in ('Alan','Salman')) group by Pno;

2)salary greater than average salary
query : select count(eno) from employee2 where salary > (select avg(salary) from employee2);

3)project details of employee with maximum salary
query : select * from Project where Pno in(select Pno from Employee2 where salary in(Select max(salary) from Employee2));

4)department with youngest employee
query : select DEPTNAME from Department where DEPTNO in (select DEPTNO from Project where Pno in (select Pno from Employee2 where Age in (select min(age)from employee2)));

5)joined in month of january
query : select * from employee2 where eno in (select eno from employee2 where to_char(dateofjoin,'mm')='01');

6)month and count of employee joined in each month
query : select to_char(dateofjoin,'mm') as Month,count(*) from Employee2 Group By to_char(dateofjoin,'mm');

7)update details of employee who joined in month of march and salry greater than average salary
query : update Employee2 set Designation='Senior manager' where to_char(dateofjoin,'mm') = '03' and salary > (select avg(salary) from employee2);

8)update salary of senior most employee
query : update employee2 set salary = salary + 0.1*salary where age in(select max(age) from Employee2);

9)details of employee working in project in which arun is not working
query : 
 select * from employee2 where pno not in (select pno from employee2 where ename='Amal');

ENO                  ENAME                DESIGNATION          GENDER            AGE     SALARY DATEOFJOI PNO                  CITY
-------------------- -------------------- -------------------- ---------- ---------- ---------- --------- -------------------- --------------------
E1                   Alan                 Developer            m                  20      72000 12-JUN-12 P1                   Kundara
E2                   Akshay               Developer            m                  20      72000 12-JUL-16 P1                   Kundara
E6                   Sidharth             Assistant            m                  20      84000 12-DEC-17 P2                   tvm
E12                  Salman               Manager              m                  43      33000 12-SEP-17 P2                   Kannur
E11                  Philip               Manager              m                  24      30000 12-SEP-17 P2                   Kannur

10)details of employee working in cse
select * from employee2 where pno in(select pno from project where deptno in(select deptno from department where deptname = 'CSE'))order by en
ame;

ENO                  ENAME                DESIGNATION          GENDER            AGE     SALARY DATEOFJOI PNO                  CITY
-------------------- -------------------- -------------------- ---------- ---------- ---------- --------- -------------------- --------------------
E2                   Akshay               Developer            m                  20      72000 12-JUL-16 P1                   Kundara
E1                   Alan                 Developer            m                  20      72000 12-JUN-12 P1                   Kundara
E11                  Philip               Manager              m                  24      30000 12-SEP-17 P2                   Kannur
E12                  Salman               Manager              m                  43      33000 12-SEP-17 P2                   Kannur
E6                   Sidharth             Assistant            m                  20      84000 12-DEC-17 P2                   tvm
