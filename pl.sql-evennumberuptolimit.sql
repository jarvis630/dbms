declare
  limit_number int;
  start_number int;
begin
  limit_number := &limit_number;
  start_number := 0;
  while start_number <= limit_number loop
    dbms_output.put_line(start_number);
    start_number := start_number + 2;
  end loop;
end;
/
