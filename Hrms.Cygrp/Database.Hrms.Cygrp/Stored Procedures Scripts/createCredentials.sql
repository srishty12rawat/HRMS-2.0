ALTER PROCEDURE createCredentials @Email nvarchar(50), @Password nvarchar(100), @Status nvarchar(10), @Role nvarchar(50)
AS
BEGIN TRAN
BEGIN TRY
INSERT INTO [login] VALUES (@Email, @Password, @Status, @Role)
insert into Employee(Designation, Email, Status) values('Employee', 'arpit.dave@cygrp.com', 'Active')
COMMIT TRAN
SELECT * FROM [login]
SELECT * FROM Employee
END TRY
BEGIN CATCH
ROLLBACK TRAN
END CATCH
GO

--EXEC createCredentials 'arpit.dave@cygrp.com', 'arpit', 'Active', 'Employee'