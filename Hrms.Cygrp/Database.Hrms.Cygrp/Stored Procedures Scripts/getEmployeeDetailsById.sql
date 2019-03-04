CREATE PROCEDURE getEmployeeDetailsById @EmployeeId int
AS
BEGIN
SELECT * FROM Employee e
WHERE e.EmployeeId = @EmployeeId
END
GO

--EXEC getEmployeeDetailsById @EmployeeId = 6