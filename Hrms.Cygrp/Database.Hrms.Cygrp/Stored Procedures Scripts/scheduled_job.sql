CREATE PROCEDURE status_check_comparator
AS
BEGIN
update [Login] set [Login].[Status]=Employee.[Status]
from [Login] 
join Employee on (Employee.Email=[Login].Email)
END;


begin
    dbms_scheduler.create_job(job_name        => 'STATUS_COMPARISION_CHECK',
                              job_type        => 'STORED_PROCEDURE',
                              job_action      => 'status_check_comparator',
                              start_date      => systimestamp,
                              end_date        => null,
                              repeat_interval => 'freq=daily; byhour=24; byminute=0; bysecond=0;',
                              enabled         => true,
                              auto_drop       => false,
                              comments        => 'this job is to trigger a procedure to compare status within Employee and Login table to ensure integrity of status amongst both the tables ');
end;