create database WebForms

--Create
create table Products_Table
(
	ProductID int primary key,
	ItemName varchar(100),
	Specification varchar(100),
	Unit varchar(100),
	Status varchar(100),
	CreationDate datetime
)

select * from Products_Table

--Insert
create or alter procedure Product_Insert_SP
@ProductID int,
@ItemName varchar(100),
@Specification varchar(100),
@Unit varchar(100),
@Status varchar(100),
@CreationDate datetime
as
begin
	insert into Products_Table (ProductID,ItemName,Specification,Unit,Status,CreationDate)
	values(@ProductID,@ItemName,@Specification,@Unit,@Status,@CreationDate)
end

execute Product_Insert_SP 1,'Laptop','Del Core i 7','PCS','Running','1/1/2021'

--Retrieve
create or alter procedure ProductList_SP
as
begin
	select * from Products_Table
end

execute ProductList_SP

--Update
create or alter procedure Product_Update_SP
@ProductID int,
@ItemName varchar(100),
@Specification varchar(100),
@Unit varchar(100),
@Status varchar(100),
@CreationDate datetime
as
begin
	update Products_Table set ItemName=@ItemName,Specification=@Specification,Unit=@Unit,Status=@Status,CreationDate=@CreationDate where ProductID=@ProductID
end

--Delete
create or alter procedure Product_Delete_SP
@ProductID int
as
begin
	delete from Products_Table where ProductID=@ProductID
end

--SearchById
create or alter procedure Product_Search_SP
@ProductID int
as
begin
	select * from Products_Table where ProductID=@ProductID
end