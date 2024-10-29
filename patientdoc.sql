-- Create Doctor table
CREATE TABLE Doctor (
    Doc_no VARCHAR(255) PRIMARY KEY,
    DOC_name VARCHAR(255),
    Phone_No VARCHAR(10) CHECK (LENGTH(Phone_No) = 10),
    Salary NUMBER CHECK (Salary > 0),
    DOJ DATE,
    specialization VARCHAR(255) CHECK (specialization IN ('paed', 'gen', 'ent'))
);

-- Create Patient table
CREATE TABLE Patient (
    p_no VARCHAR(255) PRIMARY KEY,
    Patientname VARCHAR(255),
    Doc_no VARCHAR(255),
    age NUMBER CHECK (age > 0),
    city VARCHAR(255),
    disease VARCHAR(255),
    FOREIGN KEY (Doc_no) REFERENCES Doctor(Doc_no)
);

-- 1. Find patients treated by more than one doctor
SELECT p.Patientname, COUNT(DISTINCT p.Doc_no) as doctor_count
FROM Patient p
GROUP BY p.Patientname
HAVING COUNT(DISTINCT p.Doc_no) > 1;

-- 2. Find details of patients not treated by doctor 'Arun'
SELECT p.*
FROM Patient p
WHERE p.Doc_no NOT IN (
    SELECT Doc_no 
    FROM Doctor 
    WHERE DOC_name = 'Arun'
);

-- 3. Find the doctor with maximum salary
SELECT *
FROM Doctor
WHERE Salary = (SELECT MAX(Salary) FROM Doctor);

-- 4. Find details of doctor whose name starts with 's' and has second last character as 'a'
SELECT *
FROM Doctor
WHERE DOC_name LIKE 's%a';

-- 5. Find doctors who joined in April
SELECT *
FROM Doctor
WHERE EXTRACT(MONTH FROM DOJ) = 4;

-- 6. Update patient disease (procedure)
CREATE OR REPLACE PROCEDURE update_patient_disease(
    p_patientname IN VARCHAR2,
    p_new_disease IN VARCHAR2
) AS
BEGIN
    UPDATE Patient
    SET disease = p_new_disease
    WHERE Patientname = p_patientname;
    COMMIT;
END;
/

-- 7. Remove details of oldest patient
DELETE FROM Patient
WHERE age = (SELECT MAX(age) FROM Patient);

-- 8. Create view for patient details
CREATE VIEW patient_details AS
SELECT p.Patientname, p.Doc_no, d.specialization, p.disease
FROM Patient p
JOIN Doctor d ON p.Doc_no = d.Doc_no;

-- 9. PL/SQL block to display average salary by specialization
DECLARE
    CURSOR spec_salary IS
        SELECT specialization, AVG(Salary) as avg_salary
        FROM Doctor
        GROUP BY specialization;
    v_spec Doctor.specialization%TYPE;
    v_avg_salary Doctor.Salary%TYPE;
BEGIN
    FOR rec IN spec_salary LOOP
        DBMS_OUTPUT.PUT_LINE('Specialization: ' || rec.specialization || 
                            ', Average Salary: ' || rec.avg_salary);
    END LOOP;
END;
/

-- 10. Trigger to check DOJ before insertion
CREATE OR REPLACE TRIGGER check_doj_trigger
BEFORE INSERT ON Doctor
FOR EACH ROW
BEGIN
    IF :NEW.DOJ <= SYSDATE THEN
        RAISE_APPLICATION_ERROR(-20001, 'DOJ must be greater than system date');
    END IF;
END;
/
