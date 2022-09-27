--create database Company

--use Company

--create table Employees(
--Id int primary key identity(1,1),
--[Name] nvarchar (50) not null,
--Surname nvarchar (50) not null,
--Age int ,
--Salary int,
--Position nvarchar (50),
--[IsDeleted] bit
--)

--insert into Employees([Name], Surname, Age, Salary, Position, IsDeleted)
--values
--('Cavid','Bashirov', 29, 5000, 'Professor', '0'),
--('Narmin',  'Mammadova',28, 4000, 'Dean', '0'),
--('Fidan', 'Mardanli', 17, 2000, 'Manager', '0'),
--('Seadet', 'Mammadova', 25, 3000, 'Reception', '0'),
--('Simara', 'Aliyeva', 27, 2700, 'Worker', '0')

--alter table Employees
--add Id int foreign key references Countries(Id)

--alter table Employees
--add Id int foreign key references Cities(Id)


--create table Cities(
--Id int primary key identity(1,1),
--[Name] nvarchar(50) not null
--)

--alter table Cities
--add CountryId int foreign key references Countries(Id)

--insert into Cities([Name])
--values
--('Baku'), ('Ankara'), ('Milan'), ('Washington'), ('Tbilisi')

--create table Countries(
--Id int primary key identity(1,1),
--[Name] nvarchar(50) not null
--)

--insert into Countries([Name])
--values
--('Azerbaijan'), ('Turkey'), ('Italy'), ('USA'), ('Georgia')

--select * from Countries
--inner join Cities
--on Countries.CountryId = Cities.CountryId

--select Employees.Id, Employees.[Name], Employees.Surname, Countries.CountryId, Countries.CountryName, Cities.CityId, Cities.CityName from Employees
--inner join Cities
--on Cities.CityId = Employees.CitiesId
--inner join Countries
--on Countries.CountryId = Cities.CountryId

--select Employees.Id, Employees.[Name], Countries.CountryId, Countries.CountryName from Employees
--inner join Cities
--on Cities.CityId = Employees.CitiesId
--inner join Countries
--on Countries.CountryId = Cities.CountryId
--where Salary > 2000

--select Employees.[Name], Employees.Surname, Employees.Age, Employees.Salary, Employees.Position, Employees.IsDeleted, Cities.CityName, Countries.CountryName from Employees
--inner join Cities
--on Cities.CityId = Employees.CitiesId
--inner join Countries
--on Countries.CountryId = Cities.CountryId
--where Position = 'Reception'

--select Employees.Id, Employees.[Name], Employees.Surname, Countries.CountryId, Countries.CountryName, Cities.CityId, Cities.CityName from Employees
--inner join Cities
--on Cities.CityId = Employees.CitiesId
--inner join Countries
--on Countries.CountryId = Cities.CountryId
--where IsDeleted = 'True'