create database assignment1;
show databases;
use assignment1;
create table emp(id int primary key,Name char(50),Email varchar(50),Contact Bigint,Gender char(20));
desc emp;

create table address(id int primary key,
					City char(50),
                    Area char(50),
                    State char(50),
                    Landmark char(50),
                    Country char(20),
                    AddressType char(50),
                    emp_id int,
                    foreign key(emp_id) references emp(id));
desc address;

create table department(id int primary key,
						Name char(50),
                        Description char(100));
desc department;

create table employeecompany(id int,
							  Designation char(50),
                              doj date,
                              Salary bigint,
                              Department_id int,
                              foreign key(Department_id) references department(id));
describe employeecompany;
alter table employeecompany add column emp_id int,
									   add constraint foreign key(emp_id) references emp(id);
describe employeecompany;

create table empQualification(id int primary key,
							  Ssc int,
                              Hsc int,
                              Graduate int,
                              emp_id int,
                              foreign key(emp_id) references emp(id));
describe empQualification;

create table employeesalary(id int,
							salary bigint,
                            BankName char(30),
                            Account_Number varchar(40),
                            Ifsc_code varchar(40),
                            Sal_month char(20),
                            emp_id int,
                            foreign key(emp_id) references emp(id));
describe employeesalary;

create table client(id int primary key,
					Name char(30),
                    Contact bigint,
                    Email varchar(50));
describe client;

create table project(id int,
					 Name char(40),
                     Duration varchar(30),
                     Description char(50),
                     Client_id int,
                     foreign key(Client_id) references client(id));
describe project;
show tables;
alter table project add constraint primary key(id);#(for making a new table that links emp and project table)
#Inserting data
desc emp;
insert into emp
values
(1,"Sagar","r@gmail.com",9991112233,"Male");
insert into emp
values
(2,"Ram","ram@gmail.com",8888999900,"Male"),
(3,"Ramesh","m@gmail.com",8889998899,"Male"),
(4,"Suresh","s@gmail.com",8811112222,"Male"),
(5,"Mahesh","sd@gmail.com",9999070099,"Male"),
(6,"Rajesh","rj@gmail.com",7776623333,"Male"),
(7,"Pooja","p@gmail.com",8888899999,"Female"),
(8,"Bala","b@gmail.com",9111122222,"Male"),
(9,"MALA","ma@gmail.com",9888877777,"Male"),
(10,"Lala","la@gamil.com",9999992222,"Male"),
(11,"Kala","ka@gmail.com",9110000222,"Male"),
(12,"Esha","es@gmail.com",9000022222,"Female"),
(13,"Nisha","ni@gmail.com",9555552222,"Female"),
(14,"Reema","ee@gmail.com",98888881111,"Female"),
(15,"Seema","see@gmail.com",90000111116,"female");
select * from emp;

insert into address
values
(1,"Jalgaon","Katiya Fail","Maharashtra","Railway Station","India","Permanent",1);
select * from address;
insert into address
values
(2,"Thane","Shivaji Nagar","Maharashtra","Near Shivaji Marg","India","Cruspondance",1),
(3,"Thane","Sambaji Nagar","Maharashtra","Near Data Gate","India","Cruspondance",2),
(4,"Malkapur","Parpeth","Maharashtra","Near Eid Ghat","India","Permanent",3),
(5,"Malkapur","Parpeth","Maharashtra","Near Station","India","Permanent",4),
(6,"Ghatkopar","Gaikwad wadi","Maharashtra","Near PK School","India","Permanent",5),
(7,"Jalgaon","Sagar Nagar","Maharashtra","Behind Ram Mandir","India","Cruspondance",3),
(8,"Thane","Saroj Nagar","Maharashtra","Bala Complex","India","Cruspondance",5),
(9,"Mumbra","Jivan Baug","Maharashtra","Bano Complex","India","Cruspondance",4),
(10,"Aurangabad","Osmanpura","Maharashtra","Near Majdoor Wadi","India","Permanent",2);
insert into address
values
(11,"Thane","Navpada","Maharashtra","Near Pharma College","India","Cruspondance",6),
(12,"Dadar","Pooja Colony","Maharashtra","Near Pharma College","India","Cruspondance",7),
(13,"Malegaon","Usha Nagar","Maharashtra","Behind Er College","India","Permanent",6),
(14,"Malegaon","Usha Nagar","Maharashtra","Behind Er College","India","Permanent",7),
(15,"Dadar","Pooja Colony","Maharashtra","Uma Complex","India","Cruspondance",8),
(16,"Dadar","Pooja Colony","Maharashtra","Uma Complex","India","Cruspondance",9),
(17,"Thane","Navpada","Maharashtra","Godbandar Road","India","Permanent",10),
(18,"Kalyan","Dadu Wadi","Maharashtra","Kokan Gao","India","Permanent",9),
(19,"Kalyan","Dadu Wadi","Maharashtra","Kokan Gao","India","Cruspondance",11),
(20,"Kalyan","Dadu Wadi","Maharashtra","Kokan Gao","India","Cruspondance",12),
(21,"Mumbra","Kalpesh Nagar","Maharashtra","Uma Complex","India","Cruspondance",15),
(22,"Mulund","Bala Nagar","Maharashtra","Bala Gate","India","Cruspondance",14);
select * from address;
show tables;

insert into department
values
(1,"IT","Software Development"),
(2,"Marketing","Branding"),
(3,"Product","Best Product"),
(4,"Sales","Get Client for Project");
select * from department;

insert into employeecompany
values
(1,"Director","2025-09-13",100000,1,1);
select * from employeecompany;
insert into employeecompany
values
(2,"Sales Manager","2025-09-13",90000,4,2),
(3,"Sales Associate","2025-09-13",34000,4,5),
(4,"Sales Associate","2025-09-13",45000,4,6),
(5,"Product Manager","2025-09-13",75000,3,3),
(6,"Marketing Manager","2025-09-13",80000,2,4),
(7,"Product Associate","2025-09-13",20000,3,7),
(8,"Product Associate","2025-09-13",15000,3,8),
(9,"Product Associate","2025-09-13",25000,3,9),
(10,"DM Associate","2025-09-13",30000,2,15),
(11,"DM Associate","2025-09-13",35000,2,14),
(12,"DM Associate","2025-09-13",10000,2,13),
(13,"DM Associate","2025-09-13",14000,2,12),
(14,"Jr Developer","2025-09-13",47000,1,10),
(15,"Jr Developer","2025-09-13",60000,1,11);
select * from employeecompany;

insert into empqualification
values
(1,56,78,90,1);
select * from empqualification;
insert into empqualification
values
(2,78,78,90,2),
(3,40,56,89,3),
(4,99,88,67,4),
(5,45,89,39,5),
(6,67,89,77,6),
(7,89,55,88,7),
(8,89,66,66,8),
(9,88,77,55,9),
(10,65,88,78,10),
(11,44,54,76,11),
(12,55,57,65,12),
(13,66,58,53,13),
(14,33,67,98,14),
(15,35,65,90,15);
select * from empqualification;

insert into employeesalary
values
(1,100000,"HDFC","HDFC00101","HDFC00001","Feb",1),
(2,90000,"HDFC","HDFC00102","HDFC00001","Feb",2),
(3,75000,"HDFC","HDFC00103","HDFC00001","Feb",3),
(4,100000,"HDFC","HDFC00101","HDFC00001","March",1),
(5,90000,"HDFC","HDFC00102","HDFC00001","March",2),
(6,75000,"HDFC","HDFC00103","HDFC00001","March",3),
(7,80000,"HDFC","HDFC00104","HDFC00001","March",4),
(8,34000,"HDFC","HDFC00105","HDFC00001","March",5),
(9,45000,"HDFC","HDFC00106","HDFC00001","March",6),
(10,20000,"HDFC","HDFC00107","HDFC00001","March",7),
(11,100000,"HDFC","HDFC00101","HDFC00001","April",1);
insert into employeesalary
values
(12,90000,"HDFC","HDFC00102","HDFC00001","April",2),
(13,75000,"HDFC","HDFC00103","HDFC00001","April",3),
(14,80000,"HDFC","HDFC00104","HDFC00001","April",4),
(15,34000,"HDFC","HDFC00105","HDFC00001","April",5),
(16,45000,"HDFC","HDFC00106","HDFC00001","April",6),
(17,20000,"HDFC","HDFC00107","HDFC00001","April",7),
(18,15000,"HDFC","HDFC00108","HDFC00001","April",8),
(19,25000,"HDFC","HDFC00109","HDFC00001","April",9),
(20,47000,"HDFC","HDFC00110","HDFC00001","April",10),
(21,60000,"HDFC","HDFC00111","HDFC00001","April",11),
(22,100000,"HDFC","HDFC0001","HDFC00001","May",1),
(23,90000,"HDFC","HDFC00102","HDFC00001","May",2);
select * from employeesalary;

insert into Client
values
(1,"Ratan TATA",9999977777,"rt@gmail.com"),
(2,"Ambani",8888886666,"am@gmail.com"),
(3,"Aman Gupta",7777711111,"m@gmail.com"),
(4,"Kabeer",9988998899,"kn@gmail.com");
select * from client;

insert into project
values
(1,"Hotel Management","2 Year","Hotel Details",1),
(2,"Tata Namak","6 Month","Product Management",1),
(3,"Sales Management","6 Months","Online and Offline Sales",3),
(4,"With Enventory","1 Year","Enventory Product",3),
(5,"Jio Market","2 Year","Demo",2),
(6,"Reliance Market","6 Months","Project Demo",3),
(7,"Telle Calling","5 Months","Online Branding",2);
select * from project;

#QUESTIONS
#1) please select empName,email,city state and country of all the employee.
select e.name,e.email,a.city,a.state,a.country
from emp as e
inner join address as a
on e.id=a.emp_id;
/*Sagar	r@gmail.com	Jalgaon	Maharashtra	India
Sagar	r@gmail.com	Thane	Maharashtra	India
Ram	ram@gmail.com	Thane	Maharashtra	India
Ram	ram@gmail.com	Aurangabad	Maharashtra	India
Ramesh	m@gmail.com	Malkapur	Maharashtra	India
Ramesh	m@gmail.com	Jalgaon	Maharashtra	India
Suresh	s@gmail.com	Malkapur	Maharashtra	India
Suresh	s@gmail.com	Mumbra	Maharashtra	India
Mahesh	sd@gmail.com	Ghatkopar	Maharashtra	India
Mahesh	sd@gmail.com	Thane	Maharashtra	India
Rajesh	rj@gmail.com	Thane	Maharashtra	India
Rajesh	rj@gmail.com	Malegaon	Maharashtra	India
Pooja	p@gmail.com	Dadar	Maharashtra	India
Pooja	p@gmail.com	Malegaon	Maharashtra	India
Bala	b@gmail.com	Dadar	Maharashtra	India
MALA	ma@gmail.com	Dadar	Maharashtra	India
MALA	ma@gmail.com	Kalyan	Maharashtra	India
Lala	la@gamil.com	Thane	Maharashtra	India
Kala	ka@gmail.com	Kalyan	Maharashtra	India
Esha	es@gmail.com	Kalyan	Maharashtra	India
Reema	ee@gmail.com	Mulund	Maharashtra	India
Seema	see@gmail.com	Mumbra	Maharashtra	India */
#2) please select empName,email,contact,city , area, state and country of all the female employee.
select e.name,e.email,e.contact,a.area,a.state,a.country
from emp as e
inner join address as a
on e.id=a.emp_id
where gender="Female";
/*Pooja	p@gmail.com	8888899999	Pooja Colony	Maharashtra	India
Pooja	p@gmail.com	8888899999	Usha Nagar	Maharashtra	India
Esha	es@gmail.com	9000022222	Dadu Wadi	Maharashtra	India
Reema	ee@gmail.com	98888881111	Bala Nagar	Maharashtra	India
Seema	see@gmail.com	90000111116	Kalpesh Nagar	Maharashtra	India*/
#3) please select empName,email,ssc,hsc,contact,city , area, state and country of all the male employee.
select e.name,e.email,q.ssc,q.hsc,e.name,a.city,a.area,a.city,a.country
from emp as e
inner join empqualification as q
on e.id=q.emp_id
inner join address as a
on e.id=a.emp_id
where e.gender="male";
/*Sagar	r@gmail.com	56	78	Sagar	Jalgaon	Katiya Fail	Jalgaon	India
Sagar	r@gmail.com	56	78	Sagar	Thane	Shivaji Nagar	Thane	India
Ram	ram@gmail.com	78	78	Ram	Thane	Sambaji Nagar	Thane	India
Ram	ram@gmail.com	78	78	Ram	Aurangabad	Osmanpura	Aurangabad	India
Ramesh	m@gmail.com	40	56	Ramesh	Malkapur	Parpeth	Malkapur	India
Ramesh	m@gmail.com	40	56	Ramesh	Jalgaon	Sagar Nagar	Jalgaon	India
Suresh	s@gmail.com	99	88	Suresh	Malkapur	Parpeth	Malkapur	India
Suresh	s@gmail.com	99	88	Suresh	Mumbra	Jivan Baug	Mumbra	India
Mahesh	sd@gmail.com	45	89	Mahesh	Ghatkopar	Gaikwad wadi	Ghatkopar	India
Mahesh	sd@gmail.com	45	89	Mahesh	Thane	Saroj Nagar	Thane	India
Rajesh	rj@gmail.com	67	89	Rajesh	Thane	Navpada	Thane	India
Rajesh	rj@gmail.com	67	89	Rajesh	Malegaon	Usha Nagar	Malegaon	India
Bala	b@gmail.com	89	66	Bala	Dadar	Pooja Colony	Dadar	India
MALA	ma@gmail.com	88	77	MALA	Dadar	Pooja Colony	Dadar	India
MALA	ma@gmail.com	88	77	MALA	Kalyan	Dadu Wadi	Kalyan	India
Lala	la@gamil.com	65	88	Lala	Thane	Navpada	Thane	India
Kala	ka@gmail.com	44	54	Kala	Kalyan	Dadu Wadi	Kalyan	India*/

#4) please fetch all the employee Name,contact,qualification deatils those are have permanent  address.
select e.name,e.contact,q.*,a.addresstype
from emp as e
right join empqualification as q
on e.id=q.emp_id
inner join address as a
on e.id=a.emp_id
where a.addresstype="permanent"; #(me)
/*Sagar	9991112233	1	56	78	90	1	Permanent
Ramesh	8889998899	3	40	56	89	3	Permanent
Suresh	8811112222	4	99	88	67	4	Permanent
Mahesh	9999070099	5	45	89	39	5	Permanent
Ram	8888999900	2	78	78	90	2	Permanent
Rajesh	7776623333	6	67	89	77	6	Permanent
Pooja	8888899999	7	89	55	88	7	Permanent
Lala	9999992222	10	65	88	78	10	Permanent
MALA	9888877777	9	88	77	55	9	Permanent*/
select e.name,e.contact,q.ssc,q.hsc,q.graduate
from emp as e
inner join address as a
on e.id=a.emp_id
inner join empqualification as q
on e.id=q.emp_id
where a.addresstype="permanent"; #(Chatgpt)
/*Sagar	9991112233	56	78	90
Ramesh	8889998899	40	56	89
Suresh	8811112222	99	88	67
Mahesh	9999070099	45	89	39
Ram	8888999900	78	78	90
Rajesh	7776623333	67	89	77
Pooja	8888899999	89	55	88
Lala	9999992222	65	88	78
MALA	9888877777	88	77	55*/

#5) please fetch all the employee Name,email,gender,area,city,doj, salary and designation.
select e.name,e.email,e.gender,a.area,a.city,c.doj,c.salary,c.designation
from emp as e
inner join address as a
on e.id=a.emp_id
inner join employeecompany as c
on e.id=c.emp_id;
/*Sagar	r@gmail.com	Male	Katiya Fail	Jalgaon	2025-09-13	100000	Director
Sagar	r@gmail.com	Male	Shivaji Nagar	Thane	2025-09-13	100000	Director
Ram	ram@gmail.com	Male	Sambaji Nagar	Thane	2025-09-13	90000	Sales Manager
Ram	ram@gmail.com	Male	Osmanpura	Aurangabad	2025-09-13	90000	Sales Manager
Ramesh	m@gmail.com	Male	Parpeth	Malkapur	2025-09-13	75000	Product Manager
Ramesh	m@gmail.com	Male	Sagar Nagar	Jalgaon	2025-09-13	75000	Product Manager
Suresh	s@gmail.com	Male	Parpeth	Malkapur	2025-09-13	80000	Marketing Manager
Suresh	s@gmail.com	Male	Jivan Baug	Mumbra	2025-09-13	80000	Marketing Manager
Mahesh	sd@gmail.com	Male	Gaikwad wadi	Ghatkopar	2025-09-13	34000	Sales Associate
Mahesh	sd@gmail.com	Male	Saroj Nagar	Thane	2025-09-13	34000	Sales Associate
Rajesh	rj@gmail.com	Male	Navpada	Thane	2025-09-13	45000	Sales Associate
Rajesh	rj@gmail.com	Male	Usha Nagar	Malegaon	2025-09-13	45000	Sales Associate
Pooja	p@gmail.com	Female	Pooja Colony	Dadar	2025-09-13	20000	Product Associate
Pooja	p@gmail.com	Female	Usha Nagar	Malegaon	2025-09-13	20000	Product Associate
Bala	b@gmail.com	Male	Pooja Colony	Dadar	2025-09-13	15000	Product Associate
MALA	ma@gmail.com	Male	Pooja Colony	Dadar	2025-09-13	25000	Product Associate
MALA	ma@gmail.com	Male	Dadu Wadi	Kalyan	2025-09-13	25000	Product Associate
Lala	la@gamil.com	Male	Navpada	Thane	2025-09-13	47000	Jr Developer
Kala	ka@gmail.com	Male	Dadu Wadi	Kalyan	2025-09-13	60000	Jr Developer
Esha	es@gmail.com	Female	Dadu Wadi	Kalyan	2025-09-13	14000	DM Associate
Reema	ee@gmail.com	Female	Bala Nagar	Mulund	2025-09-13	35000	DM Associate
Seema	see@gmail.com	female	Kalpesh Nagar	Mumbra	2025-09-13	30000	DM Associate*/

#6) please select all the Manager details like there Name,email,designation,qualification,city and Department Name.
select e.name,e.email,ec.designation,q.ssc,q.hsc,q.graduate,a.city,d.name 
from emp as e
inner join employeecompany as ec
on e.id=ec.emp_id
inner join empqualification as q
on e.id=q.emp_id
inner join department as d
on d.id=ec.department_id #help from chatgpt
inner join address as a
on e.id=a.emp_id
where ec.designation like "%Manager%";#this too
/*Ram	ram@gmail.com	Sales Manager	78	78	90	Thane	Sales
Ram	ram@gmail.com	Sales Manager	78	78	90	Aurangabad	Sales
Ramesh	m@gmail.com	Product Manager	40	56	89	Malkapur	Product
Ramesh	m@gmail.com	Product Manager	40	56	89	Jalgaon	Product
Suresh	s@gmail.com	Marketing Manager	99	88	67	Malkapur	Marketing
Suresh	s@gmail.com	Marketing Manager	99	88	67	Mumbra	Marketing*/

#7) please select all the project and client details from table.
select *
from client as c
inner join project as p
on c.id=p.client_id;
/*1	Ratan TATA	9999977777	rt@gmail.com	1	Hotel Management	2 Year	Hotel Details	1
1	Ratan TATA	9999977777	rt@gmail.com	2	Tata Namak	6 Month	Product Management	1
3	Aman Gupta	7777711111	m@gmail.com	3	Sales Management	6 Months	Online and Offline Sales	3
3	Aman Gupta	7777711111	m@gmail.com	4	With Enventory	1 Year	Enventory Product	3
2	Ambani	8888886666	am@gmail.com	5	Jio Market	2 Year	Demo	2
3	Aman Gupta	7777711111	m@gmail.com	6	Reliance Market	6 Months	Project Demo	3
2	Ambani	8888886666	am@gmail.com	7	Telle Calling	5 Months	Online Branding	2*/

create table employee_project (
    emp_id int,
    project_id int,
    primary key (emp_id, project_id),
    foreign key (emp_id) references emp(id) on update cascade on delete cascade,
    foreign key (project_id) references project(id) on update cascade on delete cascade 

);
INSERT INTO employee_project (emp_id, project_id) VALUES
-- IT Department (Developers linked to Hotel Management)
(10, 1),
(11, 1),

-- Sales Department (linked to Sales Management & With Enventory)
(2, 3),
(5, 3),
(6, 4),

-- Product Department (linked to Tata Namak & Reliance Market)
(3, 2),
(7, 2),
(8, 6),
(9, 6),

-- Marketing Department (linked to Jio Market & Telle Calling)
(4, 5),
(15, 7),
(14, 7),
(13, 7),
(12, 7),

-- Director (linked to Hotel Management)
(1, 1);

#8) please select all employee  Details like Name,Email,City,Project Name,DepartmentName and designation.
select e.name,e.email,a.city,p.name as ProjectName,d.name as DepartmentName,ec.designation
from emp as e
inner join address as a
on e.id=a.emp_id
inner join employeecompany as ec
on e.id=ec.emp_id
inner join department as d
on ec.department_id=d.id
inner join employee_project as ep
on e.id=ep.emp_id
inner join project as p
on ep.project_id=p.id;
use assignment1;

#9) please fetch all the client details with there project and employee personal details.
select c.Name AS ClientName,c.Email AS ClientEmail,p.Name AS ProjectName,e.Name AS EmployeeName,e.Email AS EmployeeEmail,e.Contact AS EmployeeContact
from client c
inner join project p 
on c.id=p.Client_id
inner join employee_project ep 
on ep.project_id=p.id
inner join emp e 
on ep.emp_id=e.id;

#10) please fetch all the employee,qualif,address and designation details whose salary is not decide
select e.name,q.ssc,q.hsc,q.graduate,a.*,ec.designation
from emp as e
inner join empqualification as q
on e.id=q.emp_id
inner join address as a
on e.id=a.emp_id
inner join employeecompany as ec
on e.id=ec.emp_id
where ec.salary is null;

#11) please select all the employee,qualification and salary those are working for tata namak project
select e.name,q.ssc,q.hsc,q.graduate,ec.salary
from emp as e
inner join empqualification as q
on e.id=q.emp_id
inner join employeecompany as ec
on e.id=ec.emp_id
inner join employee_project as ep
on e.id=ep.emp_id
inner join project as p
on p.id=ep.project_id
where p.name="Tata namak";

#12) please select the employee,address,qualification,company deatils those are working not getting the salary.
select e.*,a.city,a.area,a.state,a.landmark,a.country,a.addresstype,q.ssc,q.hsc,q.graduate,ec.designation,ec.doj,ec.salary
from emp as e
inner join address as a
on e.id=a.emp_id
inner join empqualification as q
on e.id=q.emp_id
inner join employeecompany as ec
on e.id=ec.emp_id
where ec.salary is null;

#13) please select all the employee,address,qualification,emp comppny,empsalary,department ,project details those are working for aman Gupta project.
select e.name,a.city,a.area,a.state,a.landmark,a.country,a.addresstype,q.ssc,q.hsc,q.graduate,ec.designation, ec.doj, ec.salary,d.name as department_name, p.name as project_name, p.duration, p.description
from emp as e
inner join address as a
on e.id=a.emp_id
inner join empqualification as q
on e.id=q.emp_id
inner join employeecompany as ec
on e.id=ec.emp_id
inner join department as d
on ec.department_id=d.id
inner join employee_project as ep
on e.id=ep.emp_id
inner join project as p
on ep.project_id=p.id
inner join client as c
on c.id=p.client_id
where c.name="Aman Gupta"; 




