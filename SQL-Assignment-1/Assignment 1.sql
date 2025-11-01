#Assignment 1
create database assignment;
use assignment;
use assignment;
Create table empp(EmpID int,Name char(20),Department char(20),Salary int,JoinDate date);
show tables;
describe empp;
insert into empp (EmpID,Name,Department,Salary,JoinDate)
values
(1,"Raj","HR",30000,"2020-01-12");
select * from empp;
insert into empp (EmpID,Name,Department,Salary,JoinDate)
values
(2,"Meena","IT",50000,"2019-03-18"),
(3,"Suresh","IT",45000,"2021-06-20"),
(4,"Anita","Finance",60000,"2018-07-15"),
(5,"Kiran","HR",35000,"2022-02-11");
select * from empp;

#1)Display all records from the Employees table. 
select * from empp;

#2)Display only employee names and salaries. 
 select name,salary from empp;
 
 #3)Find employees whose salary is greater than 40,000. 
 select name,salary from empp where salary>40000;
 
 #4)Find employees who work in the IT department. 
 select * from empp where department="IT";
 
 #5)Find the highest salary among employees
 select max(salary) from empp;
 
 #6)Display all employee names in alphabetical order.
 select name from empp
 order by name asc;
 
 #7)Display employees whose name starts with ‘A’. 
 select * from empp 
 where name like "A%";
 
 #8)Display employees whose name ends with ‘a’. 
 select * from empp
 where name like "%a";
 
 #9)Display employees with salary between 30,000 and 50,000. 
 select * from empp 
 where salary between 30000 and 50000;
 
 #10)Display employees from HR and IT departments only. 
 select * from empp where department in("HR","IT");
 
 #11)Display employees who do not belong to Finance department.
 select * from empp where department!="Finance";
 
#12)Count total number of employees. 
select count(name) from empp;
select count(*) from empp;
 









