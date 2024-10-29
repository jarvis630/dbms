(1)MAX SALARY
query:select MAX(SALARY) FROM Employee2;

(2)min salary
query: select MIN(SALARY) FROM Employee2;

(3)total salary
query: select SUM(SALARY) FROM Employee2;

(4)average salary
query: select AVG(SALARY) FROM Employee2;

(5)number of employee
query:  select COUNT(ENO) FROM Employee2;

(6)maximum salary of Salesman
query: select MAX(SALARY) FROM Employee2 where DESIGNATION like 'Salesman';

(7)total salary of manager
query: select SUM(SALARY) FROM Employee2 Where DESIGNATION LIKE 'Manager';

(8)age of senior most employee 
query: select MAX(AGE) FROM Employee2;

(9)younger most employee
query: select MIN(AGE) FROM Employee2;

(10)details of employee in ascending order
query: Select * from Employee2 ORDER BY ENAME;

(11)descending order of salary
query: select * from Employee2 ORDER BY SALARY DESC;

(12)number of employee in each project
query: select PNO,COUNT(ENO) FROM Employee2 GROUP BY PNO;

(13)find total max min and average 
query: SELECT SUM(SALARY),MAX(SALARY),MIN(SALARY),AVG(SALARY) FROM Employee2 where PNO like 'P1' and Salary>1000;
