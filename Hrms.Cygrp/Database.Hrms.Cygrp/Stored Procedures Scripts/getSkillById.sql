CREATE PROCEDURE getSkillById @EmployeeId INT
AS
BEGIN
SELECT t.SerialNo, e.EmployeeId, s.[Name]
FROM ((TechStack t
INNER JOIN Employee e
ON t.Employeeid = e.EmployeeId) INNER JOIN Skills s ON t.SkillId = s.Id)
WHERE e.EmployeeId = @EmployeeId
END
GO

--EXEC getSkillById @EmployeeId = 3
