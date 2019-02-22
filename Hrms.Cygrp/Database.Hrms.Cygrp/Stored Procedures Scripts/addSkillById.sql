CREATE PROCEDURE addSkillById @SkillId INT, @EmployeeId INT
AS
BEGIN
INSERT INTO TechStack (SkillId, Employeeid) VALUES (@SkillId, @EmployeeId)
EXEC getSkillById @EmployeeId = @EmployeeId
END
GO

--EXEC addSkillById @SkillId = 6, @EmployeeId = 3
