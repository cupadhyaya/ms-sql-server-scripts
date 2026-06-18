IF OBJECT_ID("dbo.Students","U") IS NOT NULL
BEGIN
	DROP TABLE Students
END
GO

CREATE TABLE Students
(
	StudentId INT Primary Key,
	FullName Varchar(100),
	EmailId Varchar(200),
	Phone Varchar(15),
	Status Varchar(10)
)
GO