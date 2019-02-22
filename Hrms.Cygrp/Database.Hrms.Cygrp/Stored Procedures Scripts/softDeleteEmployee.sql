ALTER PROCEDURE softDeleteEmployee @EmployeeId int
AS
BEGIN TRAN
BEGIN TRY
declare @x nvarchar(50)
set @x = (select e.Email from Employee e inner join Login l on e.Email = l.Email where EmployeeId = @EmployeeId )
UPDATE Employee SET [Status] = 'Inactive' WHERE EmployeeId = @EmployeeId
UPDATE [Login] SET [Status] = 'Inactive' WHERE Email = @x
SELECT * FROM Employee WHERE EmployeeId = @EmployeeId
SELECT * FROM [Login] WHERE Email = @x
COMMIT
END TRY
BEGIN CATCH
ROLLBACK TRAN
END CATCH
GO

--EXEC softDeleteEmployee 17