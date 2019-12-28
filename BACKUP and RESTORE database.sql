---
-- https://www.youtube.com/watch?v=mr8Lpkx5yag
-- BACKUP and RESTORE database

-- right click on database in object explorer >> tasks >> BACKUP >> select location >> OK
-- C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS03\MSSQL\Backup
-- script to do it
-- change the name each time so you don't overwrite your previous backup

BACKUP DATABASE [Joel] TO  
DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS03\MSSQL\Backup\Joel1.bak' 
WITH NOFORMAT, NOINIT,  NAME = N'Joel-Full Database Backup', 
SKIP, NOREWIND, NOUNLOAD,  
STATS = 10;

-- backup is incremental.   next backup will only save the changes since last backup

-- restore needs some kind of unlock permission









