use master
go
if exists (select * from sysdatabases where name = 'FaruSneaker')
	drop database FaruSneaker
go
create database FaruSneaker
go

use FaruSneaker
go

create table UserRole (
	 UserName varchar(30) primary key not null,
	 UserPassword varchar(20) not null,
	 Roleuser int not null
	
)

create table Staff (
	StaffID varchar(10) not null,
	StaffName nvarchar(30) not null,
	StaffPhone varchar(12) not null,
	StaffCI varchar(20) not null,
	StaffDateOfBirth date not null,
	StaffAddress nvarchar(20) not null,
	StaffSalary int,
	constraint staff_id primary key(StaffID)
)

create table TimeKeeping (
	DateWork datetime not null,
	StaffID varchar(10) not null,
	WorkShift  int not null,
	Salarybase int not null,
	constraint timekeeping_datework primary key(DateWork),
	constraint timekeeping_staffid_staff foreign key(StaffID) references Staff(StaffID)
)

create table Salary (
	SalaryID varchar(10) primary key not null,
	StaffID varchar(10) not null,
	constraint salary_staffID_stafff foreign key(StaffID) references Staff(StaffID)
)

create table Customer (
	CustomerID nvarchar(30) not null,
	CustomerName nvarchar(30) not null,
	CustomerPhone varchar(12) not null,
	CustomerNumOfPurchases int not null,
	Typecustomer int not null, --0 is normalcustomer and 1 is vip_customer
	constraint customer_id primary key(CustomerID),
)

create table Product (
	ProductID varchar(10) not null,
	ProductName nvarchar(30) not null,
	ProductPrice int not null,
	constraint product_id primary key(ProductID)
)


create table Item (
	ItemID varchar(10) not null,
	ItemName nvarchar(30) not null, 
	ItemPrice int not null,
	ItemBrand nvarchar(20) not null,
	ItemColor nvarchar(10) not null,
	ItemSize varchar(5) not null,
	ItemNum int not null,
	ItemImportPrice int not null,
	ItemImportDate date not null,
	ImageProduct VARBINARY(MAX),
	constraint item_id_product foreign key(ItemID) references Product(ProductID)
	--constraint item_id primary key(ItemID)
)

create table ServiceForItem (
	ServiceID varchar(10) not null,
	ServiceName nvarchar(30) not null,
	ServicePrice int not null,
	ServiceDescription nvarchar(100) not null,
	constraint service_id_product foreign key(ServiceID) references Product(ProductID)
	--constraint service_id primary key(ServiceID)
)

create table Bill (
	BillID varchar(10) not null,
	BillCustomerID nvarchar(30)  not null,
	BillPrice int not null,
	BillStaffID varchar(10) not null,
	constraint bill_id primary key(BillID),
	constraint bill_BillCustomerID_customer foreign key(BillCustomerID) references Customer(CustomerID),
	constraint bill_id_staff foreign key(BillStaffID) references Staff(StaffID)
)

create table BillDetail (
	BillID varchar(10) not null,
	ProductID varchar(10) not null,
	NumOfProduct int not null,
	ProductPrice int not null,
	Voucher int not null,
	primary key(BillID, ProductID),
	constraint billdetail_id_bill foreign key(BillID) references Bill(BillID),
	constraint billdetail_id_product foreign key(ProductID) references Product(ProductID)
)


insert into dbo.UserRole 
values(N'admin',N'123456',0)

go
create function dbo.auto_ItemID()
returns varchar(5)
as
begin
	declare @ID varchar(5)
	if (select count(ItemID) from Item) = 0
		set @ID = '000'
	else
		select @ID = max(right(ItemID, 3)) from Item
		select @ID = case
			when @ID >= 0 and @ID < 9 then 'IT00' + convert(char, convert(int, @ID) + 1)
			when @ID >= 9 and @ID < 99 then 'IT0' + convert(char, convert(int, @ID) + 1)
			when @ID >= 99 then 'IT' + convert(char, convert(int, @ID) + 1)
		END
	return @ID
END
go
go
create function dbo.auto_ServiceID()
returns varchar(5)
as
begin
	declare @ID varchar(5)
	if (select count(ServiceID) from ServiceForItem) = 0
		set @ID = '000'
	else
		select @ID = max(right(ServiceID, 3)) from ServiceForItem
		select @ID = case
			when @ID >= 0 and @ID < 9 then 'SV00' + convert(char, convert(int, @ID) + 1)
			when @ID >= 9 and @ID < 99 then 'SV0' + convert(char, convert(int, @ID) + 1)
			when @ID >= 99 then 'SV' + convert(char, convert(int, @ID) + 1)
		END
	return @ID
END
go
go
create function dbo.auto_BillID()
returns varchar(5)
as
begin
	declare @ID varchar(5)
	if (select count(BillID) from Bill) = 0
		set @ID = '000'
	else
		select @ID = max(right(BillID, 3)) from Bill
		select @ID = case
			when @ID >= 0 and @ID < 9 then 'BI00' + convert(char, convert(int, @ID) + 1)
			when @ID >= 9 and @ID < 99 then 'BI0' + convert(char, convert(int, @ID) + 1)
			when @ID >= 99 then 'BI' + convert(char, convert(int, @ID) + 1)
		END
	return @ID
END
go
go
create function dbo.auto_CustomerID()
returns varchar(5)
as
begin
	declare @ID varchar(5)
	if (select count(CustomerID) from Customer) = 0
		set @ID = '000'
	else
		select @ID = max(right(CustomerID, 3)) from Customer
		select @ID = case
			when @ID >= 0 and @ID < 9 then 'CS00' + convert(char, convert(int, @ID) + 1)
			when @ID >= 9 and @ID < 99 then 'CS0' + convert(char, convert(int, @ID) + 1)
			when @ID >= 99 then 'CS' + convert(char, convert(int, @ID) + 1)
		END
	return @ID
END
go
go
create function dbo.auto_StaffID()
returns varchar(5)
as
begin
	declare @ID varchar(5)
	if (select count(StaffID) from Staff) = 0
		set @ID = '000'
	else
		select @ID = max(right(StaffID, 3)) from Staff
		select @ID = case
			when @ID >= 0 and @ID < 9 then 'ST00' + convert(char, convert(int, @ID) + 1)
			when @ID >= 9 and @ID < 99 then 'ST0' + convert(char, convert(int, @ID) + 1)
			when @ID >= 99 then 'ST' + convert(char, convert(int, @ID) + 1)
		END
	return @ID
END
go


