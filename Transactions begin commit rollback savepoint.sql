-- https://www.youtube.com/watch?v=9Pzj7Aj25lw
-- youtube.com/user/SqlTrainingOnline
-- udemy.com/sql-server-essentials/?couponCode=SQL-YOUTUBE

use Joel

--- make change, ROLLBACK the transaction 
select * from tcustomer where age =108
begin transaction
update  tCustomer  set city = 'ROLL-me-BACK' where age =108
select * from tcustomer where age =108
rollback;
select * from tcustomer where age =108
--------------------------------------------------------
--- make change, COMMIT the transaction 
select * from tcustomer where age =108
begin transaction
update  tCustomer  set city = 'COMMIT-ME-1' where age =108
select * from tcustomer where age =108
commit;
select * from tcustomer where age =108
--------------------------------------------------------
--- make change create save point, COMMIT the transaction then rollback
select * from tcustomer where age =108
BEGIN transaction
update  tCustomer  set city = 'COMMIT-ME-2' where age =108
SAVE TRANSACTION city2						--- make a roll back point
select * from tcustomer where age =108
update  tCustomer  set city = 'COMMIT-ME-3' where age =108
SAVE TRANSACTION city3						--- make a roll back point
select * from tcustomer where age =108
ROLLBACK transaction city2
COMMIT;				--- commit flushes out the savepoints
select * from tcustomer where age =108