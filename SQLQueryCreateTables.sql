CREATE TABLE KobesDatabase.dbo.Employee
(
	EmployeeId bigint PRIMARY KEY,
	FirstName Nvarchar(50),
	LastName Nvarchar(50),


);
 
 
CREATE TABLE KobesDatabase.dbo.Address
(
	AddressId bigint PRIMARY KEY,
	[State] Nvarchar(50),
	Postal int,


);
 
CREATE TABLE KobesDatabase.dbo.Contact
(
	ContactId bigint PRIMARY KEY,
	Email Nvarchar(50),
	Phone bigint,


