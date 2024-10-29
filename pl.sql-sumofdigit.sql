SET SERVEROUTPUT ON
DECLARE
  inp int;
  output int:=0;
  intr int;
BEGIN
  inp := &inp;
  WHILE inp!=0 LOOP 
    intr := mod (inp, 10);
    output:=output + intr; 
    inp:= TRUNC (inp |10);
  END LOOP;
  DBMS OUTPUT.PUT_LINE ('Sum of digits is 'll output); 
END;
/
