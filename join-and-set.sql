(1)Left Join
query: select * from Employee2 LEFT JOIN Project ON Employee2.PNO = Project.PNO;

(2)Right join
query: select * from Employee2 RIGHT JOIN Project ON Employee2.PNO = Project.PNO;

(3)FULL JOIN
query: select * from Employee2 FULL JOIN Project ON Employee2.PNO = Project.PNO;

(4)Natural join
query: select * from Employee2 NATURAL JOIN Project;

(5)Union 
query: SELECT SALARY FROM Employee2 where ENO = 'E1' UNION SELECT SALARY FROM Employee2 where ENO = 'E3';

(6)INTERSECT
query: SELECT SALARY FROM Employee2 where ENO = 'E1' INTERSECT SELECT SALARY FROM Employee2 where ENO = 'E3';

(7)MINUS
QUERY: SELECT DESIGNATION FROM Employee2 WHERE PNO ='P3' MINUS SELECT DESIGNATION FROM Employee2 WHERE PNO = 'P1';
