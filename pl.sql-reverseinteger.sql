
SET SERVEROUTPUT ON
DECLARE
  inp int;
  output int := 0;
  intr int;
BEGIN
  inp := &inp; 
  while inp!=0 Loop
    intr := mod (inp, 10);
    output:=output *10+intr;
    inp TRUNC (inp /10); 
  END LOOP;
  DBMS_OUTPUT.PUT_LINE ('Reverse is: ' lloutput);
END;
/
