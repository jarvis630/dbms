-- Create Department table
CREATE TABLE Department (
    Department_Id NUMBER PRIMARY KEY,
    Department_Name VARCHAR2(100),
    Manager_Id NUMBER,
    Loc VARCHAR2(100)
);

-- Create Employee table
CREATE TABLE Employee (
    Emp_no NUMBER PRIMARY KEY,
    Emp_name VARCHAR2(100),
    Job VARCHAR2(50),
    Salary NUMBER,
    Hiredate DATE,
    Comm NUMBER,
    Deptno NUMBER,
    Manager_Id NUMBER,
    FOREIGN KEY (Deptno) REFERENCES Department(Department_Id)
);

-- 1. Display name and salary for employees outside salary range 5000-35000
SELECT Emp_name, Salary
FROM Employee
WHERE Salary NOT BETWEEN 5000 AND 35000;

-- 2. Display employee details hired between Feb 20, 1990 and May 1, 1998
SELECT Emp_name, Job, Hiredate
FROM Employee
WHERE Hiredate BETWEEN TO_DATE('20-FEB-1990', 'DD-MON-YYYY') 
    AND TO_DATE('01-MAY-1998', 'DD-MON-YYYY')
ORDER BY Hiredate ASC;

-- 3. Display employee with highest commission
SELECT *
FROM Employee
WHERE Comm = (SELECT MAX(Comm) FROM Employee);

-- 4. List employees in dept 2 or 4 with salary between 5000-12000
SELECT Emp_name AS "Employee", Salary AS "Monthly Salary"
FROM Employee
WHERE Deptno IN (2, 4)
AND Salary BETWEEN 5000 AND 12000;

-- 5. Display employees hired in 1994
SELECT Emp_name, Hiredate
FROM Employee
WHERE EXTRACT(YEAR FROM Hiredate) = 1994;

-- 6. Display employees with commission sorted by salary and commission
SELECT Emp_name, Salary, Comm
FROM Employee
WHERE Comm IS NOT NULL
ORDER BY Salary DESC, Comm DESC;

-- 7. PL/SQL program to find sum of digits of a number
CREATE OR REPLACE FUNCTION sum_of_digits(p_number IN NUMBER) 
RETURN NUMBER IS
    v_sum NUMBER := 0;
    v_temp NUMBER;
    v_num NUMBER;
BEGIN
    v_num := ABS(p_number);  -- Handle negative numbers
    
    WHILE v_num > 0 LOOP
        v_temp := MOD(v_num, 10);
        v_sum := v_sum + v_temp;
        v_num := FLOOR(v_num/10);
    END LOOP;
    
    RETURN v_sum;
END;
/

-- Example usage of sum_of_digits function
DECLARE
    v_number NUMBER := 12345;
    v_result NUMBER;
BEGIN
    v_result := sum_of_digits(v_number);
    DBMS_OUTPUT.PUT_LINE('Sum of digits in ' || v_number || ' is: ' || v_result);
END;
/

-- 8. PL/SQL program to count faculty in table
CREATE OR REPLACE PROCEDURE count_faculty IS
    v_count NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO v_count
    FROM Employee
    WHERE UPPER(Job) LIKE '%FACULTY%';
    
    DBMS_OUTPUT.PUT_LINE('Total number of faculty: ' || v_count);
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error counting faculty: ' || SQLERRM);
END;
/

-- Execute the count_faculty procedure
EXEC count_faculty;
