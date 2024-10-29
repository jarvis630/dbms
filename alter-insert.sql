(1)alter table employee by adding field city
 
ALTER TABLE Employee2 ADD city varchar(20);

(2)Alter table employee by modifying the type of salary as float number of form(10,3)

Alter table Employee2 modify salary decimal(10,3);

(3)Alter table employee by adding constraint SAL for checking whether salary greater than 0 or not 

Alter table Employee2 add constraint SAL check(salary>0);

(4)drop Sal

alter table Employee2 drop constraint SAL;

(5) insert 5 values for all three 

Department : insert into Department VALUES('101','CSE','NORTHBLOCK');
Project : insert into Project VALUES('P1','ProjectX','101');
Employee : insert into Employee2 VALUES('E1','Alan','Developer','m','20','60000','12-jun-2012','P1','Kundara');

(7)show referential integrity violation
insert into Project VALUES('P5','ProjectA','107');
