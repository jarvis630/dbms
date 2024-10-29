Aim: To study about cursors. 
I. Create a table customer with attribute customer name, customer street and customer city. Write 
PL/SQL program to retrieve customer name and Customer Street based on the customer city.

  
create table customer(cust_name varchar(10), cust_street varchar(10), cust_city varchar(10));
insert into customer values('anu', 'pvr', 'kollam');
insert into customer values('jain', 'attingal', 'tvm');
select * from customer;
CUST_NAME CUST_STREE CUST_CITY
---------- ---------- ----------
anu pvr kollam
jain attingal tvm



PROGRAM
  
declare
cname customer.cust_name % type;
cstreet customer.cust_street % type;
cursor c is 
select cust_name, cust_street from customer where cust_city='&c';
begin
open c;
loop
fetch c into cname, cstreet;
exit when c%notfound;
dbms_output.put_line('customer name is '||cname);
dbms_output.put_line('customer street is '||cstreet);
end loop;
close c;
end;
/



  
Output
Enter value for c: kolla
