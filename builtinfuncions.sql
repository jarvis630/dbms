(1)Upper case
query : Select UPPER(ENAME) from Employee2;

(2)Lower case
query : Select LOWER(ENAME) from Employee2;

(3)Proper case
query : Select INITCAP(ENAME) from Employee2;

(4)Length of name 
query : SELECT ENAME,LENGTH(ENAME) FROM Employee2;

(5)concat
query :  SELECT CONCAT(ENAME,ENO) FROM Employee2;

(6)3 char from ORACLE
query : SELECT SUBSTR('ORACLE',2,3) FROM DUAL;

(7)Occurence of character a in COMPUTER MAINTENANCE
query : SELECT INSTR('COMPUTER MAINTENANCE','A') FROM DUAL;

(8)Replace a with b in mathematics 
query : SELECT REPLACE('MATHEMATICS','A','B') FROM DUAL;

(9)First three characters of city in employee
query : SELECT SUBSTR(CITY,1,3) FROM Employee2;

(10)Age in days 
query : SELECT TRUNC(SYSDATE-TO_DATE('06-FEB-2004','DD-MM-YYYY')) AS age_in_days FROM DUAL ;

(11)age in months
query : SELECT MONTHS_BETWEEN(TO_DATE('12-AUG-2024', 'DD-MON-YYYY'), TO_DATE('06-FEB-2004', 'DD-MON-YYYY')) AS AGE_IN_MONTHS from DUAL;

(12)date time
query : SELECT TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS') AS datetime FROM DUAL;

(13)date three months before
query : SELECT ADD_MONTHS(SYSDATE, -3) AS date_three_months_ago from dual;

(14)Current date in format date month day
query : SELECT TO_CHAR(SYSDATE, 'DD Month DAY') AS DATE_FORMAT from DUAL;

(15)employee details
query : SELECT 'MR/MS '||ENAME||' WHO IS '||AGE||' YEARS OLD IS RESIDING IN '||CITY||'.' as employee_details FROM Employee2;










