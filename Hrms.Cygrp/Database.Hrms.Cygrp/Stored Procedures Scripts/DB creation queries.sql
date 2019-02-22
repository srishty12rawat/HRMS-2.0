create database HRMS

select * from Employee
select * from TechStack
select * from Skills
select * from [Login]

alter table Employee
add constraint fk_Login_Email FOREIGN KEY (Email)
REFERENCES Login(Email)
begin tran
delete from login where Password = 'arpit'
select * from [Login]
rollback
select * from [Login]


SELECT *
FROM TechStack t
INNER JOIN Employee e
ON t.Employeeid = e.EmployeeId;

drop table Employee
drop table Skills
drop table TechStack

create table Employee(
	EmployeeId int identity(1,1) primary key,
	FirstName varchar(50),
	LastName varchar(50),
	Designation varchar(50),
	Email varchar(50),
	[Location] varchar(50),
	DateOfJoining date,
	DateOfBirth date,
	PastExperience int,
	Department varchar(50),
	[Status] varchar(10),
	ProfilePicUrl varchar(255)
)
create table Skills(
	Id int identity(1,1) primary key,
	Name varchar(100),
	Category varchar(20),
)
create table TechStack(
	SerialNo int identity(1,1) primary key,
	SkillId int  references Skills(Id),
	Employeeid int references Employee(EmployeeId)  ,
)
create table [Login](
	Email varchar(50) primary key, --references Employee(Email),
	Password varchar(100),
	Status varchar(10),
	Role varchar(50)
)


insert into Employee (FirstName,LastName, Designation, Email, Location, DateOfJoining, DateOfBirth, PastExperience, Department, [status], ProfilePicUrl)
		values('Deepak', 'Pahuja', 'Intern', 'deepak.pahuja@cygrp.com', 'Noida' , '2019-01-07', '1996-12-19', 1, 'Technical', 'Active', 'url') 
insert into Employee (FirstName,LastName, Designation, Email, Location, DateOfJoining, DateOfBirth, PastExperience, Department, [status], ProfilePicUrl)
		values('Vidit', 'Mathur', 'Intern', 'vidit.mathur@cygrp.com', 'Noida' , '2019-01-07', '1997-10-11', 1, 'Technical', 'Active', 'url')
insert into Employee (FirstName,LastName, Designation, Email, Location, DateOfJoining, DateOfBirth, PastExperience, Department, [status], ProfilePicUrl)
		values('Gaurav', 'Singh', 'Intern', 'gaurav.singh@cygrp.com', 'Noida' , '2019-01-07', '1996-04-25', 1, 'Technical', 'Active', 'url') 
insert into Employee (FirstName,LastName, Designation, Email, Location, DateOfJoining, DateOfBirth, PastExperience, Department, [status], ProfilePicUrl)
		values('Srishty', 'rawat', 'Intern', 'srishty.rawat@cygrp.com', 'Noida' , '2019-01-07', '1996-10-30', 1, 'Technical', 'Active', 'url')  
insert into Employee (FirstName,LastName, Designation, Email, Location, DateOfJoining, DateOfBirth, PastExperience, Department, [status], ProfilePicUrl)
		values('Om', 'Prakash', 'Intern', 'ompraksah@cygrp.com', 'Noida' , '2019-01-07', '1995-02-05', 1, 'Technical', 'Active', 'url') 

insert  into Skills (Name, Category) values ('HTML', 'FrontEnd')
insert  into Skills (Name, Category) values ('CSS', 'FrontEnd')
insert  into Skills (Name, Category) values ('javascript', 'FrontEnd')
insert  into Skills (Name, Category) values ('Nodejs', 'BackEnd')
insert  into Skills (Name, Category) values ('PHP', 'BackEnd')

insert  into TechStack (SkillId, Employeeid) values ( 1,1)
insert  into TechStack (SkillId, Employeeid) values ( 2,1)
insert  into TechStack (SkillId, Employeeid) values ( 3,1)
insert  into TechStack (SkillId, Employeeid) values ( 4,1)
insert  into TechStack (SkillId, Employeeid) values ( 4,3)
insert  into TechStack (SkillId, Employeeid) values ( 1,4)
insert  into TechStack (SkillId, Employeeid) values ( 2,4)
insert  into TechStack (SkillId, Employeeid) values ( 3,2)
insert  into TechStack (SkillId, Employeeid) values ( 4,2)
insert  into TechStack (SkillId, Employeeid) values ( 3,5)
insert  into TechStack (SkillId, Employeeid) values ( 2,5)


