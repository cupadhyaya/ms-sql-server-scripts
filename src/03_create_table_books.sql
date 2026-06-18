IF OBJECT_ID("dbo.Books","U") IS NOT NULL
BEGIN
	DROP TABLE Books
END
GO

CREATE TABLE Books
(
	BookId INT Primary Key,
	BookName Varchar(100),
	Author Varchar(200),
	ISBN Varchar(15),
	Qty INT,
	Status Varchar(10)
)
GO