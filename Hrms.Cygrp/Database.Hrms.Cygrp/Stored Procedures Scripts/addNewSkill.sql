CREATE PROCEDURE stpAddNewSkill @SkillName nvarchar(50), @Category nvarchar(50)
AS
BEGIN 
INSERT INTO Skills (Name, Category) VALUES(@SkillName, @Category)
END 
GO

--EXEC stpAddNewSkill @SkillName = 'Ruby', @Category = 'BackEnd'
