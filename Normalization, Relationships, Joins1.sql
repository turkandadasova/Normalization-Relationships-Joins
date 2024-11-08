CREATE DATABASE BP215

CREATE TABLE Categories(
Id int primary key identity,
[Name] nvarchar(50)
)

CREATE TABLE Products(
Id int primary key identity,
[Name] nvarchar(50),
Price int,
Cost int,
CategoriesId int references Categories(Id)
)

CREATE TABLE Colors (
Id int primary key identity,
[Name] nvarchar(50)
)

CREATE TABLE ProductColor(
Id int primary key identity,
ProductsId INT FOREIGN KEY REFERENCES Products(Id),
ColorsId INT FOREIGN KEY REFERENCES Colors(Id),
)

INSERT INTO Categories
values (
'texnika'),
(
'paltar'),
(
'mebel')

INSERT INTO Products
values (
'TV',2000,1300,1),
(
'divan',1400,1000,3),
(
'salvar',50,30,2)

INSERT INTO Colors
values (
'boz'),
(
'goy'),
(
'ag')

INSERT INTO ProductColor
values (3,3)

SELECT Products.Name, Categories.Name AS [Category Name], Colors.Name AS [Color Name] FROM Products
join Categories
on Products.CategoriesId = Categories.id
join ProductColor 
on Products.id = ProductColor.ProductsId
join Colors
on ProductColor.ColorsId = Colors.id;
