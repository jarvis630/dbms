declare
  a int;
  b int;
  c int;
begin
  a := &a;
  b := &b;
  c := a+b;
  dbms_output.put_line('sum is '||c);
end;
/
