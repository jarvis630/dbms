### Trigger Programs

**Aim:** To study about trigger.

i. Create a trigger to prevent insertion of date of birth greater than the current date in the student table.

ii. Create a trigger to prevent deletion of values from the student table if mark is greater than 120.

| NAME | DOB       | AGE |
|------|-----------|-----|
| ss   | 10-MAY-11 | 12  |
| ss   | 10-MAY-10 | 12  |
| ss   | 15-MAY-88 | 12  |
| ss   | 10-MAY-11 | 12  |

---

### 1. PROGRAM

CREATE OR REPLACE TRIGGER trg_stud
BEFORE INSERT
ON stdt
FOR EACH ROW
BEGIN
    IF :NEW.dob > SYSDATE THEN
        RAISE_APPLICATION_ERROR(-20011, 'Insertion not possible');
    END IF;
END;
/
```




### 2. PROGRAM

  
CREATE OR REPLACE TRIGGER trg_stud1
BEFORE DELETE
ON stdt
FOR EACH ROW
BEGIN
    IF :OLD.age > 10 THEN
        RAISE_APPLICATION_ERROR(-20011, 'Row cannot be deleted');
    END IF;
END;
/
```
