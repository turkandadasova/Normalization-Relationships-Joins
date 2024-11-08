CREATE DATABASE BP215

CREATE TABLE Roles(
Id int primary key identity,
[Name] nvarchar(50),
)

CREATE TABLE Users(
Id int primary key identity,
Username nvarchar(50),
Password nvarchar(50),
RolesId int references Roles(Id)
)

INSERT INTO Roles
values (
'admin'),
(
'moderator'),
(
'user')

INSERT INTO Users
values (
'Angel99','devil99',3),
(
'iturrkan','instaparolum',1),
(
'anarbalaca','anar2000',2)

select U.Username,R.Name  from Users as U
join Roles as R
on U.RolesId=R.Id


