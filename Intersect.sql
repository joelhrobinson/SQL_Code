-- INTERSECT
use Joel

select Firstname from tcustomer
INTERSECT
select Firstname from customer


select LastName from tcustomer
INTERSECT
select Lastname from customer
