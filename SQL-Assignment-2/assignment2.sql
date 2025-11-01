use assignment;
#Employee Table
create table employee(EmpID int,name char(20),Department char(20),Position char(20),Salary bigint,JoiningDate date);
desc employee;
insert into employee
values
(1,"John Doe","IT","Developer",60000,"2022-05-12");
select * from employee;
insert into employee
values
(2,"Jane Smith","HR","Manager",75000,"2021-08-20"),
(3,"Mike Lee","IT","Tester",40000,"2023-02-10"),
(4,"Sara Khan","Finance","Analyst",55000,"2024-03-01"),
(5,"David Roy","IT","Developer",65000,"2022-12-15");
select * from employee;

#Students table
create table student(StudentID int,Name char(20),Course char(20),Marks int,City char(20));
desc student;
insert into student
values
(101,"Rahul","Python",85,"Mumbai");
select * from student;
insert into student
values
(102,"Priya","SQL",90,"Delhi"),
(103,"Aman","Excel",98,"Pune"),
(104,"Sneha","SQL",88,"Mumbai"),
(105,"Karan","Python",60,"Delhi");
select * from student;

#Product Tbale
create table product(ProductID int,ProductName char(20),Category char(20),Price int,Stock int);
desc product;
insert into product
values
(1,"Laptop","Electronic",55000,15),
(2,"Phone","Electronic",25000,25),
(3,"Chair","Furniture",3000,50),
(4,"Desk","Furniture",7000,20),
(5,"Headphones","Electronic",1500,100);
select * from product;

#QUESTIONS
#1) Show all employees working in the IT department.
select * from employee where department="IT";
#2)List employees with salary greater than 60000.
select * from employee where salary>60000;
#3)Get names of employees who joined after 2023-01-01.
select name from employee where joiningdate>"2023-01-01";
#4)Count how many employees are in each department.
select department,count(name)as Total from employee
group by department;
#5)Show departments with an average salary above 50000.
select department,avg(salary) as Average_Salary from employee
group by department
having Average_Salary>50000;
#6)Find employees whose name starts with 'J'.
select * from employee
where name like "J%";
#7)Update salary of Developer employees by 10%
update employee set salary=Salary*1.10 where position="developer";
select * from employee;
#8)Delete records of employees in the Finance department.
delete from employee where department="finance";
select * from employee;
#9)Show all products in the Electronics category.
select * from product where category="Electronic";
#10)Find products priced between 2000 and 10000.
select * from product where price between 2000 and 10000;
#11)Sort products by price in descending order.
select * from product order by price desc;
#12)Count how many products are available in each category.
select category,count(productName) as total from product
group by category;
#13)Find the total stock value for Furniture (Price × Stock).
select sum(price*stock) as StockValue from product where category="furniture";
#14)Update stock for Laptop by reducing 5 units.
update product set stock=stock-5 where productid=1;
select * from product;
#15)Delete products where stock is 0.
delete from product where stock=0;
#16)Show all students who scored more than 80 marks.
select * from student where marks>80;
#17)List students who are from 'Delhi'.
select * from student where city="Delhi";
#18)Count how many students are enrolled in each course.
select course,count(name) as total from student 
group by course;
#19)Find the highest marks in the 'Python' course.
select max(Marks) from student where course="Python";
#20)Get students whose name ends with 'a'.
select * from student where name like "%a";
#21)Update marks of 'Karan' to 70.
update student set marks=70 where name="Karan";
select marks from student where name="karan";
#22)Delete students who scored less than 65.
delete from student where marks<65;
select * from student;
#23)Find the second highest salary in the company.
select max(salary) from employee
where salary<(select max(salary) from employee);
#24)Display employees who have a salary greater than the average salary.
SELECT * FROM Employee
WHERE Salary > (SELECT AVG(Salary) FROM Employee);
#25)List employees who joined in 2022.
select * from employee where year(joiningdate)=2022;
#26)Find the highest paid employee in the IT department.
select max(salary) as Higheshpaid from employee where department="IT";
#27)Count how many employees have the word 'Developer' in their position.
select count(position) as total from employee where position="developer";
select position,count(name) as total from employee where position="developer"
group by position;
#28)Show department-wise maximum and minimum salaries.
use assignment;
#31)List departments that have more than one employee.
select department,count(name) as total from employee 
group by department
having count(name)>1;
#32)Find students who scored above the average marks.
select * from student where marks>(select avg(marks) from student);
#33)Show the top 2 students in the SQL course.
select * from student where course="sql"
order by marks desc
limit 2;
#34)Count students per city, but only show cities with more than one student.
select city,count(*) as total from student 
group by city
having count(*)>1;
#35)Find students whose name contains exactly 5 characters.
select * from student where name like "%_____%";
select * from student where length(name)=5;
#36)Retrieve students from 'Delhi' or 'Mumbai' but not enrolled in Python.
select * from student where city in("mumbai","delhi") and course !="Python";
#37)Get the course with the highest average marks.
#38)Find students who scored below the overall average but above 50
select * from student where marks<(select avg(marks) from student) and marks>50;
#39)Show students grouped by city and their total marks.
select city,sum(marks) as total  from student
group by city; 
use assignment;
#40)Show products where Stock * Price is greater than 1,00,000.
select * from product where (stock*price)>200000;
#41)List categories with average price above 10,000.
select category,avg(price) from product as Average_price
group by category
having avg(price)>10000;
#42)Display the second cheapest product in Electronics.
select price,productname from product where category="electronic"
order by price asc
limit 1; 
#43(Find products that have less stock than the average stock.
select product,avg(stock) from product 
group by product;
#44)Delete products where stock is less than 5 after a sale update.
delete from product where stock<5;














