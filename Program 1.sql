Department:

Create table Department(Deptno int primary key,Deptname varchar(20) check(Deptname in('CSE','IT','EEE','ECE','ME')),Location varchar(20));

Project :

 Create table Project(Pno varchar(20) primary key check(Pno like 'P%'),Pname varchar(20),Deptno int,foreign key(Deptno) references Department(De
ptno));

Employee:
Create table Employee2(Eno varchar(20) primary key check(Eno like 'E%'),Ename varchar(20),Designation varchar(20),Gender varchar(10) check(Gend
er in('m','f')),Age int check(age>0),Salary int,Dateofjoin date,Pno varchar(20),foreign key(Pno) references Project(Pno));
