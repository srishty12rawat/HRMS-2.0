CREATE PROCEDURE status_check_comparator
AS
BEGIN
update [Login] set [Login].[Status]=Employee.[Status]
from [Login]
join Employee on (Employee.Email=[Login].Email)
where  [Login].[Status]!=Employee.[Status]
END;


