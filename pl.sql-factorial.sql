declare
  n int;
  factorial int;
begin
  n := &n;
  factorial := 1;
  while n > 1 loop
    factorial := factorial * n;
    n = n -1;
  end loop;
  dbms_output.put_line('factorial is '||factorial);
end;
/
