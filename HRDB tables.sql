create database HRDB1
create table Regions(RegionID int Primary Key , RegionName varchar(25) )
create table Countries(CountryID char(2) Primary Key,CountryName varchar(40),RegionID int References Regions(RegionID))
create table Locations(LocationID int Primary Key,StreetAdress varchar(25),PostalCode varchar(12),city varchar(30),Stateprovince varchar(12),CountryID char(2)References Countries(CountryID))
create table Departments(DepartmentID int Primary Key,DeptName varchar(30),ManagerID int ,LocationID int References Locations(LocationID) )
create table Jobs(JobID varchar(10) Primary Key,Jobtitle varchar(25),MinSal int,MaxSal int)
create table JobHistory(EmployeeID int Primary Key,startdate Date,enddate Date,JobID varchar(10) References Jobs(JobID),DepartmentID int References Departments(DepartmentID), )
create table Employees(EmployeeID int References JobHistory(EmployeeID),firstname varchar(20),lastname varchar(20),Email varchar(30),phoneno varchar(10),hiredate date,salary int,comm int)
create table JobGrades(Gradelevel varchar(25),LowestSal int,HighestSal int)